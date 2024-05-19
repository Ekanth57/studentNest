import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nanoid/async.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';
import 'package:studentnest/listProperty/presentation/listProperties.dart';
import 'package:studentnest/locationPicker/locationDetailsObject.dart';
import 'package:studentnest/preferredTenants/domain/preferredTenants_object.dart';
import 'package:studentnest/propertyStatus/presentation/propertyStatusPage.dart';
import 'package:studentnest/rentDetails/domian/rentDetails_object.dart';

import 'package:validators/validators.dart' as validator;

import '../../TimingDetails/domain/timingDetails_object.dart';
import '../../commanWidgets/textFormFeild.dart';
import '../../houseDetails/domain/houseDetails_object.dart';
import '../domain/contactDetails_object.dart';
import 'package:uuid/uuid.dart';

class InitialContactDetailsPage extends StatefulWidget {
  const InitialContactDetailsPage({Key? key}) : super(key: key);
  @override
  State<InitialContactDetailsPage> createState() =>
      _InitialContactDetailsPageState();
}

class _InitialContactDetailsPageState extends State<InitialContactDetailsPage> {
  ContactDetailsObject contactDetailsObject = ContactDetailsObject(
      name: '',
      agencyName: 'NA',
      mobileNumber: '',
      email: '',
      listedBy: "Owner",
      contactDetailsOf: "Owner");
  RentDetailsObject rentDetailsObject = RentDetailsObject(
    rent: "",
    deposit: "",
    councilTax: "",
    electricityIncluded: "Yes",
    waterIncluded: "Yes",
    gasIncluded: "Yes",
    wifiIncluded: "Yes",
  );
  TimingDetailsObject timingDetailsObject = TimingDetailsObject(
    days: [false, false, false, false, false, true, true],
    fromTime: "",
    toTime: "",
  );
  HouseDetailsObject houseDetailsObject = HouseDetailsObject(
    roomType: "Standard",
    bedType: "Single",
    backyard: "Yes",
    storeRoom: "Yes",
    noOfBathrooms: 0,
    noOfHobs: 0,
    noOfKitchen: 0,
    noOfRooms: 0,
  );

  VerificationFlag verificationFlag = VerificationFlag(
    isLocationVerified: false,
    isPhotosVerified: false,
    isContactDetailsVerified: false,
    isPreferredTenantsVerified: false,
    isHouseDetailsVerified: false,
    isRentDetailsVerified: false,
    isTenantTypeVerified: false,
    isTimingDetailsVerified: false,
  );
  PreferredTenantsObject preferredTenantsObject =
      PreferredTenantsObject(university: {}, universityList: []);
  LocationDetailsObject locationDetailsObject =
      LocationDetailsObject("", GeoPoint(52.6211, -1.1246));

  List<String> propertyListedBy = [
    "Owner",
    "Agency",
  ];
  List<String> contactDetailsOf = [
    "Owner",
    "Agency",
  ];
  final _formKey = GlobalKey<FormState>();
  String? mtoken = '';

  @override
  void initState() {
    getToken();
    super.initState();
  }

