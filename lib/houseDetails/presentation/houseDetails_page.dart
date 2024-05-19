import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:studentnest/houseDetails/domain/houseDetails_object.dart';

import '../../injection.dart';
import '../application/blocs/houseDetails_bloc.dart';
import '../application/watcher/houseDetails_watcher_bloc.dart';

class HouseDetailsPage extends StatefulWidget {
  HouseDetailsPage(this.markedId);
  final String markedId;
  @override
  State<HouseDetailsPage> createState() => _HouseDetailsPageState();
}

class _HouseDetailsPageState extends State<HouseDetailsPage> {
  List<String>roomType = ["Standard","En-Suit", "Studio",];
  List<String>bedType = ["Single","Double", "King Size",];
  List<String>backyard = ["Yes","No"];
  List<String>storeRoom = ["Yes","No"];


  String? roomTypeValue= 'Standard';
  String? bedTypeValue= 'Single';
  String? backyardValue="Yes";
  String? storeRoomValue="Yes";
  int? rooms=0;
  int? bathroom=0;
  int? kitchen=0;
  int? hob=0;
  HouseDetailsObject houseDetailsObject=HouseDetailsObject();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<HouseDetailsWatcherBloc>()
                ..add(HouseDetailsWatcherEvent.watchAllStarted(widget.markedId))),
          BlocProvider<HouseDetailsBloc>(
            create: (context) => getIt<HouseDetailsBloc>(),
          ),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<HouseDetailsBloc, HouseDetailsState>(
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
            child: BlocBuilder<HouseDetailsWatcherBloc,
                HouseDetailsWatcherState>(builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (state) {
                  return Center(
                    child: Text("something went wrong"),
                  );
                },
                loadSuccess: (state) {
                  houseDetailsObject=state.houseDetailsObject!;

                  return Scaffold(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      centerTitle: true,
                      backgroundColor: Colors.white,
                      iconTheme: IconThemeData(
                          color: Colors.black
                      ),
                      title:Text("House Details",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Text('Room Type',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff5B5A62),
                                    fontSize: 0.04.sw,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 0.0,
                                  ),
                                  child: ChipsChoice<String>.single(
                                    scrollPhysics:
                                    NeverScrollableScrollPhysics(),
                                    wrapped: true,
                                    choiceStyle: C2ChoiceStyle(
                                        elevation: 10,
                                        backgroundColor: Colors.white,
                                        borderColor: Colors.grey
                                            .withOpacity(0.5),
                                        color: Theme.of(context).textTheme.headline2!.color!),
                                    onChanged: (val) {
                                      state.houseDetailsObject!.roomType=val;
                                      setState((){});
                                    },
                                    choiceItems: C2Choice.listFrom<
                                        String, String>(
                                      source: roomType,
                                      value: (i, v) => v,
                                      label: (i, v) => v,
                                    ),
                                    value:state.houseDetailsObject!.roomType!,

                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Divider(color: Colors.grey.shade400,),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child:  Text('Bed Type',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff5B5A62),
                                    fontSize: 0.04.sw,
                                  ),
                                ),
                              ),
                              ChipsChoice<String>.single(
                                scrollPhysics:
                                NeverScrollableScrollPhysics(),
                                wrapped: true,
                                choiceStyle: C2ChoiceStyle(
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.grey
                                        .withOpacity(0.5),
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .color!),
                                onChanged: (val) {
                                  state.houseDetailsObject!.bedType=val;
                                  setState((){});
                                },
                                choiceItems: C2Choice.listFrom<
                                    String, String>(
                                  source: bedType,
                                  value: (i, v) => v,
                                  label: (i, v) => v,
                                ),
                                value:state.houseDetailsObject!.bedType!,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Divider(color: Colors.grey.shade400,),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child:  Text('No Of Bed Rooms',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff5B5A62),
                                      fontSize: 0.04.sw,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: .02.sw,
                                ),
                                Container (
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

                                  child: NumberPicker(
                                    axis: Axis.horizontal,
                                    itemWidth: .15.sw,
                                    value: state.houseDetailsObject!.noOfRooms!,
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: .05.sw,
                                    ),
                                    minValue: 0,
                                    maxValue: 10,
                                    onChanged: (value) => setState(() => state.houseDetailsObject!.noOfRooms = value),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child:  Text('No Of BathRooms',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff5B5A62),
                                      fontSize: 0.04.sw,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: .02.sw,
                                ),
                                Container(
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

                                  child: NumberPicker(
                                    axis: Axis.horizontal,
                                    itemWidth: .15.sw,
                                    value: state.houseDetailsObject!.noOfBathrooms!,
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: .05.sw,
                                    ),
                                    minValue: 0,
                                    maxValue: 10,
                                    onChanged: (value) => setState(() => state.houseDetailsObject!.noOfBathrooms = value),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Divider(color: Colors.grey.shade400,),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child:  Text('No Of Kitchen',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff5B5A62),
                                      fontSize: 0.04.sw,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: .02.sw,
                                ),
                                Container(
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

                                  child: NumberPicker(
                                    axis: Axis.horizontal,
                                    itemWidth: .15.sw,
                                    value: state.houseDetailsObject!.noOfKitchen!,
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: .05.sw,
                                    ),
                                    minValue: 0,
                                    maxValue: 10,
                                    onChanged: (value) => setState(() => state.houseDetailsObject!.noOfKitchen = value),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child:  Text('No Of Kitchen Hobs',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff5B5A62),
                                      fontSize: 0.04.sw,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: .02.sw,
                                ),
                                Container(
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

                                  child: NumberPicker(
                                    axis: Axis.horizontal,
                                    itemWidth: .15.sw,
                                    value: state.houseDetailsObject!.noOfHobs!,
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: .05.sw,
                                    ),
                                    minValue: 0,
                                    maxValue: 10,
                                    onChanged: (value) => setState(() => state.houseDetailsObject!.noOfHobs = value),
                                  ),
                                ),



                              ],
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Divider(color: Colors.grey.shade400,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child:  Text('Backyard',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff5B5A62),
                                      fontSize: 0.04.sw,
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0,
                                    ),
                                    child: ChipsChoice<String>.single(
                                      scrollPhysics:
                                      NeverScrollableScrollPhysics(),
                                      wrapped: true,
                                      choiceStyle: C2ChoiceStyle(
                                          elevation: 10,
                                          backgroundColor: Colors.white,
                                          borderColor: Colors.grey
                                              .withOpacity(0.5),
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline2!
                                              .color!),
                                      onChanged: (val) {
                                        state.houseDetailsObject!.backyard=val;
                                        setState((){});
                                      },
                                      choiceItems: C2Choice.listFrom<
                                          String, String>(
                                        source: backyard,
                                        value: (i, v) => v,
                                        label: (i, v) => v,
                                      ),
                                      value:state.houseDetailsObject!.backyard!,

                                    )
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child:  Text('Store Room',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff5B5A62),
                                      fontSize: 0.04.sw,
                                    ),
                                  ),
                                ),
                                ChipsChoice<String>.single(
                                  scrollPhysics:
                                  NeverScrollableScrollPhysics(),
                                  wrapped: true,
                                  choiceStyle: C2ChoiceStyle(
                                      elevation: 10,
                                      backgroundColor: Colors.white,
                                      borderColor: Colors.grey
                                          .withOpacity(0.5),
                                      color: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .color!),
                                  onChanged: (val) {
                                    state.houseDetailsObject!.storeRoom=val;
                                    setState((){});
                                  },
                                  choiceItems: C2Choice.listFrom<
                                      String, String>(
                                    source: storeRoom,
                                    value: (i, v) => v,
                                    label: (i, v) => v,
                                  ),
                                  value:state.houseDetailsObject!.storeRoom!,
                                ),
                              ],
                            ),


                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Divider(color: Colors.grey.shade400,),
                        ),
                      ],
                    ),
                    bottomNavigationBar: Padding(
                      padding: EdgeInsets.all(.02.sw),
                      child: GestureDetector(
                        onTap: () {
                            context
                                .read<HouseDetailsBloc>()
                                .add(HouseDetailsEvent.spaceid(widget.markedId));
                            context.read<HouseDetailsBloc>().add(
                                HouseDetailsEvent.houseDetails(
                                    houseDetailsObject));
                            context
                                .read<HouseDetailsBloc>()
                                .add(HouseDetailsEvent.userType('user'));
                            context
                                .read<HouseDetailsBloc>()
                                .add(HouseDetailsEvent.submitted());
                            Navigator.pop(context);
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
                },
              );
            })));
  }
}







