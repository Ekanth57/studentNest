import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:studentnest/TimingDetails/presentation/timingDetailVerification_page.dart';
import 'package:studentnest/TimingDetails/presentation/timingDetails_page.dart';
import 'package:studentnest/contactDetails/presentation/contactDetailsPage.dart';
import 'package:studentnest/contactDetails/presentation/contactDetailsVerification.dart';
import 'package:studentnest/listProperty/presentation/listProperties.dart';
import 'package:studentnest/locationPicker/locationPicker.dart';
import 'package:studentnest/main.dart';
import 'package:studentnest/preferredTenants/presentation/preferredTenants_adminPage.dart';
import 'package:studentnest/propertyStatus/application/propertyStatus_watcher/PropertyStatus_watcher_bloc.dart';
import 'package:studentnest/rentDetails/domian/rentDetails_object.dart';
import 'package:studentnest/rentDetails/presentation/rentDetailsPage.dart';
import 'package:studentnest/rentDetails/presentation/rentDetailsVerificationPage.dart';
import 'package:studentnest/uploadPhotos/uploadPhotoVerification.dart';
import 'package:studentnest/uploadPhotos/uploadPhotosPage.dart';

import '../../houseDetails/presentation/houseDetails_page.dart';
import '../../injection.dart';
import '../../listProperty/application/watcher/listProperty_watcher_bloc.dart';
import '../commanWidgets/verificationCard.dart';
import '../houseDetails/presentation/houseDetails_verification_page.dart';
import '../notification.dart';

class AdminVerificationPage extends StatefulWidget {
  AdminVerificationPage(this.markerId);

  final String? markerId;
  @override
  _AdminVerificationPageState createState() => _AdminVerificationPageState();
}

