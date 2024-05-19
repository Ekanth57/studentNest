import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studentnest/TimingDetails/domain/timingDetails_object.dart';
import 'package:weekday_selector/weekday_selector.dart';

import '../../injection.dart';
import '../application/visit_watcher/visitVerification_watcher_bloc.dart';

class UserVisitVerification extends StatefulWidget {
  UserVisitVerification(this.timingDetailsObject,this.markedId,this.propertyId);

  final TimingDetailsObject timingDetailsObject;
  final String? markedId;
  final String? propertyId;
  @override
  State<UserVisitVerification> createState() => _UserVisitVerificationState();
}

class _UserVisitVerificationState extends State<UserVisitVerification> {
   String dateFormat = 'yyyy-MM-dd,HH:mm';
   DateTime selectedDate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<VisitVerificationWatcherBloc>(
            create: (context) => getIt<VisitVerificationWatcherBloc>()
              ..add(VisitVerificationWatcherEvent.watchAllStarted('','','')),
          ),
        ],
        child: BlocBuilder<VisitVerificationWatcherBloc, VisitVerificationWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) {

                return Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    title: const Text("Request property viewing",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    centerTitle: true,
                    iconTheme: IconThemeData(
                      color: Colors.black,
                    ),
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                          children: [
                              Padding(
                                padding: EdgeInsets.all(0.02.sw),
                                child: Text('Property viewing Date and time:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff5B5A62),
                                    fontSize: 0.04.sw,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(0.02.sw),
                                child: Container(
                                    decoration: BoxDecoration(
                                        color:Color(0xffA09DB0),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color:Colors.black,width: 1),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 3,
                                            blurRadius: 5,
                                            offset: Offset(
                                                0, 4), // changes position of shadow
                                          ),
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                                      child: WeekdaySelector(
                                          elevation: 10,
                                          color: Colors.black,
                                          selectedFillColor: Colors.green.shade300,
                                          onChanged: (int day){

                                          },
                                          values:widget.timingDetailsObject.days!
                                      ),
                                    )
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(0.02.sw),
                                    child: Text('From',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff5B5A62),
                                        fontSize: 0.04.sw,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: .26.sw,
                                      height: .1.sw,
                                      decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black),
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
                                        child: Text(widget.timingDetailsObject.fromTime!,
                                          style: TextStyle(
                                              fontSize: .04.sw
                                          ),
                                        ),
                                      ),
                                    ),
                                    onTap: (){
                                    },
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(0.02.sw),
                                    child: Text('To',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff5B5A62),
                                        fontSize: 0.04.sw,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: .26.sw,
                                      height: .1.sw,
                                      decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.black),
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
                                        child: Text(widget.timingDetailsObject.toTime!,
                                          style: TextStyle(
                                              fontSize: .04.sw
                                          ),
                                        ),
                                      ),
                                    ),
                                    onTap: (){

                                    },
                                  ),
                                ],
                              ),
                          ],
                        ),
                            )),
                      ),

                      Padding(
                        padding: EdgeInsets.all(0.03.sw),
                        child: Text('Select date and time for property viewing:',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5B5A62),
                            fontSize: 0.04.sw,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8.0, bottom: 40.0),
                        child: DateTimePickerWidget(
                          minDateTime: DateTime.now(),
                          maxDateTime: DateTime.now().add(Duration(days: 15)),
                          dateFormat: dateFormat,
                          minuteDivider: 5,
                          pickerTheme: DateTimePickerTheme(
                            showTitle: false,
                          ),
                          onChange: (dateTime, selectedIndex) {
                            setState(() {
                              selectedDate = dateTime;
                            });
                          },
                        ),
                      ),                      // Container(
                      Padding(
                        padding: EdgeInsets.all(0.02.sw),
                        child: Text('Selected Date: ${DateFormat('yyyy-MM-dd – h:mm a').format(selectedDate)}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5B5A62),
                            fontSize: 0.04.sw,
                          ),
                        ),
                      ),
                    ],
                  ),
                  bottomNavigationBar: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () async {
                        FirebaseAuth auth = FirebaseAuth.instance;
                        String user = auth.currentUser!.uid;
                        DocumentReference docRef = await FirebaseFirestore.instance
                            .collection('viewing').add({
                          'markerId':widget.markedId,
                          'userId':user,
                          'verificationDateAndTime':selectedDate,
                          'verificationCompleted':false,
                          'message':"",
                          'propertyId':widget.propertyId,
                          'userName':'',
                          'feedback':false,
                          'requestTime':DateTime.now(),
                          'viewingStatus':'initial'
                        },);
                        FirebaseFirestore.instance
                            .collection('viewing')
                            .doc(docRef.id)
                            .update({
                          'docId':docRef.id,
                        });
                        Navigator.pop(context);
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
                            'Done',
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              loadFailure: (state) {
                return Container();
              },
            );
          },
        )
    );
  }
}
