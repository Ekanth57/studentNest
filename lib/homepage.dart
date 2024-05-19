import 'dart:math';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:studentnest/houseDetails/domain/houseDetails_object.dart';
import 'package:studentnest/sideMenu/sideBar.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:studentnest/visitVerification/presentation/listUserVerfication.dart';

import 'PropertyDetails/domain/propertyDetailsObject.dart';
import 'PropertyDetails/presentation/propertyDetailsPage.dart';
import 'admin/propertyCards/application/watcher/PropertyCards_watcher_bloc.dart';
import 'filters/filterPage.dart';
import 'injection.dart';
import 'map_data/marker_helper_service.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final panelController = PanelController();
  FilterData filterData=FilterData('', '', 'Any', false);
  String? _placeDistance;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String kGoogleApiKey = 'AIzaSyBYcd3ZRSNIsraIm95x9zOBKICiIrJapyo';
  late GoogleMapController googleMapController;
  late LatLng currentPostion = LatLng(52.6211, -1.1246);
  late BitmapDescriptor bitmapDescriptor;
  CustomInfoWindowController customInfoWindowController = CustomInfoWindowController();
  GoogleMapsPlaces _places = GoogleMapsPlaces(
    apiKey: 'AIzaSyBYcd3ZRSNIsraIm95x9zOBKICiIrJapyo',
  );
  PageController pageController = PageController();

  final markerService = MarkerHelperService();
  GeoFlutterFire geoFlutterFire = GeoFlutterFire();

  late Stream<List<DocumentSnapshot>> getStream;
  final radius = BehaviorSubject<double>.seeded(1.0);

  CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(12.9867480, 77.5605407),
    zoom: 14.7,
  );
  late Uint8List markerIcon;
  late BitmapDescriptor bitMapMarkerIcon;
  Set<Circle> setCircle = {};
// Object for PolylinePoints
  late PolylinePoints polylinePoints;

// List of coordinates to join
  List<LatLng> polylineCoordinates = [];