  void getToken() async {
    await FirebaseMessaging.instance.getToken().then((token) {
      setState(() {
        mtoken = token;
        print(token);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Contact Details',
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(.05.sw),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text("Contact Details",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  )),
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                child: ChipsChoice<String>.single(
                                  scrollPhysics: NeverScrollableScrollPhysics(),
                                  wrapped: true,
                                  choiceStyle: C2ChoiceStyle(
                                      elevation: 0,
                                      backgroundColor: Colors.white,
                                      borderColor: Colors.grey.withOpacity(0.5),
                                      color: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .color!),
                                  value: contactDetailsObject
                                              .contactDetailsOf !=
                                          null
                                      ? contactDetailsObject.contactDetailsOf!
                                      : "Owner",
                                  onChanged: (val) {
                                    setState(() {
                                      contactDetailsObject.contactDetailsOf =
                                          val;
                                    });
                                  },
                                  choiceItems:
                                      C2Choice.listFrom<String, String>(
                                    source: contactDetailsOf,
                                    value: (i, v) => v,
                                    label: (i, v) => v,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Visibility(
                        visible:
                            contactDetailsObject.contactDetailsOf == "Agency",
                        child: MyTextFormField(
                            opacity: 1,
                            heading: "Agency Name",
                            initialvalue: contactDetailsObject.agencyName,
                            hintText: 'Enter Agency Name',
                            maxText: 50,
                            onchanged: (value) {
                              contactDetailsObject.agencyName = value!;
                            },
                            onFieldsubmitted: (_) => FocusScope.of(context)
                                .nextFocus(), // focus to next

                            textAction: TextInputAction.next,
                            validator: (String? input) {
                              const NameRegex =
                                  r"^(?=.{1,40}$)[a-zA-Z]+(?:[-'\s][a-zA-Z]+)*$";
                              if (input!.isEmpty) {
                                return 'Enter Agency Name';
                              }
                              if (RegExp(NameRegex).hasMatch(input)) {
                              } else {
                                return "Please Enter a valid Agency name";
                              }
                              return null;
                            }),
                      ),
                      MyTextFormField(
                          opacity: 1,
                          heading: "Name",
                          initialvalue: contactDetailsObject.name,
                          hintText: 'Enter Your Name',
                          maxText: 50,
                          onchanged: (value) {
                            contactDetailsObject.name = value!;
                          },
                          onFieldsubmitted: (_) => FocusScope.of(context)
                              .nextFocus(), // focus to next

                          textAction: TextInputAction.next,
                          validator: (String? input) {
                            const NameRegex =
                                r"^(?=.{1,40}$)[a-zA-Z]+(?:[-'\s][a-zA-Z]+)*$";
                            if (input!.isEmpty) {
                              return 'Enter Your Name';
                            }
                            if (RegExp(NameRegex).hasMatch(input)) {
                            } else {
                              return "Please Enter a valid name";
                            }
                            return null;
                          }),
                      MyTextFormField(
                        opacity: 1,
                        heading: "Email Address",
                        initialvalue: contactDetailsObject.email,
                        hintText: 'Enter Your Email Address',
                        isEmail: true,
                        onchanged: (value) {
                          contactDetailsObject.email = value!;
                        },
                        onFieldsubmitted: (_) =>
                            FocusScope.of(context).nextFocus(), // focus to next

                        textAction: TextInputAction.next,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Enter Your Email Address';
                          }
                          if (!validator.isEmail(value)) {
                            return 'Please Enter a valid email Address';
                          }
                          return null;
                        },
                      ),
                      MyTextFormField(
                          opacity: 1,
                          isMandatory: false,
                          initialvalue: contactDetailsObject.mobileNumber,
                          heading: "Contact Number",
                          hintText: 'Enter Your Number',
                          keyboardtype: TextInputType.number,
                          onchanged: (value) {
                            contactDetailsObject.mobileNumber = value!;
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onFieldsubmitted: (_) => FocusScope.of(context)
                              .nextFocus(), // focus to next

                          textAction: TextInputAction.next,
                          validator: (String? input) {
                            const PhoneNumberRegex =
                                r'^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$';
                            if (input!.isEmpty) {
                              return null;
                            } else if (RegExp(PhoneNumberRegex)
                                .hasMatch(input)) {
                            } else {
                              return "Please Enter a Valid contact Number";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    width: 1.sw,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Text(
                              "Property Listed by",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(fontSize: 15.sp),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: ChipsChoice<String>.single(
                                scrollPhysics: NeverScrollableScrollPhysics(),
                                wrapped: true,
                                choiceStyle: C2ChoiceStyle(
                                    elevation: 0,
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey.withOpacity(0.5),
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .color!),
                                value: contactDetailsObject.listedBy != null
                                    ? contactDetailsObject.listedBy!
                                    : "Owner",
                                onChanged: (val) {
                                  setState(() {
                                    contactDetailsObject.listedBy = val;
                                  });
                                },
                                choiceItems: C2Choice.listFrom<String, String>(
                                  source: propertyListedBy,
                                  value: (i, v) => v,
                                  label: (i, v) => v,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(25),
        child: GestureDetector(
          onTap: () async {
            FirebaseAuth auth = FirebaseAuth.instance;
            String user = auth.currentUser!.uid;
            String uuid = Uuid().v4().trimRight();
            Future<String> id =
                customAlphabet('1234567890QWERTYUIOPASDFGHJKLZXCVBNM', 6);
            FirebaseFirestore.instance
                .collection('properties')
                .doc(uuid)
                .set(
                    PropertyDetailsObject(
                      markerID: uuid,
                      userId: user,
                      propertyId: await id,
                      isRentedOut: false,
                      isVerified: false,
                      isSentForVerification: false,
                      flags: null,
                      verificationFlag: verificationFlag,
                      photos: [],
                      rating: "0",
                      tokenId: mtoken,
                      locationDetailsObject: locationDetailsObject,
                      contactDetailsObject: contactDetailsObject,
                      rentDetailsObject: rentDetailsObject,
                      timingDetailsObject: timingDetailsObject,
                      houseDetailsObject: houseDetailsObject,
                      preferredTenantsObject: preferredTenantsObject,
                      timestamp: Timestamp.now(),
                    ).toJson(),
                    SetOptions(merge: true))
                .then((value) {
              FirebaseFirestore.instance
                  .collection('properties')
                  .doc(uuid)
                  .set({
                'flags': {
                  'isContactDetailsAdded': true,
                  'isLocationComplete': false,
                  'isHouseDetailsAdded': false,
                  'isRentDetailsAdded': false,
                  'isTenantTypeAdded': false,
                  'isPhotosAdded': false,
                  'isPreferredTenantsAdded': false,
                  'isTimingDetailsAdded': false,
                }
              }, SetOptions(merge: true));
              FirebaseFirestore.instance
                  .collection('properties')
                  .doc(uuid)
                  .collection('review')
                  .doc('review')
                  .set({
                'averageRatings': 0.0,
                'ratings': [],
                'feedback': []
              }, SetOptions(merge: true));
            }).then((value) => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PropertyStatusPage(uuid)),
                      ),
                    });
          },
          child: Container(
            width: 1.sw,
            height: .12.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey,
            ),
            child: Center(
              child: Text(
                'Save',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
