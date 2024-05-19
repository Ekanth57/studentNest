
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../injection.dart';
import '../application/visit_watcher/visitVerification_watcher_bloc.dart';
import 'package:add_2_calendar/add_2_calendar.dart';

class ListOwnerVisitVerification extends StatefulWidget {
    ListOwnerVisitVerification(this.markerId);

    final String? markerId;
  @override
  State<ListOwnerVisitVerification> createState() => _ListOwnerVisitVerificationState();
}

class _ListOwnerVisitVerificationState extends State<ListOwnerVisitVerification> {



  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<VisitVerificationWatcherBloc>(
            create: (context) => getIt<VisitVerificationWatcherBloc>()
              ..add(VisitVerificationWatcherEvent.watchAllStarted(widget.markerId!,'','owner')),
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
                      title: const Text("Property viewing Requests",
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
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.visitVerificationObject!.length,
                            scrollDirection: Axis.vertical,
                            physics: AlwaysScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:  EdgeInsets.all(.02.sw),
                                child: Container(
                                  width: .9.sw,
                                  height: .25.sw,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Colors.black),
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  state.visitVerificationObject!.elementAt(index).propertyId!,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: .04.sw),
                                                )
                                              ],
                                            ),
                                          ),
                                          Visibility(
                                            visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='accepted',

                                            child: Padding(
                                              padding:  EdgeInsets.only(top: .02.sw,left: 0.26.sw),
                                              child: Text(
                                                'Accepted',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: .04.sw),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='declined',
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: .02.sw,right: .05.sw),
                                              child: Text(
                                                'Declined',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: .04.sw),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='completed',
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: .02.sw,right: .05.sw),
                                              child: Text(
                                                'Completed',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: .04.sw),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,bottom: 8),
                                        child: Text(
                                          'Viewing date: ${DateFormat('yyyy-MM-dd – h:mm a').format(state.visitVerificationObject!.elementAt(index).verificationDateAndTime!.toDate())}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: .04.sw),
                                        ),
                                      ),

                                      Visibility(
                                        visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='accepted',
                                        child: Row(
                                          children: [
                                            SizedBox(width: 20,),
                                            GestureDetector(
                                              child: Container(
                                                  width: .35.sw,
                                                  height: .07.sw,
                                                  decoration: const BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                                  ),
                                                  child: const Center(
                                                    child: Text('Add to calender',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  )
                                              ),
                                              onTap: (){
                                                DateTime date=DateTime.fromMillisecondsSinceEpoch(state.visitVerificationObject!.elementAt(index).verificationDateAndTime!.millisecondsSinceEpoch);
                                                date.add( Duration(hours: 1));
                                                final Event event = Event(
                                                  title: 'Property viewing',
                                                  description: 'user booked property viewing',
                                                  startDate: DateTime.fromMillisecondsSinceEpoch(state.visitVerificationObject!.elementAt(index).verificationDateAndTime!.millisecondsSinceEpoch),
                                                  endDate: date,
                                                );
                                                print("add to calender");
                                                Add2Calendar.addEvent2Cal(event);

                                              },
                                            ),
                                            SizedBox(width: 10,),
                                            GestureDetector(
                                              child: Container(
                                                  width: .35.sw,
                                                  height: .07.sw,
                                                  decoration: const BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                                  ),
                                                  child: const Center(
                                                    child: Text('viewing Completed',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  )
                                              ),
                                              onTap: (){
                                                DateTime date=DateTime.fromMillisecondsSinceEpoch(state.visitVerificationObject!.elementAt(index).verificationDateAndTime!.millisecondsSinceEpoch);
                                                if(date.isBefore(DateTime.now())==true){
                                                  FirebaseFirestore.instance
                                                      .collection('viewing')
                                                      .doc(state.visitVerificationObject!.elementAt(index).docId)
                                                      .update({
                                                    'verificationCompleted':true,
                                                    'viewingStatus':'completed',
                                                  });
                                                }else{
                                                  Fluttertoast.showToast(
                                                      msg: 'Cannot complete the viewing before the allocated time',
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.TOP,
                                                      timeInSecForIosWeb: 1);
                                                }

                                              },
                                            )

                                          ],
                                        ),
                                      ),

                                      Visibility(
                                        visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='initial',
                                        child: Row(
                                          children: [
                                            SizedBox(width: 20,),
                                            GestureDetector(
                                              child: Container(
                                                width: .2.sw,
                                                height: .06.sw,
                                                decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                                ),
                                                child: const Center(
                                                  child: Text('Accept',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  ),
                                                )
                                              ),
                                              onTap: (){
                                                FirebaseFirestore.instance
                                                    .collection('viewing')
                                                    .doc(state.visitVerificationObject!.elementAt(index).docId)
                                                    .update({
                                                  'viewingStatus':'accepted'
                                                });
                                              },
                                            ),
                                            SizedBox(width: 10,),
                                            GestureDetector(
                                              child: Container(
                                                  width: .2.sw,
                                                  height: .06.sw,
                                                  decoration: const BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                                  ),
                                                  child: const Center(
                                                    child: Text('Decline',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  )
                                              ),
                                              onTap: (){
                                                FirebaseFirestore.instance
                                                    .collection('viewing')
                                                    .doc(state.visitVerificationObject!.elementAt(index).docId)
                                                    .update({
                                                  'viewingStatus':'declined'
                                                });
                                              },
                                            )

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ],
                    )
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
