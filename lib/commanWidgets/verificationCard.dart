import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class VerificationCard extends StatelessWidget {
  const VerificationCard({
    required this.heading,
    required this.border,
    required this.onTapButton,
    required this.visibility,
    Key? key}) : super(key: key);

  final Border border;
  final String? heading;
  final Function? onTapButton;
  final bool? visibility;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Container(
            width: 0.9.sw,
            height: .15.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: border,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(
                    child: Text(heading!,
                    style: TextStyle(
                      fontSize: .045.sw,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(
                    child: Visibility(
                        visible:visibility!,
                        replacement: Container(
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
                          child: const Center(
                            child: Text('Not Verified'),
                          ),
                        ),
                        child: Container(
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
                            child: Text('Verified'),
                          ),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      onTap: onTapButton!(),
    );
  }
}
