import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studentnest/contactDetails/presentation/initialContactDetailsPage.dart';

class AddProperty extends StatefulWidget {
  const AddProperty({Key? key}) : super(key: key);

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: .1.sw,),
          Align(
            alignment: Alignment.topLeft,
            child:Icon(Icons.arrow_back) ,
          ),
          Container(
            width: 1.sw,
            height: 1.sw,
            child: SvgPicture.asset(
              "assets/svg/add_property.svg",
              alignment: Alignment.center,
              fit: BoxFit.fitWidth,
              width: .4.sw,
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(.05.sw),
            child: GestureDetector(
              child: Container(
                width: 1.sw,
                height: .12.sw,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    'Add Property',
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Theme.of(context).textTheme.headline6!.color,
                    ),
                  ),
                ),
              ),
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InitialContactDetailsPage()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
