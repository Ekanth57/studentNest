import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../homepage.dart';

class EnterOtpPage extends StatefulWidget {
  EnterOtpPage(this.phoneNo,this.verificationId);
  String phoneNo;
  String? verificationId;

  @override
  State<EnterOtpPage> createState() => _EnterOtpPageState();
}

class _EnterOtpPageState extends State<EnterOtpPage> {
  final _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("OTP",
        style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Please Enter OTP",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xff5B5A62),
              fontSize: 0.04.sw,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          OTPTextField(
            key: Key('OTP_box'),
            length: 6,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style: TextStyle(
                fontSize: 17
            ),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) async {
              ///OTP sign in code referenced from
              ///https://medium.com/codechai/firebase-user-authentication-using-phone-verification-in-flutter-c34dc0f7a9f8 login top
              ///https://github.com/themaaz32/firebase_user_login/blob/master/lib/screens/LoginScreen.dart
              print("verfication id---2---->${widget.verificationId}");
              FirebaseAuth _auth = FirebaseAuth.instance;

              AuthCredential credential = PhoneAuthProvider.credential(verificationId: widget.verificationId!, smsCode: pin);

              UserCredential result = await _auth.signInWithCredential(credential);

              User user = result.user!;

              if(user != null){
                sharedPreferenceForLogin();
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('logged', true);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomePage())
                );
              }else{
                print("Error");
              }
            },
          )
        ],
      ),
    );
  }


Future<bool> loginUser(String phone,String pin,BuildContext context) async{
  FirebaseAuth _auth = FirebaseAuth.instance;
  print("inside loginuser---${phone}");
  _auth.verifyPhoneNumber(
    phoneNumber: phone,
    timeout: Duration(seconds: 60),
    verificationCompleted: (AuthCredential credential) async{

      UserCredential result = await _auth.signInWithCredential(credential);

      User user = result.user!;

      if(user != null){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => HomePage()
        ));
      }else{
        print("Error");
      }

      //This callback would gets called when verification is done auto maticlly
    },
    verificationFailed: (FirebaseAuthException exception){
      print(exception);
    },
    codeSent: (String verificationId, int? forceResendingToken) async {
      final code = _codeController.text.trim();

      AuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode:pin );

      UserCredential result = await _auth.signInWithCredential(credential);

      User user = result.user!;

      if(user != null){
        sharedPreferenceForLogin();
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('logged', true);
        prefs.setBool('admin', false);

        Navigator.push(context, MaterialPageRoute(
            builder: (context) => HomePage())
        );
      }else{
        print("Error");
      }
    },
    codeAutoRetrievalTimeout: (String verificationId) {},
  );
  return true;
}
sharedPreferenceForLogin() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('logged', true);
  prefs.setBool('admin', false);

}

}
