import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nanoid/async.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';
import 'package:studentnest/listProperty/presentation/listProperties.dart';
import 'package:studentnest/rentDetails/domian/rentDetails_object.dart';

import 'package:validators/validators.dart' as validator;

import '../../commanWidgets/textFormFeild.dart';
import '../../injection.dart';
import 'package:uuid/uuid.dart';

import '../application/blocs/rentDetails_bloc.dart';
import '../application/watcher/rentDetails_watcher_bloc.dart';



class RentDetailsPage extends StatefulWidget {
  RentDetailsPage(this.markerId,);
  final String? markerId;
  @override
  State<RentDetailsPage> createState() => _RentDetailsPageState();
}

class _RentDetailsPageState extends State<RentDetailsPage> {
  RentDetailsObject rentDetailsObject  =RentDetailsObject(
    rent: "",
    deposit: "",
    councilTax: "",
    electricityIncluded: "Yes",
    waterIncluded: "Yes",
    gasIncluded: "Yes",
    wifiIncluded: "Yes",
  ) ;
  List<String> propertyListedBy = ["Owner", "Agency",];
  List<String> contactDetailsOf = ["Owner", "Agency", ];
  List<String> electricityChargeIncluded = [
    'Yes',
    'No',
  ];
  List<String> waterChargeIncluded = [
    'Yes',
    'No',
  ];
  List<String> gasChargeIncluded = [
    'Yes',
    'No',
  ];
  List<String> wifiChargeIncluded = [
    'Yes',
    'No',
  ];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<RentDetailsWatcherBloc>()
                ..add(RentDetailsWatcherEvent.watchAllStarted(widget.markerId!))),
          BlocProvider<RentDetailsBloc>(
            create: (context) => getIt<RentDetailsBloc>(),
          ),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<RentDetailsBloc, RentDetailsState>(
                  listener: (context, state) {
                    state.authFailureOrSuccessOption.fold(
                          () {},
                          (either) => either.fold(
                            (failure) {
                          failure.map(
                            insufficientPermission: (val) {},
                            serverError: (value) {},
                            unableToUpdate: (value) {},
                            unexpected: (value) {},
                          );
                        },
                            (id) {},
                      ),
                    );
                  }),
            ],
            child: BlocBuilder<RentDetailsWatcherBloc,
                RentDetailsWatcherState>(builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (state) {
                  print(state.rentDetailsFailure.toString());
                  return Center(
                    child: Text("something went wrong"),
                  );
                },
                loadSuccess: (state) {
                  rentDetailsObject=state.rentDetailsObject!;

                  return Container(
                    child: Scaffold(
                      backgroundColor: Colors.white,
                      resizeToAvoidBottomInset: false,
                      appBar: AppBar(
                        backgroundColor: Colors.white,
                        centerTitle: true,
                        iconTheme: IconThemeData(
                          color: Colors.black
                        ),
                        title: Text(
                          'Rent Details',
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
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 1.sw,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 4,
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 25.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Rent per/month",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      MyTextFormField(
                                          opacity: 1,
                                          heading: "Expected Rent",
                                          hintText: 'Enter rent',
                                            initialvalue: rentDetailsObject.rent,
                                          maxText: 4,
                                          onchanged: (value) {
                                            rentDetailsObject.rent=value;
                                          },
                                          onFieldsubmitted: (_) =>
                                              FocusScope.of(context)
                                                  .nextFocus(),
                                          // focus to next

                                          textAction: TextInputAction.next,
                                          keyboardtype: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                            FilteringTextInputFormatter.digitsOnly
                                          ],
                                          validator: (String? input) {
                                            if (input!.isEmpty) {
                                              return 'Enter rent';
                                            }
                                            return null;
                                          }),

                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 25.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Deposit",
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),

                                      MyTextFormField(
                                          opacity: 1,
                                          heading: "Expected Deposit",
                                          hintText: 'Enter Deposit',
                                          initialvalue:rentDetailsObject.deposit,
                                          maxText: 4,
                                          onchanged: (value) {
                                            rentDetailsObject.deposit=value;

                                            setState(() {});
                                          },
                                          onFieldsubmitted: (_) =>
                                              FocusScope.of(context)
                                                  .nextFocus(),
                                          // focus to next

                                          textAction: TextInputAction.next,
                                          keyboardtype: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            // for below version 2 use this
                                            FilteringTextInputFormatter.allow(
                                                RegExp(r'[0-9]')),
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          validator: (String? input) {
                                            if (input!.isEmpty) {
                                              return 'Enter Deposit';
                                            }
                                            return null;
                                          }),

                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                          ),
                                          child: Text(
                                            "Electric charges included in Rent",

                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                            ),
                                            child: ChipsChoice<String>.single(
                                              scrollPhysics:
                                              NeverScrollableScrollPhysics(),
                                              wrapped: true,
                                              choiceStyle: C2ChoiceStyle(
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  borderColor: Colors.grey
                                                      .withOpacity(0.5),
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .headline2!
                                                      .color!),
                                              onChanged: (val) {
                                                rentDetailsObject.electricityIncluded=val;
                                                setState((){});
                                              },
                                              choiceItems: C2Choice.listFrom<
                                                  String, String>(
                                                source: electricityChargeIncluded,
                                                value: (i, v) => v,
                                                label: (i, v) => v,
                                              ),
                                              value: rentDetailsObject.electricityIncluded!,

                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                          ),
                                          child: Text(
                                            "Water charges included in Rent",
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                            ),
                                            child: ChipsChoice<String>.single(
                                              scrollPhysics:
                                              NeverScrollableScrollPhysics(),
                                              wrapped: true,
                                              choiceStyle: C2ChoiceStyle(
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  borderColor: Colors.grey
                                                      .withOpacity(0.5),
                                                  color: Theme.of(context).textTheme.headline2!.color!
                                              ),
                                              onChanged: (val) {
                                                rentDetailsObject.waterIncluded=val;
                                                setState((){});
                                              },
                                              choiceItems: C2Choice.listFrom<
                                                  String, String>(
                                                source: waterChargeIncluded,
                                                value: (i, v) => v,
                                                label: (i, v) => v,
                                              ),
                                              value: rentDetailsObject.waterIncluded!,

                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                          ),
                                          child: Text(
                                            "Gas charges included in Rent",
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                            ),
                                            child: ChipsChoice<String>.single(
                                              scrollPhysics:
                                              NeverScrollableScrollPhysics(),
                                              wrapped: true,
                                              choiceStyle: C2ChoiceStyle(
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  borderColor: Colors.grey.withOpacity(0.5),
                                                  color: Theme.of(context).textTheme.headline2!.color!
                                              ),
                                              onChanged: (val) {
                                                rentDetailsObject.gasIncluded=val;
                                                setState((){});
                                              },
                                              choiceItems: C2Choice.listFrom<
                                                  String, String>(
                                                source: gasChargeIncluded,
                                                value: (i, v) => v,
                                                label: (i, v) => v,
                                              ),
                                              value: rentDetailsObject.gasIncluded!,

                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                          ),
                                          child: Text(
                                            "wifi charges included in Rent",
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                            ),
                                            child: ChipsChoice<String>.single(
                                              scrollPhysics:
                                              NeverScrollableScrollPhysics(),
                                              wrapped: true,
                                              choiceStyle: C2ChoiceStyle(
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  borderColor: Colors.grey.withOpacity(0.5),
                                                  color: Theme.of(context).textTheme.headline2!.color!
                                              ),
                                              onChanged: (val) {
                                                rentDetailsObject.wifiIncluded=val;
                                                setState((){});
                                              },
                                              choiceItems: C2Choice.listFrom<
                                                  String, String>(
                                                source: wifiChargeIncluded,
                                                value: (i, v) => v,
                                                label: (i, v) => v,
                                              ),
                                              value: rentDetailsObject.wifiIncluded!,

                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      bottomNavigationBar: Padding(
                        padding: EdgeInsets.all(.02.sw),
                        child: GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<RentDetailsBloc>().add(RentDetailsEvent.spaceid(widget.markerId!));
                              context.read<RentDetailsBloc>().add(RentDetailsEvent.rentDetails(rentDetailsObject));
                              context.read<RentDetailsBloc>().add(RentDetailsEvent.userType('user'));
                              context.read<RentDetailsBloc>().add(RentDetailsEvent.submitted());
                              Navigator.pop(context);
                            }
                          },
                          child: Container(
                            width: 1.sw,
                            height: .12.sw,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color:Colors.grey,
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
                    ),
                  );
                },
              );
            })));
  }
}


