import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentnest/admin/adminPageverifierpage.dart';
import 'package:studentnest/homepage.dart';
import 'package:studentnest/listProperty/application/watcher/listProperty_watcher_bloc.dart';
import 'package:studentnest/propertyStatus/presentation/propertyStatusPage.dart';

import '../../../PropertyDetails/domain/propertyDetailsObject.dart';
import '../../../authentication/authentication_file.dart';
import '../../../injection.dart';
import '../application/watcher/PropertyCards_watcher_bloc.dart';

class AdminPropertiesListPage extends StatefulWidget {
  const AdminPropertiesListPage({Key? key}) : super(key: key);

  @override
  State<AdminPropertiesListPage> createState() =>
      _AdminPropertiesListPageState();
}

class _AdminPropertiesListPageState extends State<AdminPropertiesListPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController editingController = TextEditingController();
  List<PropertyDetailsObject> list = [];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<PropertyCardWatcherBloc>(
            create: (context) => getIt<PropertyCardWatcherBloc>()
              ..add(PropertyCardWatcherEvent.watchAllStarted()),
          ),
        ],
        child: BlocBuilder<PropertyCardWatcherBloc, PropertyCardWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) {
                list = state.propertyList;
                return WillPopScope(
                  onWillPop: () async {
                    return false;
                  },
                  child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      backgroundColor: Colors.white,
                      appBar: AppBar(
                        backgroundColor: Colors.white,
                        title: const Text(
                          "Properties",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        centerTitle: true,
                        iconTheme: IconThemeData(
                          color: Colors.black,
                        ),
                        actions: [
                          GestureDetector(
                            key: const Key('signout'),
                            child: Icon(
                              Icons.logout,
                            ),
                            onTap: () async {
                              final prefs =
                                  await SharedPreferences.getInstance();
                              await prefs.setBool('logged', false);
                              prefs.setBool('admin', false);
                              await auth.signOut();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AuthenticationPage()),
                              );
                            },
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                        bottom: TabBar(
                          tabs: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'All properties',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 0.04.sw),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'To be verified',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 0.04.sw),
                              ),
                            ),
                          ],
                        ),
                      ),
                      body: TabBarView(
                        children: [
                          Container(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: list.length,
                              scrollDirection: Axis.vertical,
                              physics: AlwaysScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                // itemBuilder will be automatically be called as many times as it takes for the
                                // list to fill up its available space, which is most likely more than the
                                // number of sidebar items we have. So, we need to check the index is OK.
                                return Container(
                                  width: 1.sw,
                                  height: .3.sw,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: .95.sw,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: 3,
                                                    blurRadius: 5,
                                                    offset: Offset(0,
                                                        4), // changes position of shadow
                                                  ),
                                                ]),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          .02.sw),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Property Id:',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                fontSize:
                                                                .05.sw),
                                                          ),
                                                          Text(
                                                            list
                                                                .elementAt(
                                                                index)
                                                                .propertyId!,
                                                            style: TextStyle(
                                                                color:
                                                                Colors.grey,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                fontSize:
                                                                .05.sw),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.all(
                                                          5.0),
                                                      child: Visibility(
                                                          visible: list
                                                              .elementAt(
                                                              index)
                                                              .isVerified ==
                                                              true,
                                                          replacement:
                                                          Container(
                                                            width: .27.sw,
                                                            height: .08.sw,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    20),
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .red
                                                                        .shade400,
                                                                    width: 2),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: Colors
                                                                        .grey
                                                                        .withOpacity(
                                                                        0.2),
                                                                    spreadRadius:
                                                                    3,
                                                                    blurRadius:
                                                                    5,
                                                                    offset: Offset(
                                                                        0,
                                                                        4), // changes position of shadow
                                                                  ),
                                                                ]),
                                                            child: const Center(
                                                              child: Text(
                                                                  'Not Verified'),
                                                            ),
                                                          ),
                                                          child: Container(
                                                            width: .27.sw,
                                                            height: .08.sw,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    20),
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .green
                                                                        .shade400,
                                                                    width: 2),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: Colors
                                                                        .grey
                                                                        .withOpacity(
                                                                        0.2),
                                                                    spreadRadius:
                                                                    3,
                                                                    blurRadius:
                                                                    5,
                                                                    offset: Offset(
                                                                        0,
                                                                        4), // changes position of shadow
                                                                  ),
                                                                ]),
                                                            child: Center(
                                                              child: Text(
                                                                  'Verified'),
                                                            ),
                                                          )),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: .03.sw,
                                                      vertical: .01.sw),
                                                  child: Container(
                                                    width: .7.sw,
                                                    height: .1.sw,
                                                    child: Text(
                                                      "${list.elementAt(index).locationDetailsObject!.address.isEmpty ? "Address not added by the user" : list.elementAt(index).locationDetailsObject!.address}",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        fontSize: 0.04.sw,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            child: GestureDetector(
                                              child: Padding(
                                                padding: EdgeInsets.all(.01.sw),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                          color: Colors.red,
                                                          width: 1),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          40),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.2),
                                                          spreadRadius: 3,
                                                          blurRadius: 5,
                                                          offset: Offset(0,
                                                              4), // changes position of shadow
                                                        ),
                                                      ]),
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsets.all(.02.sw),
                                                    child: Icon(
                                                      Icons.delete_forever,
                                                      color:
                                                      Colors.red.shade800,
                                                      size: .055.sw,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext contxt) {
                                                      return AlertDialog(
                                                          title: const Text(
                                                            'Are you sure you want to delete this property?',
                                                            style: TextStyle(
                                                              color:
                                                              Colors.black,
                                                            ),
                                                          ),
                                                          actions: <Widget>[
                                                            ElevatedButton(
                                                                style:
                                                                ButtonStyle(),
                                                                child: new Text(
                                                                    'Cancel'),
                                                                // The alert is actually part of the navigation stack, so to close it, we
                                                                // need to pop it.
                                                                onPressed: () =>
                                                                    Navigator.of(
                                                                        contxt)
                                                                        .pop()),
                                                            ElevatedButton(
                                                                style:
                                                                ButtonStyle(),
                                                                child: Text(
                                                                  'Yes',
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  FirebaseFirestore
                                                                      .instance
                                                                      .collection(
                                                                      "properties")
                                                                      .doc(list
                                                                      .elementAt(
                                                                      index)
                                                                      .markerID)
                                                                      .delete();
                                                                  Navigator.of(
                                                                      contxt)
                                                                      .pop();
                                                                })
                                                          ]);
                                                    });
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                      onTap: () {
                                        if(state.propertyList.elementAt(index).isSentForVerification==true){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AdminVerificationPage(list
                                                        .elementAt(index)
                                                        .markerID)),
                                          );
                                        }else{
                                          Fluttertoast.showToast(
                                              msg: 'User not sent for verification',
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.TOP,
                                              timeInSecForIosWeb: 1);
                                        }

                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Container(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: list.length,
                              scrollDirection: Axis.vertical,
                              physics: AlwaysScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                // itemBuilder will be automatically be called as many times as it takes for the
                                // list to fill up its available space, which is most likely more than the
                                // number of sidebar items we have. So, we need to check the index is OK.
                                return Visibility(
                                  visible: state.propertyList.elementAt(index).isSentForVerification==true && state.propertyList.elementAt(index).isVerified==false,                                  child: Container(
                                    width: 1.sw,
                                    height: .3.sw,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: .95.sw,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.2),
                                                      spreadRadius: 3,
                                                      blurRadius: 5,
                                                      offset: Offset(0,
                                                          4), // changes position of shadow
                                                    ),
                                                  ]),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            .02.sw),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Property Id:',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                  fontSize:
                                                                  .05.sw),
                                                            ),
                                                            Text(
                                                              list
                                                                  .elementAt(
                                                                  index)
                                                                  .propertyId!,
                                                              style: TextStyle(
                                                                  color:
                                                                  Colors.grey,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                  fontSize:
                                                                  .05.sw),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                        child: Visibility(
                                                            visible: list
                                                                .elementAt(
                                                                index)
                                                                .isVerified ==
                                                                true,
                                                            replacement:
                                                            Container(
                                                              width: .27.sw,
                                                              height: .08.sw,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      20),
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .red
                                                                          .shade400,
                                                                      width: 2),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .grey
                                                                          .withOpacity(
                                                                          0.2),
                                                                      spreadRadius:
                                                                      3,
                                                                      blurRadius:
                                                                      5,
                                                                      offset: Offset(
                                                                          0,
                                                                          4), // changes position of shadow
                                                                    ),
                                                                  ]),
                                                              child: const Center(
                                                                child: Text(
                                                                    'Not Verified'),
                                                              ),
                                                            ),
                                                            child: Container(
                                                              width: .27.sw,
                                                              height: .08.sw,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      20),
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .green
                                                                          .shade400,
                                                                      width: 2),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .grey
                                                                          .withOpacity(
                                                                          0.2),
                                                                      spreadRadius:
                                                                      3,
                                                                      blurRadius:
                                                                      5,
                                                                      offset: Offset(
                                                                          0,
                                                                          4), // changes position of shadow
                                                                    ),
                                                                  ]),
                                                              child: Center(
                                                                child: Text(
                                                                    'Verified'),
                                                              ),
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: .03.sw,
                                                        vertical: .01.sw),
                                                    child: Container(
                                                      width: .7.sw,
                                                      height: .1.sw,
                                                      child: Text(
                                                        "${list.elementAt(index).locationDetailsObject!.address.isEmpty ? "Address not added by the user" : list.elementAt(index).locationDetailsObject!.address}",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                          FontWeight.w400,
                                                          fontSize: 0.04.sw,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              child: GestureDetector(
                                                child: Padding(
                                                  padding: EdgeInsets.all(.01.sw),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                            color: Colors.red,
                                                            width: 1),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(0.2),
                                                            spreadRadius: 3,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                4), // changes position of shadow
                                                          ),
                                                        ]),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(.02.sw),
                                                      child: Icon(
                                                        Icons.delete_forever,
                                                        color:
                                                        Colors.red.shade800,
                                                        size: .055.sw,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                onTap: () {
                                                  showDialog(
                                                      context: context,
                                                      builder:
                                                          (BuildContext contxt) {
                                                        return AlertDialog(
                                                            title: const Text(
                                                              'Are you sure you want to delete this property?',
                                                              style: TextStyle(
                                                                color:
                                                                Colors.black,
                                                              ),
                                                            ),
                                                            actions: <Widget>[
                                                              ElevatedButton(
                                                                  style:
                                                                  ButtonStyle(),
                                                                  child: new Text(
                                                                      'Cancel'),
                                                                  // The alert is actually part of the navigation stack, so to close it, we
                                                                  // need to pop it.
                                                                  onPressed: () =>
                                                                      Navigator.of(
                                                                          contxt)
                                                                          .pop()),
                                                              ElevatedButton(
                                                                  style:
                                                                  ButtonStyle(),
                                                                  child: Text(
                                                                    'Yes',
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    FirebaseFirestore
                                                                        .instance
                                                                        .collection(
                                                                        "properties")
                                                                        .doc(list
                                                                        .elementAt(
                                                                        index)
                                                                        .markerID)
                                                                        .delete();
                                                                    Navigator.of(
                                                                        contxt)
                                                                        .pop();
                                                                  })
                                                            ]);
                                                      });
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                        onTap: () {
                                          if(state.propertyList.elementAt(index).isSentForVerification==true){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AdminVerificationPage(list
                                                          .elementAt(index)
                                                          .markerID)),
                                            );
                                          }else{
                                            Fluttertoast.showToast(
                                                msg: 'User not sent for verification',
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.TOP,
                                                timeInSecForIosWeb: 1);
                                          }

                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),

                        ],
                      )

                    ),
                  ),
                );
              },
              loadFailure: (state) {
                return Container();
              },
            );
          },
        ));
  }

  sharedPreferenceForLogout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('logged', false);
    prefs.setBool('admin', false);
  }

  void searchresults(String name, List<PropertyDetailsObject> properties) {}
}