// Map storing polylines created by connecting two points
  Map<PolylineId, Polyline> polylines = {};

  List<Marker> markers = <Marker>[];
  List<PropertyDetailsObject> propertyCard = [];
  PropertyDetailsObject propertyDetails=PropertyDetailsObject();

  List<double> circleRadius=[
    1000,
    1500,
    2000,
    2500,
    3000,
    3500,
    4000,

  ];
  List<double> circleZoom=[
    14.7,
    14.2,
    13.7,
    13.3,
    13.0,
    12.7,
    12.5,
    12.3,
  ];
  double sliderRadius=2000;
 _onMapCreated(GoogleMapController controller) async {
    googleMapController = controller;
   customInfoWindowController.googleMapController=controller;
    setState(() {
      addPoi(currentPostion);
      circle(currentPostion);
    });

    await loadMarkers(filterData);

  }
  circle(LatLng position,) {
    setCircle = {};
    setCircle.add(
        Circle(
      circleId: CircleId('circle'),
      fillColor: Colors.grey.withOpacity(0.4),
      strokeWidth: 0,
      center: position,
      radius: sliderRadius,
    ));

  }


  // Create the polylines for showing the route between two places

  createPolylines(GeoPoint destination) async {
    polylines = {};
    polylineCoordinates = [];

    try {
      await _createPolylines(
          currentPostion.latitude,
          currentPostion.longitude,
          destination.latitude,
          destination.longitude);

      double totalDistance = 0.0;

      for (int i = 0; i < polylineCoordinates.length - 1; i++) {
        totalDistance += _coordinateDistance(
          polylineCoordinates[i].latitude,
          polylineCoordinates[i].longitude,
          polylineCoordinates[i + 1].latitude,
          polylineCoordinates[i + 1].longitude,
        );
      }

      _placeDistance = totalDistance.toStringAsFixed(2);
        setState(() {});
      ///Add custom info window for marker
      infoWindow(LatLng(destination.latitude,destination.longitude) ,_placeDistance, totalDistance);
      return true;
    } catch (e) {}
    return false;
  }


  /// Formula for calculating distance between two coordinates
  /// https://stackoverflow.com/a/54138876 /11910277
  double _coordinateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  /// Create the polylines for showing the route between two places
  _createPolylines(
      double startLatitude,
      double startLongitude,
      double destinationLatitude,
      double destinationLongitude,
      ) async {
    polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'AIzaSyBYcd3ZRSNIsraIm95x9zOBKICiIrJapyo', // Google Maps API Key
      PointLatLng(startLatitude, startLongitude),
      PointLatLng(destinationLatitude, destinationLongitude),
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }

    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.black,
      points: polylineCoordinates,
      width: 2,
    );
    polylines[id] = polyline;
  }

  void infoWindow(LatLng marker, String? placeDistance, double? totalDistance){
    customInfoWindowController.addInfoWindow!(
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 1),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Center(
            child: Text("Dist:${placeDistance} km \nTime:${(totalDistance! * 12).toStringAsFixed(2)} mins",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        marker,
    );
  }

  loadMarkers(FilterData filterData) async {
    markerService
        .markerStream(filterData)
        .listen((QuerySnapshot<Map<String, dynamic>> documentList) async {
      markers.clear();
      propertyCard.clear();
      await Future.forEach(documentList.docs,
              (DocumentSnapshot document) async {
            propertyDetails = PropertyDetailsObject.fromJson(
                document.data() as Map<String, dynamic>);
            if(filterData.filterAdded==true){
              if(filterData.maxRent!.isNotEmpty && filterData.minRooms!.isEmpty){
                if((int.parse(propertyDetails.rentDetailsObject!.rent!)) <= int.parse(filterData.maxRent!)){
                  setState(() {
                    addMarker(propertyDetails);
                  });
                }
              }
              else if(filterData.maxRent!.isEmpty && filterData.minRooms!.isNotEmpty){
                if((propertyDetails.houseDetailsObject!.noOfRooms!) >= int.parse(filterData.minRooms!)){
                  setState(() {
                    addMarker(propertyDetails);
                  });
                }
              }
              else if(filterData.maxRent!.isNotEmpty && filterData.minRooms!.isNotEmpty){
                if(((propertyDetails.houseDetailsObject!.noOfRooms!) >= int.parse(filterData.minRooms!)) &&
                    ((int.parse(propertyDetails.rentDetailsObject!.rent!)) <= int.parse(filterData.maxRent!))){
                  setState(() {
                    addMarker(propertyDetails);
                  });
                }

              }
              else{
                setState(() {
                  addMarker(propertyDetails);
                });
              }
            }else{
              setState(() {
                addMarker(propertyDetails);
              });
            }
          });
    });
  }

  void addPoi(LatLng position) async {
    Marker poiMarker = Marker(
        markerId: const MarkerId('pointOfInterest'),
        consumeTapEvents: true,
        position: position,
        icon: BitmapDescriptor.fromBytes(
            await markerService.getBytesFromAsset("assets/icon/pin.png", 140, 140)));
    markers.add(poiMarker);
    setState(() {
    });
  }

  addMarker(PropertyDetailsObject propertyDetailsObject) async {
    markerIcon = await markerService.getBytesFromAsset("assets/icon/home.png", (ScreenUtil().pixelRatio! * 40).toInt(), (ScreenUtil().pixelRatio! * 40).toInt());
    bitMapMarkerIcon = BitmapDescriptor.fromBytes(markerIcon);
    Marker newMarker = Marker(
        markerId: MarkerId(propertyDetailsObject.markerID!),
        position: LatLng(propertyDetailsObject.locationDetailsObject!.geoLocation.latitude,
            propertyDetailsObject.locationDetailsObject!.geoLocation.longitude),
        icon:  bitMapMarkerIcon,
        consumeTapEvents: true,
        onTap: () async {
          int index=propertyCard.indexWhere((element) =>element.markerID==propertyDetailsObject.markerID);
          pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.bounceInOut);
          setState(() {
            createPolylines(propertyDetailsObject.locationDetailsObject!.geoLocation);
          });
          panelController.open();
          customInfoWindowController.addInfoWindow;
        });
    propertyCard.add(propertyDetailsObject);
    setState(() {
      markers.add(newMarker);

    });
  }

  goToPlace() async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        offset: 0,
        radius: 3000,
        types: [],
        strictbounds: false,
        apiKey: kGoogleApiKey,
        mode: Mode.overlay,
        language: 'en',
        location: currentPostion != null
            ? Location(
          lat: currentPostion.latitude,
          lng: currentPostion.longitude,
        )
            : null);

    if (p != null) {
      PlacesDetailsResponse detail =
      await _places.getDetailsByPlaceId(p.placeId.toString());
      final lat = detail.result.geometry!.location.lat;
      final lng = detail.result.geometry!.location.lng;
      currentPostion=LatLng(lat, lng);
      CameraPosition newPosition = CameraPosition(target: currentPostion, zoom: 14);
      polylines.clear();
      googleMapController.animateCamera(CameraUpdate.newCameraPosition(newPosition));
      setState(() {
        addPoi(newPosition.target);
        circle(newPosition.target);
      });
      // final coordinates = new geo.Coordinates(
      //     newPosition.target.latitude, newPosition.target.longitude);
      // final addresses = await Geocoder2.getDataFromCoordinates(
      //     latitude: coordinates.latitude,
      //     longitude: coordinates.longitude,
      //     googleMapApiKey: kGoogleApiKey
      // );
    }
  }



  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));

    return Scaffold(
        key: _scaffoldKey,
        drawer: NavBar(),
        body: Stack(
          children: [
            GoogleMap(
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: true,
              onMapCreated: _onMapCreated,
              onCameraMoveStarted: (){
                setState(() {
                  customInfoWindowController.hideInfoWindow!;
                });
                },

              markers: markers.toSet(),
              circles: setCircle,
              initialCameraPosition: CameraPosition(target: currentPostion, zoom: 14),
              polylines: Set<Polyline>.of(polylines.values),
            ),
            Positioned(
              top: .5.sw,
              right: .01.sw,
              child: RotatedBox(
                quarterTurns: 3,
                child: SliderTheme(
                  data: SliderThemeData(

                  ),
                  child: Slider(
                    min: circleRadius.first,
                    max: circleRadius.last,
                    divisions: circleRadius.length-1,
                    label: '${(sliderRadius / 1000).toDouble().toStringAsFixed(2)} km',
                    value:sliderRadius,
                    onChanged: (value) {
                      int index=circleRadius.indexWhere((element) => element==value);
                      setState(() {
                        CameraPosition newPosition = CameraPosition(target: currentPostion, zoom:circleZoom.elementAt(index+1) );
                        googleMapController.animateCamera(CameraUpdate.newCameraPosition(newPosition));
                        sliderRadius = value;
                        circle(currentPostion);
                      });
                    },
                  ),
                ),
              ),
            ),
            CustomInfoWindow(
              controller: customInfoWindowController,
              height: 45,
              width: 130,
              offset: 45,

            ),
            Positioned(
                top: 1.sw,
                right: .01.sw,
                child: GestureDetector(
                  key: const Key('filters'),
                  child: Container(
                    width: .12.sw,
                    height: .12.sw,
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black,width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(
                                0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Icon(Icons.filter_alt_outlined,
                      size: .08.sw,
                      ),
                    ),
                  ),
                  onTap: ()async {
                    FilterData data = await Navigator.push(context, MaterialPageRoute(
                        builder: (context) => FilterPage(filterData)));
                    if(data!=null){
                      setState(() {
                        filterData=data;
                        loadMarkers(filterData);
                      });
                    }else{
                      setState(()  {
                        filterData=FilterData('', '', 'Any', false);
                      });
                    }
                    },
                )),
            Positioned(
                top: 1.2.sw,
                right: .01.sw,
                child: GestureDetector(
                  child: Container(
                    width: .12.sw,
                    height: .12.sw,
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black,width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(
                                0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Icon(Icons.house_outlined,
                        size: .08.sw,
                      ),
                    ),
                  ),
                  onTap: () async {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ListUserVisitVerification()
                    ));
                  },
                )),

            Positioned(
              top: .1.sw,
              left: .17.sw,
              child: GestureDetector(
                child: Container(
                    height: .1.sw,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding:EdgeInsets.all(10),
                          child: Text("Search nearest landmark        ",
                              style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .fontFamily,
                                color:Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0,
                              )),
                        ),
                        Icon(Icons.search_outlined,
                          size: 30.sp,
                          color:Color(0xff8798ad),
                         ),
                      ],
                    )),
                onTap: () {
                  goToPlace();
                },
              ),
            ),

            Positioned(
              top: .1.sw,
              left: .02.sw,
              child: GestureDetector(
                key: const Key('side_menu'),
                child: Container(
                  width: .1.sw,
                  height: .1.sw,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2),
                  ),
                  child: Icon(Icons.menu_outlined),
                ),
                onTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
            ),
            SlidingUpPanel(
              controller: panelController,
              maxHeight: .6.sw,
              minHeight: .15.sw,
              color: Colors.white,

              onPanelClosed: () {
                setState(() {
                  customInfoWindowController.hideInfoWindow!;

                });
              },
              onPanelOpened: () {},
              // isDraggable: widget.applicationBloc.isGeo ? false : true,
              defaultPanelState: PanelState.CLOSED,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              panelBuilder: (scrollController) => SlidingPanel(
                scrollController: scrollController,
                panelController: panelController,
              ),
            ),
          ],
        ));
  }

  Widget SlidingPanel({
    required PanelController panelController,
    required ScrollController scrollController,
  }) => Column(
    children: [
      Center(
        child: Icon(Icons.keyboard_arrow_up),
      ),
      Container(
        width: 1.sw,
        height: .5.sw,
        child: ListView.builder(
          // shrinkWrap: true,
          itemCount: propertyCard.length,
          scrollDirection: Axis.horizontal,
          controller: pageController,
          // physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Stack(
                    children: [
                      Container(
                        width: .9.sw,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 4), // changes position of shadow
                              ),
                            ]),
                        child: Column(
                          children: [

                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: .65.sw,
                                          height: .09.sw,
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(.02.sw),
                                                  child: Row(
                                                    children: [
                                                      Text('Property Id:',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: .04.sw
                                                        ),
                                                      ),
                                                      Text(propertyCard.elementAt(index).propertyId!,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: .04.sw
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: .02.sw,),
                                      child: Container(
                                        width: .65.sw,
                                        height: .1.sw,
                                        child: Text("${propertyCard.elementAt(index).locationDetailsObject!.address}",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 0.04.sw,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: .0.sw),
                                  child: Text('${propertyCard.elementAt(index).rentDetailsObject!.rent!}\n£ pcm',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: .06.sw,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: .02.sw,vertical: .015.sw),
                                  child: Text('${propertyCard.elementAt(index).houseDetailsObject!.noOfRooms!} bed property to rent',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: .045.sw,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: .02.sw,vertical: .015.sw),
                                  child: Icon(Icons.star,
                                  color: Colors.amber,
                                  )
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: .0.sw,vertical: .015.sw),
                                  child: Text('${propertyCard.elementAt(index).rating=="0"?"No ratings":propertyCard.elementAt(index).rating}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: .045.sw,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(.02.sw),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/bathroom.svg",
                                    alignment: Alignment.center,
                                    fit: BoxFit.fitWidth,
                                    width: .1 .sw,
                                  ),
                                  SizedBox(
                                    width: .01.sw,
                                  ),
                                  Text(propertyCard.elementAt(index).houseDetailsObject!.noOfBathrooms!.toString(),
                                    style: TextStyle(
                                      fontSize: .05.sw,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: .02.sw),
                                    child: Text("|",
                                      style: TextStyle(
                                        fontSize: .05.sw,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),


                                  SvgPicture.asset(
                                    "assets/svg/bedroom.svg",
                                    alignment: Alignment.center,
                                    fit: BoxFit.fitWidth,
                                    width: .1 .sw,
                                  ),
                                  SizedBox(
                                    width: .01.sw,
                                  ),
                                  Text(propertyCard.elementAt(index).houseDetailsObject!.noOfRooms!.toString(),
                                    style: TextStyle(
                                      fontSize: .05.sw,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: .02.sw),
                                    child: Text("|",
                                      style: TextStyle(
                                        fontSize: .05.sw,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),


                                  SvgPicture.asset(
                                    "assets/svg/kitchen.svg",
                                    alignment: Alignment.center,
                                    fit: BoxFit.fitWidth,
                                    width: .1 .sw,
                                  ),
                                  SizedBox(
                                    width: .01.sw,
                                  ),
                                  Text(propertyCard.elementAt(index).houseDetailsObject!.noOfKitchen!.toString(),
                                    style: TextStyle(
                                      fontSize: .05.sw,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: .02.sw),
                                    child: Text("|",
                                      style: TextStyle(
                                        fontSize: .05.sw,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible:propertyCard.elementAt(index).isRentedOut!,
                                    replacement:Container(
                                      width: .27.sw,
                                      height: .08.sw,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.green.shade400,width: 2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.2),
                                              spreadRadius: 3,
                                              blurRadius: 5,
                                              offset: Offset(
                                                  0, 4), // changes position of shadow
                                            ),
                                          ]),
                                      child: Center(
                                        child: Text(propertyCard.elementAt(index).houseDetailsObject!.roomType!,),
                                      ),
                                    ) ,
                                    child: Container(
                                      width: .27.sw,
                                      height: .08.sw,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.red.shade400,width: 2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.2),
                                              spreadRadius: 3,
                                              blurRadius: 5,
                                              offset: Offset(
                                                  0, 4), // changes position of shadow
                                            ),
                                          ]),
                                      child: Center(
                                        child: Text('Rented out'),
                                      ),
                                    ) ,
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => PropertyDetailsPage(propertyCard.elementAt(index).markerID)));
                  },
                ),
              ),
            );
          },
        ),
      ),
    ],
  );

}

