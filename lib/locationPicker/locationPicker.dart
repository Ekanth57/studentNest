
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker_mb/google_maps_place_picker.dart';
import 'package:google_maps_place_picker_mb/providers/place_provider.dart';
import 'package:google_maps_place_picker_mb/providers/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';
import 'package:studentnest/listProperty/presentation/listProperties.dart';

import '../homepage.dart';

class LocationPickerPage extends StatefulWidget {
  LocationPickerPage(this.propertyDetailsObject,this.userType);
  final PropertyDetailsObject? propertyDetailsObject;
  final String? userType;

  @override
  State<LocationPickerPage> createState() => _LocationPickerPageState();
}

class _LocationPickerPageState extends State<LocationPickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Pick Address',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body: PlacePicker(
        searchForInitialValue:true ,
          selectInitialPosition: true,
          apiKey: 'AIzaSyBYcd3ZRSNIsraIm95x9zOBKICiIrJapyo',
          onPlacePicked: (result) {
            if(widget.userType=="admin") {
              FirebaseFirestore.instance
                  .collection('properties')
                  .doc(widget.propertyDetailsObject!.markerID)
                  .set({
                'locationDetailsObject':{
                  'address':result.formattedAddress,
                  'geoLocation':GeoPoint(result.geometry!.location.lat,result.geometry!.location.lng),
                },
                'verificationFlag': {
                  'isLocationVerified': true,
                }
              }, SetOptions(merge: true)).then((value) {
                Navigator.of(context).pop();
              });
            }
            else if(widget.userType=="user"){
              FirebaseFirestore.instance
                  .collection('properties')
                  .doc(widget.propertyDetailsObject!.markerID)
                  .set({
                'locationDetailsObject':{
                  'address':result.formattedAddress,
                  'geoLocation':GeoPoint(result.geometry!.location.lat,result.geometry!.location.lng),
                },
                'flags': {
                  'isLocationComplete': true,
                }
              }, SetOptions(merge: true)).then((value) {
                Navigator.of(context).pop();
              });
            }

          },
      initialPosition: LatLng(widget.propertyDetailsObject!.locationDetailsObject!.geoLocation.latitude, widget.propertyDetailsObject!.locationDetailsObject!.geoLocation.longitude),
      useCurrentLocation: false,
      resizeToAvoidBottomInset: false, // only works in page mode, less flickery, remove if wrong offsets
    ),
    );
  }
}
