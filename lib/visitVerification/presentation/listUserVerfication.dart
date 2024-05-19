import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:studentnest/TimingDetails/domain/timingDetails_object.dart';
import 'package:weekday_selector/weekday_selector.dart';

import '../../injection.dart';
import '../application/visit_watcher/visitVerification_watcher_bloc.dart';

class ListUserVisitVerification extends StatefulWidget {
  
  @override
  State<ListUserVisitVerification> createState() => _ListUserVisitVerificationState();
}

class _ListUserVisitVerificationState extends State<ListUserVisitVerification> {
  String review='';
  double ratings=0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<VisitVerificationWatcherBloc>(
            create: (context) => getIt<VisitVerificationWatcherBloc>()
              ..add(VisitVerificationWatcherEvent.watchAllStarted('','','user')),
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
                                visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='initial',
                                child:Padding(
                                  padding: const EdgeInsets.only(left: 10,bottom: 8),
                                  child: Text(
                                    'Waiting for owner to accept the request',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: .04.sw),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='accepted',
                                child:Padding(
                                  padding: const EdgeInsets.only(left: 10,bottom: 8),
                                  child: Text(
                                    'Request accepted by the owner',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w600,
                                        fontSize: .04.sw),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='rejected',
                                child:Padding(
                                  padding: const EdgeInsets.only(left: 10,bottom: 8),
                                  child: Text(
                                    'Request declined by the owner',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600,
                                        fontSize: .04.sw),
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: state.visitVerificationObject!.elementAt(index).viewingStatus=='completed'
                                && state.visitVerificationObject!.elementAt(index).feedback==false ,
                                  child:GestureDetector(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                          width: .35.sw,
                                          height: .07.sw,
                                          decoration: const BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child: const Center(
                                            child: Text('Feedback',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                      ),
                                    ),
                                    onTap: (){
                                      showDialog(
                                          context: context,
                                          builder:
                                              (BuildContext context) {
                                            return AlertDialog(
                                                title: Text(
                                                    'Feedback',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .black)),
                                                content: Container(
                                                  height: .6.sw,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                          'Ratings',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black)),
                                              RatingBar.builder(
                                                  initialRating: 0,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: false,
                                                  itemCount: 5,
                                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                                  itemBuilder: (context, _) => Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    ratings=rating;
                                                  },
                                              ),
                                                      SizedBox(height: 10,),
                                                      TextFormField(
                                                        decoration: InputDecoration(
                                                          focusedBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(25.0),
                                                            borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                                          ),
                                                          enabledBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(25.0),
                                                            borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                                          ),
                                                          hintText:'write feedback'
                                                        ),
                                                        minLines: 6, // any number you need (It works as the rows for the textarea)
                                                        keyboardType: TextInputType.multiline,
                                                        maxLines: 6,
                                                        onChanged: (String? value){
                                                         review=value!;
                                                        },
                                                      )
                                                    ],
                                                  ),
                                                ),

                                                actions: <Widget>[
                                                  ElevatedButton(
                                                    child:  Text(
                                                        'Cancel'),
                                                    // The alert is actually part of the navigation stack, so to close it, we
                                                    // need to pop it.
                                                    onPressed: () =>
                                                        Navigator.of(
                                                            context)
                                                            .pop(),
                                                  ),
                                                  ElevatedButton(
                                                      child:  Text('YES'),
                                                      onPressed: ()  async {
                                                        double avgRatings=0;
                                                        double total=0;

                                                        DocumentSnapshot doc = await FirebaseFirestore.instance.collection("properties").doc(state.visitVerificationObject!.elementAt(index).markerId!).collection('review').doc('review').get();
                                                        List<dynamic> list=doc.get('ratings');
                                                        if(ratings!=0){
                                                          list.add(ratings);
                                                          list.forEach((element) {
                                                            total=total+element;
                                                          });
                                                          avgRatings=(total/list.length);
                                                          await FirebaseFirestore.instance
                                                              .collection('properties')
                                                              .doc(state.visitVerificationObject!.elementAt(index).markerId).collection('review').doc('review')
                                                              .set({
                                                            'averageRatings':double.parse(avgRatings.toStringAsFixed(2)),
                                                            'ratings':list,
                                                            'feedback': FieldValue.arrayUnion([review]),
                                                          },SetOptions(merge: true)).then((value) async {
                                                            await FirebaseFirestore.instance
                                                                .collection('viewing')
                                                                .doc(state.visitVerificationObject!.elementAt(index).docId)
                                                                .set({
                                                              'feedback':true,
                                                            },SetOptions(merge: true));

                                                            await FirebaseFirestore.instance
                                                                .collection('properties')
                                                                .doc(state.visitVerificationObject!.elementAt(index).markerId)
                                                                .set({
                                                              'rating':avgRatings.toStringAsFixed(2),
                                                            },SetOptions(merge: true));
                                                          });
                                                          Navigator.pop(context);
                                                        }else{
                                                          Fluttertoast.showToast(
                                                              msg: "Please give valid ratings",
                                                              toastLength: Toast.LENGTH_SHORT,
                                                              gravity: ToastGravity.TOP,
                                                              timeInSecForIosWeb: 1);
                                                        }

                                                      })
                                                ]);
                                          });
                                    },
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
