import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:studentnest/TimingDetails/presentation/timingDetails_page.dart';
import 'package:studentnest/contactDetails/presentation/contactDetailsPage.dart';
import 'package:studentnest/listProperty/presentation/listProperties.dart';
import 'package:studentnest/locationPicker/locationPicker.dart';
import 'package:studentnest/main.dart';
import 'package:studentnest/preferredTenants/presentation/preferredTenants_page.dart';
import 'package:studentnest/propertyStatus/application/propertyStatus_watcher/PropertyStatus_watcher_bloc.dart';
import 'package:studentnest/rentDetails/domian/rentDetails_object.dart';
import 'package:studentnest/rentDetails/presentation/rentDetailsPage.dart';
import 'package:studentnest/uploadPhotos/uploadPhotosPage.dart';
import 'package:studentnest/visitVerification/presentation/listOwnerVerfication.dart';

import '../../chat/presentation/adminChatListPage.dart';
import '../../houseDetails/presentation/houseDetails_page.dart';
import '../../injection.dart';
import '../../listProperty/application/watcher/listProperty_watcher_bloc.dart';
import '../../preferredTenants/presentation/preferredTenants_adminPage.dart';

class PropertyStatusPage extends StatefulWidget {
  PropertyStatusPage(this.markerId);

  final String? markerId;
  @override
  _PropertyStatusPageState createState() => _PropertyStatusPageState();
}

