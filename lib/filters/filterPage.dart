import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studentnest/authentication/otp_page.dart';

import '../commanWidgets/textFormFeild.dart';


class FilterPage extends StatefulWidget {
   FilterPage(this.filterData);
   final FilterData filterData;

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<String>roomType = ["Any","Standard","En-Suit", "Studio"];
  final _formKey = GlobalKey<FormState>();


  FilterData filterData=FilterData('', '', '',false);
  var minRoomsController = TextEditingController(text: '');
  var maxRentController = TextEditingController(text: '');

  @override
  void initState() {
    filterData=widget.filterData;
    maxRentController.text=widget.filterData.maxRent!;
    minRoomsController.text=widget.filterData.minRooms!;
    setState(() {
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Filters',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Max price: ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: .04.sw,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: TextFormField(
                      controller: maxRentController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        hintText:'',
                      ),
                      validator: (String? input) {
                        if (input!.isEmpty) {
                          return 'Enter Price';
                        }
                        return null;
                      }  ,
                      maxLength: 4,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (String? value){
                        filterData.maxRent=value;
                        filterData.filterAdded=true;
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Min no of Rooms: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: .04.sw,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: TextFormField(
                      controller: minRoomsController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        hintText:'',
                      ),
                      validator: (String? input) {
                        if (input!.isEmpty) {
                          return 'Enter No of rooms';
                        }
                        return null;
                      } ,
                      maxLength: 2,
                      keyboardType: TextInputType.number,

                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (String? value){
                        filterData.minRooms=value;
                        filterData.filterAdded=true;
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Room Type: ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: .04.sw,
                    fontWeight: FontWeight.w600
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
                    filterData.roomType=val;
                    filterData.filterAdded=true;
                    setState((){});
                  },
                  choiceItems: C2Choice.listFrom<
                      String, String>(
                    source: roomType,
                    value: (i, v) => v,
                    label: (i, v) => v,
                  ),
                  value:filterData.roomType!,

                )
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.red,width: 2),
                  ),
                  child: const Center(
                    child: Text("Clear Filter",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ),
                ),
                onTap: (){
                  setState(() {
                    filterData.roomType="Any";
                    filterData.minRooms="";
                    filterData.maxRent="";
                    minRoomsController.clear();
                    maxRentController.clear();
                    filterData.filterAdded=false;
                  });

                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () {
            // filterData.minRooms=minRooms;
            // filterData.maxRent=maxRent;
            // filterData.roomType=roomTypeValue;
            // filterData.filterAdded=filterAdded;
              Navigator.pop(context,filterData);
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
                'Done',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Theme.of(context).textTheme.headline6!.color,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class FilterData {
  FilterData(this.maxRent,this.minRooms,this.roomType,this.filterAdded);
  String? maxRent;
  String? minRooms;
  String? roomType;
  bool? filterAdded;
}