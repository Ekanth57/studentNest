
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weekday_selector/weekday_selector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../injection.dart';

import '../application/blocs/timingDetails_bloc.dart';
import '../application/watcher/timingDetails_watcher_bloc.dart';
import '../domain/timingDetails_object.dart';



class TimingDetailsPage extends StatefulWidget {
  TimingDetailsPage(this.markerId,);
  final String? markerId;
  @override
  State<TimingDetailsPage> createState() => _TimingDetailsPageState();
}

class _TimingDetailsPageState extends State<TimingDetailsPage> {
  TimingDetailsObject timingDetailsObject=TimingDetailsObject(
    days: [false,false,false,false,false,true,true],
    fromTime: "",
    toTime: "",        
  );
  TimeOfDay timeOfDayFrom = TimeOfDay.now();
  TimeOfDay timeOfDayTo = TimeOfDay.now();
  String fromTime="";
  String toTime="";

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<TimingDetailsWatcherBloc>()
                ..add(TimingDetailsWatcherEvent.watchAllStarted(widget.markerId!))),
          BlocProvider<TimingDetailsBloc>(
            create: (context) => getIt<TimingDetailsBloc>(),
          ),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<TimingDetailsBloc, TimingDetailsState>(
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
            child: BlocBuilder<TimingDetailsWatcherBloc,
                TimingDetailsWatcherState>(builder: (context, state) {
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
                  timingDetailsObject = state.timingDetailsDetails!;
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      centerTitle: true,
                      title: Text('Visit Timings',
                      style: TextStyle(
                        color: Colors.black,
                      ),),
                      iconTheme: IconThemeData(
                        color: Colors.black
                      ),
                    ),
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(0.02.sw),
                          child: Text('Select Days',
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
                                      final index = day % 7;
                                      timingDetailsObject.days![index] = !timingDetailsObject.days![index];
                                      setState(() {
                                      });
                                      timingDetailsObject.days=timingDetailsObject.days;
                                    },
                                    values:timingDetailsObject.days!
                                ),
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.02.sw),
                          child: Text('Select Timings',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff5B5A62),
                              fontSize: 0.04.sw,
                            ),
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
                                  child: Text(timingDetailsObject.fromTime==""?TimeOfDay.now().format(context):timingDetailsObject.fromTime!,
                                    style: TextStyle(
                                        fontSize: .04.sw
                                    ),
                                  ),
                                ),
                              ),
                              onTap: (){
                                displayFromTimePicker(context);
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
                                  child: Text(timingDetailsObject.toTime==""?TimeOfDay.now().format(context):timingDetailsObject.toTime!,
                                    style: TextStyle(
                                        fontSize: .04.sw
                                    ),
                                  ),
                                ),
                              ),
                              onTap: (){
                                displayToTimePicker(context);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    bottomNavigationBar: Padding(
                      padding: EdgeInsets.all(25),
                      child: GestureDetector(
                        onTap: () {
                          timingDetailsObject.fromTime==""?TimeOfDay.now().format(context):timingDetailsObject.fromTime;
                          timingDetailsObject.toTime==""?TimeOfDay.now().format(context):timingDetailsObject.toTime;

                          context.read<TimingDetailsBloc>().add(TimingDetailsEvent.propertyid(widget.markerId!));
                          context.read<TimingDetailsBloc>().add(TimingDetailsEvent.userType('user'));
                          context.read<TimingDetailsBloc>().add(TimingDetailsEvent.timingDetails(timingDetailsObject));
                          context.read<TimingDetailsBloc>().add(TimingDetailsEvent.submitted());
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 1.sw,
                          height: .12.sw,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)),
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

  Future displayFromTimePicker(BuildContext context) async {
    var time = await showTimePicker(
        context: context,
        initialTime: timeOfDayFrom);

    if (time != null) {
      setState(() {
        timingDetailsObject.fromTime  = "${time.hour}:${time.minute}";
      });
    }
  }

  Future displayToTimePicker(BuildContext context) async {
    var time = await showTimePicker(
        context: context,
        initialTime: timeOfDayFrom);

    if (time != null) {
      setState(() {
        timingDetailsObject.toTime  = "${time.hour}:${time.minute}";
      });
    }
  }
}