class _PropertyStatusPageState extends State<PropertyStatusPage> {
  int? totalSteps=7;
  int? completedSteps=0;
  int? totalPercentage=0;
  bool? initialLoad=true;
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    return MultiBlocProvider(
      providers: [
        BlocProvider<PropertyStatusWatcherBloc>(
          create: (context) => getIt<PropertyStatusWatcherBloc>()
            ..add(PropertyStatusWatcherEvent.watchAllStarted(widget.markerId!)),
        ),
      ],
      child: BlocBuilder<PropertyStatusWatcherBloc, PropertyStatusWatcherState>(
          builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadFailure: (_) => Center(
                  child: Container(),
                ),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSuccess: (state) {
              completedSteps=0;
                if(state.propertyList.flags!.isTimingDetailsAdded==true){
                  completedSteps=completedSteps! + 1;
                }
                if(state.propertyList.flags!.isRentDetailsAdded==true){
                  completedSteps=completedSteps! + 1;
                }
                // if(state.propertyList.flags!.isTenantTypeAdded==true){
                //   completedSteps=completedSteps! + 1;
                // }
                if(state.propertyList.flags!.isHouseDetailsAdded==true){
                  completedSteps=completedSteps! + 1;
                }
                if(state.propertyList.flags!.isContactDetailsAdded==true){
                  completedSteps=completedSteps! + 1;
                }
                if(state.propertyList.flags!.isLocationComplete==true){
                  completedSteps=completedSteps! + 1;
                }
              if(state.propertyList.flags!.isPreferredTenantsAdded==true){
                completedSteps=completedSteps! + 1;
              }
                if(state.propertyList.flags!.isPhotosAdded==true){
                  completedSteps=completedSteps! + 1;
                }


              return WillPopScope(
                onWillPop: ()async{
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListProperties(),
                    ),
                  );
                  return false;
                },
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    title: Text(
                      "Property Details",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    centerTitle: true,
                    iconTheme: IconThemeData(
                      color: Colors.black,
                    ),
                  ),
                  body:  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Visibility(
                          visible:state.propertyList.isVerified==true && state.propertyList.isSentForVerification==true,
                          child:Center(
                            child: Container(
                              width: .9.sw,
                              height: .56.sw,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset:
                                      Offset(0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(.02.sw),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Property Id:',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: .04.sw),
                                        ),
                                        Text(
                                          state.propertyList.propertyId!,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600,
                                              fontSize: .04.sw),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(.01.sw),
                                    child: Center(
                                      child: Text('your property is Verified and is visible for users ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w300,
                                          fontSize: .04.sw,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Lottie.asset('assets/images/verified.json',
                                        animate: true,
                                        repeat: false,
                                        fit: BoxFit.fitWidth,
                                        width: .4.sw,
                                        height: .4.sw
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Visibility(
                          visible:state.propertyList.isSentForVerification==true && state.propertyList.isVerified==false,
                          child:Center(
                          child: Container(
                            width: .9.sw,
                            height: .56.sw,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset:
                                    Offset(0, 4), // changes position of shadow
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(.02.sw),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Property Id:',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: .04.sw),
                                      ),
                                      Text(
                                        state.propertyList.propertyId!,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                            fontSize: .04.sw),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(.01.sw),
                                  child: Center(
                                    child: Text('your property is under verification',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w300,
                                        fontSize: .04.sw,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Lottie.asset('assets/images/verification.json',
                                  animate: true,
                                    repeat: false,
                                    fit: BoxFit.fitWidth,
                                    width: .4.sw,
                                    height: .4.sw
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ),
                        Visibility(
                          visible: state.propertyList.isSentForVerification==false && state.propertyList.isVerified==false,
                          child: Center(
                            child: Container(
                              width: .9.sw,
                              height: .53.sw,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset:
                                      Offset(0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(.02.sw),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Property Id:',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: .04.sw),
                                        ),
                                        Text(
                                          state.propertyList.propertyId!,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600,
                                              fontSize: .04.sw),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(.01.sw),
                                    child: Center(
                                      child: Text(completedSteps==7?
                                        'You have completed all the required steps please press send it for verification':'Complete all the steps to make the property visible to user',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w300,
                                          fontSize: .04.sw,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      CircularSeekBar(
                                        width: double.infinity,
                                        height: 130,
                                        progress: (completedSteps! / totalSteps! * 100).toDouble(),
                                        barWidth: 8,
                                        startAngle: 45,
                                        sweepAngle: 360,
                                        strokeCap: StrokeCap.round,
                                        progressGradientColors: [
                                          Colors.red,
                                          Colors.red.shade500,
                                          Colors.green.shade500,
                                          Colors.green
                                        ],
                                        innerThumbRadius: 5,
                                        innerThumbStrokeWidth: 3,
                                        innerThumbColor: Colors.white,
                                        outerThumbRadius: 5,
                                        outerThumbStrokeWidth: 10,
                                        outerThumbColor: Colors.blueAccent,
                                        animation: true,
                                        trackColor: Colors.grey,
                                      ),
                                      Positioned(
                                        bottom:.12.sw ,
                                        left: .38.sw,
                                        child: Center(
                                          child: Text("${(completedSteps! / totalSteps! * 100).toInt()} %",
                                          style: TextStyle(
                                            fontSize: .08.sw,
                                            fontWeight: FontWeight.w400,

                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(.02.sw),
                          child: Text(
                            "Property details",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border:
                                    Border.all(width: 2, color: Colors.green),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Contact\nDetails",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/svg/contactDetails.svg",
                                      alignment: Alignment.center,
                                      width: .1.sw,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactDetailsPage(widget.markerId)),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color: state.propertyList.flags!.isLocationComplete! ?Colors.green.shade50:Colors.red.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 2, color: state.propertyList.flags!.isLocationComplete! ?Colors.green:Colors.red),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Location\nDetails",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/svg/location.svg",
                                      alignment: Alignment.center,
                                      width: .1.sw,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LocationPickerPage(state.propertyList,'user')
                                  ),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color: state.propertyList.flags!.isHouseDetailsAdded! ?Colors.green.shade50:Colors.red.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 2, color: state.propertyList.flags!.isHouseDetailsAdded! ?Colors.green:Colors.red),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "House\nDetails",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/svg/house.svg",
                                      alignment: Alignment.center,
                                      width: .1.sw,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HouseDetailsPage(state.propertyList.markerID!)
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(.02.sw),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color: state.propertyList.flags!.isRentDetailsAdded! ?Colors.green.shade50:Colors.red.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 2, color: state.propertyList.flags!.isRentDetailsAdded! ?Colors.green:Colors.red),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Rent\nDetails",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/svg/rentDetails.svg",
                                      alignment: Alignment.center,
                                      width: .1.sw,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RentDetailsPage(widget.markerId)),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color: state.propertyList.flags!.isPhotosAdded! ?Colors.green.shade50:Colors.red.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 2, color:state.propertyList.flags!.isPhotosAdded! ?Colors.green:Colors.red),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Add\nPhotos",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/svg/addPhotos.svg",
                                      alignment: Alignment.center,
                                      width: .1.sw,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ImageUpload(state.propertyList)
                                  ),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color: state.propertyList.flags!.isPreferredTenantsAdded! ?Colors.green.shade50:Colors.red.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 2, color:  state.propertyList.flags!.isPreferredTenantsAdded! ?Colors.green:Colors.red),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Preferred\nTenants",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/svg/tenantType.svg",
                                      alignment: Alignment.center,
                                      width: .1.sw,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PreferredTenantsPage(state.propertyList.markerID!,state.propertyList.houseDetailsObject!)
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(.02.sw),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color:state.propertyList.flags!.isTimingDetailsAdded! ?Colors.green.shade50:Colors.red.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 2, color: state.propertyList.flags!.isTimingDetailsAdded! ?Colors.green:Colors.red,),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Visit\nTimings",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/svg/visitTimings.svg",
                                      alignment: Alignment.center,
                                      width: .1.sw,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TimingDetailsPage(state.propertyList.markerID)),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color:Colors.green.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 2, color:Colors.green
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Messages\n",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Icon(Icons.chat_outlined,
                                    size: .08.sw,
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AdminChatListPage(state.propertyList.markerID)),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                width: .3.sw,
                                height: .35.sw,
                                decoration: BoxDecoration(
                                    color:Colors.green.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 2, color:Colors.green
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Viewing\nRequests",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Icon(Icons.timelapse_outlined,
                                      size: .08.sw,
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListOwnerVisitVerification(state.propertyList.markerID)),
                                );
                              },
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: Visibility(
                    visible: state.propertyList.isSentForVerification==false && completedSteps==7,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () async {
                          FirebaseFirestore.instance
                              .collection('properties')
                              .doc(state.propertyList.markerID)
                              .set({
                            'isSentForVerification':true,
                          }, SetOptions(merge: true));
                        },
                        child: Container(
                          width: 1.sw,
                          height: .12.sw,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey,
                          ),
                          child: Center(
                            child: Text(
                              'Send for verification',
                              style: TextStyle(
                                fontSize: 30.sp,
                                color: Theme.of(context).textTheme.headline6!.color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            });
      }),
    );
  }
}
