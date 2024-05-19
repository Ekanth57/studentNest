import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studentnest/commanWidgets/textFormFeild.dart';
import 'package:studentnest/houseDetails/domain/houseDetails_object.dart';
import 'package:studentnest/preferredTenants/domain/preferredTenants_object.dart';

import '../../injection.dart';
import '../application/bloc/preferredTenants_bloc.dart';
import '../application/watcher/preferredTenants_watcher_bloc.dart';

class PreferredTenantsAdminPage extends StatefulWidget {
  PreferredTenantsAdminPage(this.markedId, this.houseDetailsObject);
  final String markedId;
  final HouseDetailsObject houseDetailsObject;
  @override
  State<PreferredTenantsAdminPage> createState() => _PreferredTenantsAdminPageState();
}

class _PreferredTenantsAdminPageState extends State<PreferredTenantsAdminPage> {
  PreferredTenantsObject preferredTenantsObject = PreferredTenantsObject();
  List<String> uni=[];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<PreferredTenantsWatcherBloc>()
                ..add(PreferredTenantsWatcherEvent.watchAllStarted(
                    widget.markedId))),
          BlocProvider<PreferredTenantsBloc>(
            create: (context) => getIt<PreferredTenantsBloc>(),
          ),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<PreferredTenantsBloc, PreferredTenantsState>(
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
            child: BlocBuilder<PreferredTenantsWatcherBloc,
                PreferredTenantsWatcherState>(builder: (context, state) {
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
                  return Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      backgroundColor: Colors.white,
                      iconTheme: IconThemeData(color: Colors.black),
                      title: Text(
                        'Tenant Details',
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
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Enter University Name of students in:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 0.04.sw,
                            ),
                          ),
                        ),
                        Container(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.houseDetailsObject.noOfRooms,
                              scrollDirection: Axis.vertical,
                              physics: AlwaysScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 1.sw,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Text('Room: ${index+1}',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.04.sw,
                                          ),
                                        ),
                                      ),
                                      MyTextFormField(
                                          opacity: 1,
                                          heading: "Name",
                                          initialvalue:state.preferredTenantsObject!.universityList!.elementAt(index),
                                          hintText: 'Enter university Name',
                                          onchanged: (value) {
                                            state.preferredTenantsObject!.universityList![index]=value!;
                                            // state.preferredTenantsObject!.universityList!.insert(index, value!);
                                            // print(state.preferredTenantsObject!.universityList);
                                            print(state.preferredTenantsObject!.universityList!);

                                          },

                                          onFieldsubmitted: (_) =>
                                              FocusScope.of(context)
                                                  .nextFocus(), // focus to next

                                          textAction: TextInputAction.next,
                                          validator: (String? input) {
                                            const NameRegex =
                                                r"^(?=.{1,40}$)[a-zA-Z]+(?:[-'\s][a-zA-Z]+)*$";
                                            if (input!.isEmpty) {
                                              return 'Enter University Name';
                                            }
                                            if (RegExp(NameRegex)
                                                .hasMatch(input)) {
                                            } else {
                                              return "Please Enter a valid university name";
                                            }
                                            return null;
                                          }),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    bottomNavigationBar: Padding(
                      padding: EdgeInsets.all(25),
                      child: GestureDetector(
                        onTap: () {
                          context.read<PreferredTenantsBloc>().add(PreferredTenantsEvent.spaceid(widget.markedId));
                          context.read<PreferredTenantsBloc>().add(PreferredTenantsEvent.userType('admin'));
                          context.read<PreferredTenantsBloc>().add(PreferredTenantsEvent.preferredTenants(state.preferredTenantsObject!));
                          context.read<PreferredTenantsBloc>().add(PreferredTenantsEvent.submitted());
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
}
