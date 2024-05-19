import 'package:carousel_slider/carousel_slider.dart';
import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:studentnest/TimingDetails/presentation/timingDetails_page.dart';
import 'package:studentnest/chat/presentation/userChat.dart';
import 'package:studentnest/commanWidgets/textFormFeild.dart';
import 'package:studentnest/contactDetails/presentation/contactDetailsPage.dart';
import 'package:studentnest/listProperty/presentation/listProperties.dart';
import 'package:studentnest/locationPicker/locationPicker.dart';
import 'package:studentnest/main.dart';
import 'package:studentnest/preferredTenants/presentation/preferredTenants_page.dart';
import 'package:studentnest/propertyStatus/application/propertyStatus_watcher/PropertyStatus_watcher_bloc.dart';
import 'package:studentnest/rentDetails/domian/rentDetails_object.dart';
import 'package:studentnest/rentDetails/presentation/rentDetailsPage.dart';
import 'package:studentnest/uploadPhotos/uploadPhotosPage.dart';
import 'package:studentnest/visitVerification/presentation/userVisitVerification.dart';

import '../../houseDetails/presentation/houseDetails_page.dart';
import '../../injection.dart';
import '../../listProperty/application/watcher/listProperty_watcher_bloc.dart';
import '../../preferredTenants/presentation/preferredTenants_adminPage.dart';

class PropertyDetailsPage extends StatefulWidget {
  PropertyDetailsPage(this.markerId);

  final String? markerId;
  @override
  _PropertyDetailsPageState createState() => _PropertyDetailsPageState();
}

