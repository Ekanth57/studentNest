
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Color(0xff324D59),
    // iconTheme: IconThemeData(color: iconcolorlight),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
    dividerColor: Colors.grey.withOpacity(0.5),
    accentColor: Colors.white,
    // appBarTheme: AppBarTheme(
    //     iconTheme: IconThemeData(color: Colors.black),
    //     color: Colors.white,
    //     centerTitle: true,
    //     toolbarTextStyle: TextTheme(
    //         headline6: GoogleFonts.sourceSansPro(
    //           fontSize: ScreenUtil().setSp(30),
    //           color: Colors.black,
    //           fontWeight: FontWeight.w500,
    //           fontStyle: FontStyle.normal,
    //           letterSpacing: 0,
    //         )).bodyText2,
    //     titleTextStyle: TextTheme(
    //         headline6: GoogleFonts.sourceSansPro(
    //           fontSize: ScreenUtil().setSp(30),
    //           color: Colors.black,
    //           fontWeight: FontWeight.w500,
    //           fontStyle: FontStyle.normal,
    //           letterSpacing: 0,
    //         )).headline6),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xff5B5A62),
        fontSize: 15,
      ),
      headline2: TextStyle(
        color: Color(0xff2e384d),
        fontSize: ScreenUtil().setSp(28),
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        letterSpacing: 0,
      ),
      // button: TextStyle(
      //   color: Color(0xff2e384d),
      //   fontSize: ScreenUtil().setSp(24),
      //   fontWeight: FontWeight.bold,
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // caption: TextStyle(
      //   color: Colors.black,
      //   fontSize: ScreenUtil().setSp(26),
      //   fontWeight: FontWeight.bold,
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // headline3: TextStyle(
      //   color: Colors.black,
      //   fontSize: ScreenUtil().setSp(28),
      //   fontWeight: FontWeight.w500,
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // headline4: TextStyle(
      //   color: Colors.black,
      //   fontSize: ScreenUtil().setSp(28),
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // headline5: TextStyle(
      //   color: Colors.black,
      //   fontSize: ScreenUtil().setSp(30),
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // subtitle1: TextStyle(
      //   color: Colors.black,
      //   fontSize: ScreenUtil().setSp(30),
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // subtitle2:TextStyle(
      //   color: Colors.black,
      //   fontSize: ScreenUtil().setSp(30),
      //   fontWeight: FontWeight.normal,
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // bodyText1: TextStyle(
      //   color: Colors.black,
      //   fontSize: ScreenUtil().setSp(32),
      //   fontWeight: FontWeight.normal,
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // bodyText2: TextStyle(
      //   color: Colors.black,
      //   fontWeight: FontWeight.w500,
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
      // headline6: TextStyle(
      //   color: Color(0xffFFEBC2),
      //   fontSize: 15,
      //   fontWeight: FontWeight.w500,
      //   fontStyle: FontStyle.normal,
      //   letterSpacing: 0,
      // ),
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xff363636),
    iconTheme: IconThemeData(color: Color(0xfff2f2ef)),
    canvasColor: Color(0xff363636),
    accentColor: Colors.white,
    primaryColor: Color(0xff84c9fb),
    dividerColor: Color(0xff363636),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        color: Color(0xff404040),
        centerTitle: true,
        textTheme: TextTheme(
            headline6: GoogleFonts.sourceSansPro(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              letterSpacing: 0,
            ))),
    textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 0,
        )),
  );
}