class _AdminVerificationPageState extends State<AdminVerificationPage> {
  int? totalSteps=7;
  int? completedSteps=0;
  int? totalPercentage=0;
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
                  if(state.propertyList.verificationFlag!.isContactDetailsVerified==true){
                    completedSteps=completedSteps! + 1;
                  }
                  if(state.propertyList.verificationFlag!.isHouseDetailsVerified==true){
                    completedSteps=completedSteps! + 1;
                  }
                  if(state.propertyList.verificationFlag!.isLocationVerified==true){
                    completedSteps=completedSteps! + 1;
                  }
                  if(state.propertyList.verificationFlag!.isPhotosVerified==true){
                    completedSteps=completedSteps! + 1;
                  }
                  if(state.propertyList.verificationFlag!.isPreferredTenantsVerified==true){
                    completedSteps=completedSteps! + 1;
                  }
                  if(state.propertyList.verificationFlag!.isRentDetailsVerified==true){
                    completedSteps=completedSteps! + 1;
                  }
                  if(state.propertyList.verificationFlag!.isTimingDetailsVerified==true){
                    completedSteps=completedSteps! + 1;
                  }
                  return Scaffold(
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

                    body:SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
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
                                      child: Text(
                                        state.propertyList.isVerified==true?"Verification completed":'Verify all the steps to make property visible to users',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w300,
                                          fontSize: .04.sw,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible:state.propertyList.isVerified==false,
                                    child: Stack(
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
                                          interactive: false,
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
                                  ),
                                  Visibility(
                                    visible: state.propertyList.isVerified==true,
                                    child: Center(
                                      child: Lottie.asset('assets/images/verified.json',
                                          animate: true,
                                          fit: BoxFit.fitWidth,
                                          width: .4.sw,
                                          height: .37.sw
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.9.sw,
                                  height: .15.sw,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: state.propertyList.verificationFlag!.isContactDetailsVerified==true?Colors.green:Colors.red,width: 2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Center(
                                          child: Text('Contact Details',
                                          style: TextStyle(
                                            fontSize: .045.sw,
                                            fontWeight: FontWeight.w600
                                          ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Center(
                                          child: Visibility(
                                              visible:state.propertyList.verificationFlag!.isContactDetailsVerified==true,
                                              replacement: Container(
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
                                                child: const Center(
                                                  child: Text('Not Verified'),
                                                ),
                                              ),
                                              child: Container(
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
                                                  child: Text('Verified'),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){

                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ContactDetailsVerificationPage(state.propertyList.markerID)));
                            },
                          ),
                          GestureDetector(
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.9.sw,
                                  height: .15.sw,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color:state.propertyList.verificationFlag!.isLocationVerified==true?Colors.green:Colors.red,width: 2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Center(
                                          child: Text('Location Details',
                                            style: TextStyle(
                                                fontSize: .045.sw,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Center(
                                          child: Visibility(
                                              visible:state.propertyList.verificationFlag!.isLocationVerified==true,
                                              replacement: Container(
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
                                                child: const Center(
                                                  child: Text('Not Verified'),
                                                ),
                                              ),
                                              child: Container(
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
                                                  child: Text('Verified'),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => LocationPickerPage(state.propertyList,'admin')));
                            },
                          ),
                          GestureDetector(
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.9.sw,
                                  height: .15.sw,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color:state.propertyList.verificationFlag!.isHouseDetailsVerified==true?Colors.green:Colors.red,width: 2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Center(
                                          child: Text('House Details',
                                            style: TextStyle(
                                                fontSize: .045.sw,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Center(
                                          child: Visibility(
                                              visible:state.propertyList.verificationFlag!.isHouseDetailsVerified==true,
                                              replacement: Container(
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
                                                child: const Center(
                                                  child: Text('Not Verified'),
                                                ),
                                              ),
                                              child: Container(
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
                                                  child: Text('Verified'),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => HouseDetailsVerificationPage(state.propertyList.markerID!)));
                            },
                          ),
                          GestureDetector(
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.9.sw,
                                  height: .15.sw,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color:state.propertyList.verificationFlag!.isRentDetailsVerified==true?Colors.green:Colors.red,width: 2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Center(
                                          child: Text('Rent Details',
                                            style: TextStyle(
                                                fontSize: .045.sw,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Center(
                                          child: Visibility(
                                              visible:state.propertyList.verificationFlag!.isRentDetailsVerified==true,
                                              replacement: Container(
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
                                                child: const Center(
                                                  child: Text('Not Verified'),
                                                ),
                                              ),
                                              child: Container(
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
                                                  child: Text('Verified'),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => RentDetailsVerificationPage(state.propertyList.markerID!)));
                            },
                          ),
                          GestureDetector(
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.9.sw,
                                  height: .15.sw,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color:state.propertyList.verificationFlag!.isPhotosVerified==true?Colors.green:Colors.red,width: 2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Center(
                                          child: Text('Add Photos',
                                            style: TextStyle(
                                                fontSize: .045.sw,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Center(
                                          child: Visibility(
                                              visible:state.propertyList.verificationFlag!.isPhotosVerified==true,
                                              replacement: Container(
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
                                                child: const Center(
                                                  child: Text('Not Verified'),
                                                ),
                                              ),
                                              child: Container(
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
                                                  child: Text('Verified'),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ImageUploadVerification(state.propertyList)));
                            },
                          ),
                          GestureDetector(
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.9.sw,
                                  height: .15.sw,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color:state.propertyList.verificationFlag!.isPreferredTenantsVerified==true?Colors.green:Colors.red,width: 2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Center(
                                          child: Text('Tenant details',
                                            style: TextStyle(
                                                fontSize: .045.sw,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Center(
                                          child: Visibility(
                                              visible:state.propertyList.verificationFlag!.isPreferredTenantsVerified==true,
                                              replacement: Container(
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
                                                child: const Center(
                                                  child: Text('Not Verified'),
                                                ),
                                              ),
                                              child: Container(
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
                                                  child: Text('Verified'),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => PreferredTenantsAdminPage(state.propertyList.markerID!,state.propertyList.houseDetailsObject!)));
                            },
                          ),
                          GestureDetector(
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Container(
                                  width: 0.9.sw,
                                  height: .15.sw,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color:state.propertyList.verificationFlag!.isTimingDetailsVerified==true?Colors.green:Colors.red,width: 2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Center(
                                          child: Text('Visit Timings',
                                            style: TextStyle(
                                                fontSize: .045.sw,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Center(
                                          child: Visibility(
                                              visible:state.propertyList.verificationFlag!.isTimingDetailsVerified==true,
                                              replacement: Container(
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
                                                child: const Center(
                                                  child: Text('Not Verified'),
                                                ),
                                              ),
                                              child: Container(
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
                                                  child: Text('Verified'),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => TimingDetailsVerificationPage(state.propertyList.markerID!,)));
                            },
                          ),


                        ],
                      ),
                    ),
                    bottomNavigationBar: Visibility(
                      visible: state.propertyList.isVerified==false && completedSteps==7,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () async {
                            await FirebaseFirestore.instance
                                .collection('properties')
                                .doc(state.propertyList.markerID)
                                .set({
                              'isVerified':true,
                            }, SetOptions(merge: true)).then((value) {
                              if(state.propertyList.isVerified==false){
                                sendPushMessage('Your Property ${state.propertyList.propertyId} is Verified and visible to users','Hurray!!!',state.propertyList.tokenId!);
                              }
                            });
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
                                'Complete Verification',
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
                  );
                });
          }),
    );
  }
}