class _PropertyDetailsPageState extends State<PropertyDetailsPage> {
  int? totalSteps=7;
  int? completedSteps=0;
  int? totalPercentage=0;
  bool? initialLoad=true;
  String? name;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    body: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          CarouselSlider(
                            options: CarouselOptions(
                                height: 200.0,
                              autoPlay: true,

                            ),
                            items: state.propertyList.photos!.map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        color:Colors.white,
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
                                    child: Image.network(i,
                                    fit: BoxFit.fitWidth,
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: Center(
                                  child: Container(
                                    width: .45.sw,
                                    decoration: BoxDecoration(
                                        color:Colors.white,
                                        border: Border.all(color: Colors.black, width: 1),
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
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Chat with landlord',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: .04.sw
                                          ),
                                          ),
                                          Icon(Icons.chat_outlined,
                                          size: .06.sw,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () async {
                                  FirebaseAuth auth = FirebaseAuth.instance;
                                  String user = auth.currentUser!.uid;
                                  FirebaseFirestore.instance.collection('users').doc(user).get().then((value) {
                                    if (value.data() !=null) {
                                      if (value.data()!['name']!=null) {
                                        print('name exist');
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => UserChat(state.propertyList.markerID,state.propertyList.propertyId)));
                                      } else {
                                        showDialog(
                                            context: context,
                                            builder:
                                                (BuildContext contxt) {
                                              return AlertDialog(
                                                  title: const Text(
                                                    'Please enter your details',
                                                    style: TextStyle(
                                                      color:
                                                      Colors.black,
                                                    ),
                                                  ),

                                                  actions: <Widget>[
                                                    Form(
                                                      key: _formKey,
                                                      child: MyTextFormField(
                                                          opacity: 1,
                                                          heading: "Enter your name",
                                                          hintText: 'Enter your name',
                                                          initialvalue: '',
                                                          onchanged: (value) {
                                                            name=value;
                                                          },
                                                          onFieldsubmitted: (_) => FocusScope.of(context).nextFocus(),
                                                          textAction: TextInputAction.next,
                                                          keyboardtype: TextInputType.text,
                                                          validator: (String? input) {
                                                            const NameRegex =
                                                                r"^(?=.{1,20}$)[a-zA-Z]+(?:[-'\s][a-zA-Z]+)*$";
                                                            if (input!.isEmpty) {
                                                              return 'Enter Your Name';
                                                            }
                                                            if (RegExp(NameRegex)
                                                                .hasMatch(input)) {
                                                            } else {
                                                              return "Please Enter a valid name";
                                                            }
                                                            return null;
                                                          }),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        ElevatedButton(
                                                            style:
                                                            ButtonStyle(),
                                                            child: new Text('Cancel'),
                                                            onPressed: () => Navigator.of(contxt).pop()),
                                                        SizedBox(width: 20,),
                                                        ElevatedButton(
                                                            style:
                                                            ButtonStyle(),
                                                            child: Text(
                                                              'Yes',
                                                            ),
                                                            onPressed: () async {
                                                              if(_formKey.currentState!.validate()){
                                                                await FirebaseFirestore.instance.collection("users").doc(user).set({
                                                                  'name':name,
                                                                },SetOptions(merge: true)).then((value) => {
                                                                  Navigator.of(contxt).pop(),
                                                                  Navigator.push(context, MaterialPageRoute(
                                                                      builder: (context) => UserChat(state.propertyList.markerID,state.propertyList.propertyId))),
                                                                });
                                                              }

                                                            })
                                                      ],
                                                    ),

                                                  ]);
                                            });

                                      }

                                    }

                                  });

                                },
                              ),
                              GestureDetector(
                                child: Center(
                                  child: Container(
                                    width: .45.sw,
                                    decoration: BoxDecoration(
                                        color:Colors.white,
                                        border: Border.all(color: Colors.black, width: 1),
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
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Book property visit',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: .04.sw
                                            ),
                                          ),
                                          Icon(Icons.chat_outlined,
                                            size: .06.sw,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UserVisitVerification(state.propertyList.timingDetailsObject!,state.propertyList.markerID,state.propertyList.propertyId)),
                                  );
                                },
                              ),

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Property Details",
                              style: TextStyle(
                                  fontSize: .04.sw,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: .9.sw,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(width: 1,color: Colors.black),
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
                                                                      Text(state.propertyList.propertyId!,
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
                                                        child: Text("${state.propertyList.locationDetailsObject!.address}",
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
                                                  child: Text('${state.propertyList.rentDetailsObject!.rent!}\n£ pcm',
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
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: .02.sw,vertical: .015.sw),
                                              child: Text('Deposit: ${state.propertyList.rentDetailsObject!.deposit} £',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: .045.sw,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(.02.sw),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
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
                                                  Text(state.propertyList.houseDetailsObject!.noOfBathrooms!.toString(),
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
                                                  Text(state.propertyList.houseDetailsObject!.noOfRooms!.toString(),
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
                                                  Text(state.propertyList.houseDetailsObject!.noOfKitchen!.toString(),
                                                    style: TextStyle(
                                                      fontSize: .05.sw,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            )

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {

                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Room Details",
                              style: TextStyle(
                                  fontSize: .04.sw,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: .9.sw,
                              decoration: BoxDecoration(
                                  color:Colors.white,
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
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("Room Type",
                                            style: TextStyle(
                                                fontSize: .035.sw,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.green,width: 2),
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(state.propertyList.houseDetailsObject!.roomType!),
                                          ),
                                        )
                                      ],

                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("Bed Type",
                                            style: TextStyle(
                                                fontSize: .035.sw,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.green,width: 2),
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(state.propertyList.houseDetailsObject!.bedType!),
                                          ),
                                        )
                                      ],

                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Bills include:",
                              style: TextStyle(
                                  fontSize: .04.sw,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: .9.sw,
                              decoration: BoxDecoration(
                                  color:Colors.white,
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
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("Electricity",
                                            style: TextStyle(
                                                fontSize: .035.sw,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color:state.propertyList.rentDetailsObject!.electricityIncluded =='Yes'? Colors.green: Colors.red,width: 2),
                                            borderRadius: BorderRadius.all(Radius.circular(15)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                            child: Text(state.propertyList.rentDetailsObject!.electricityIncluded!),
                                          ),
                                        )
                                      ],

                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("Water",
                                            style: TextStyle(
                                                fontSize: .035.sw,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color:state.propertyList.rentDetailsObject!.waterIncluded =='Yes'? Colors.green: Colors.red,width: 2),
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                            child: Text(state.propertyList.rentDetailsObject!.waterIncluded!),
                                          ),
                                        )
                                      ],

                                    ),

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("Gas",
                                            style: TextStyle(
                                                fontSize: .035.sw,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color:state.propertyList.rentDetailsObject!.gasIncluded =='Yes'? Colors.green: Colors.red,width: 2),
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                            child: Text(state.propertyList.rentDetailsObject!.gasIncluded!),
                                          ),
                                        )
                                      ],

                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("wifi",
                                            style: TextStyle(
                                                fontSize: .035.sw,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color:state.propertyList.rentDetailsObject!.wifiIncluded =='Yes'? Colors.green: Colors.red,width: 2),
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                            child: Text(state.propertyList.rentDetailsObject!.wifiIncluded!),
                                          ),
                                        )
                                      ],

                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Amenities",
                              style: TextStyle(
                                  fontSize: .04.sw,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: .9.sw,
                              decoration: BoxDecoration(
                                  color:Colors.white,
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
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("Backyard",
                                            style: TextStyle(
                                                fontSize: .035.sw,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color:state.propertyList.houseDetailsObject!.backyard =="Yes"? Colors.green:Colors.red,width: 2),
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                            child: Text(state.propertyList.houseDetailsObject!.backyard!),
                                          ),
                                        )
                                      ],

                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text("Store Room",
                                            style: TextStyle(
                                                fontSize: .035.sw,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color:state.propertyList.houseDetailsObject!.storeRoom =="Yes"? Colors.green:Colors.red,width: 2),
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                            child: Text(state.propertyList.houseDetailsObject!.storeRoom!),
                                          ),
                                        )
                                      ],

                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: .1.sw,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Tenants Details",
                              style: TextStyle(
                                  fontSize: .04.sw,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: .9.sw,
                              decoration: BoxDecoration(
                                  color:Colors.white,
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
                              child:ListView.builder(
                              itemCount: state.propertyList.preferredTenantsObject!.universityList!.length,
                              shrinkWrap: true,
                              padding: EdgeInsets.only(top: 10,bottom: 10),
                              physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index){
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                      child: Text('Room no: ${index+1}',
                                        style: TextStyle(
                                            fontSize: .04.sw,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                      child: Text('University name: ${state.propertyList.preferredTenantsObject!.universityList!.elementAt(index)==''?'Not provided':state.propertyList.preferredTenantsObject!.universityList!.elementAt(index)}',
                                        style: TextStyle(
                                            fontSize: .04.sw,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                    ],
                                );
                                  })
                            ),
                          ),
                          SizedBox(height: 20,)

                        ],
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
