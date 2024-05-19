import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studentnest/homepage.dart';
import 'package:studentnest/listProperty/application/watcher/listProperty_watcher_bloc.dart';
import 'package:studentnest/propertyStatus/presentation/propertyStatusPage.dart';

import '../../commanWidgets/addPropertyTandC.dart';
import '../../injection.dart';

class ListProperties extends StatefulWidget {
  const ListProperties({Key? key}) : super(key: key);

  @override
  State<ListProperties> createState() => _ListPropertiesState();
}

class _ListPropertiesState extends State<ListProperties> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ListPropertyWatcherBloc>(
          create: (context) => getIt<ListPropertyWatcherBloc>()
            ..add(ListPropertyWatcherEvent.watchAllStarted()),
        ),
      ],
      child: BlocBuilder<ListPropertyWatcherBloc, ListPropertyWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (state) {
              state.propertyList.forEach((element) {
              });
              return WillPopScope(
                onWillPop: ()async{
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(),
                    ),
                  );
                  return false;
                },
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    title: Text("Your Listings",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    centerTitle: true,
                    iconTheme: IconThemeData(
                      color: Colors.black,
                    ),
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // width: 1.sw,
                          // height: .6.sw,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.propertyList.length,
                            scrollDirection: Axis.vertical,
                            physics: ScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  child: Container(
                                    width: .9.sw,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 2,color: state.propertyList.elementAt(index).isVerified==true?Colors.green:Colors.white),
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
                                                  Text('Property Id:',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: .04.sw
                                                    ),
                                                  ),
                                                  Text(state.propertyList.elementAt(index).propertyId!,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: .04.sw
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              child: Padding(
                                                padding: EdgeInsets.all(.01.sw),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(40),
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
                                                    padding: EdgeInsets.all(.02.sw),
                                                    child: Icon(Icons.delete_forever,
                                                      color: Colors.red.shade800,
                                                      size: .055.sw,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              onTap: (){
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext
                                                    contxt) {
                                                      return  AlertDialog(
                                                          title: const Text(
                                                            'Are you sure you want to delete this property?',
                                                            style:
                                                            TextStyle(
                                                              color: Colors
                                                                  .black,
                                                            ),
                                                          ),
                                                          actions: <Widget>[
                                                            ElevatedButton(
                                                                style: ButtonStyle(),
                                                                child: new Text('Cancel'),
                                                                // The alert is actually part of the navigation stack, so to close it, we
                                                                // need to pop it.
                                                                onPressed: () => Navigator.of(contxt).pop()),
                                                             ElevatedButton(
                                                                style: ButtonStyle(),
                                                                child: Text(
                                                                  'Yes',
                                                                ),
                                                                onPressed: () async {
                                                                  FirebaseFirestore.instance.collection("properties").doc(state.propertyList.elementAt(index).markerID).delete();
                                                                  Navigator.of(contxt).pop();
                                                                })
                                                          ]);
                                                    });
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: .02.sw),
                                              child: Text('${state.propertyList.elementAt(index).rentDetailsObject!.rent!}£ pcm',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: .07.sw,
                                              ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: .02.sw,vertical: .015.sw),
                                          child: Text('${state.propertyList.elementAt(index).houseDetailsObject!.noOfRooms!} bed property to rent',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: .045.sw,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: .02.sw,),
                                          child: Container(
                                            width: .7.sw,
                                            height: .1.sw,
                                            child: Text("${state.propertyList.elementAt(index).locationDetailsObject!.address}",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 0.04.sw,
                                            ),
                                            ),
                                          ),
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
                                              Text(state.propertyList.elementAt(index).houseDetailsObject!.noOfBathrooms!.toString(),
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
                                              Text(state.propertyList.elementAt(index).houseDetailsObject!.noOfRooms!.toString(),
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
                                              Text(state.propertyList.elementAt(index).houseDetailsObject!.noOfKitchen!.toString(),
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
                                                visible:state.propertyList.elementAt(index).isRentedOut!,
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
                                                    child: Text('Avaliable'),
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
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PropertyStatusPage(state.propertyList.elementAt(index).markerID)),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddProperty()),
                        );
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
                            'Add New Property',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
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
