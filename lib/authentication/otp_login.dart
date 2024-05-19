import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentnest/authentication/otp_page.dart';

import '../homepage.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();
  String initialCountry = 'GB';
  PhoneNumber number = PhoneNumber(isoCode: 'GB');
  String? phoneNumber="";
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 26,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    phoneNumber=number.phoneNumber;

                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: true,
                  keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
                  inputBorder: OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: ${number.phoneNumber}');
                  },
                ),
              ),

              SizedBox(height: 16,),
              Container(
                width: double.infinity,
                child: FlatButton(
                  child: Text("LOGIN"),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(16),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => EnterOtpPage(phoneNumber!)),
                    // );
                    // loginUser(phoneNumber!, context);
                  },
                  color: Colors.blue,
                ),
              )
            ],
          ),
        )
    );
  }
  Future<bool> loginUser(String phone, BuildContext context) async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
      phoneNumber: phone,
      timeout: Duration(seconds: 60),
      verificationCompleted: (AuthCredential credential) async{
        Navigator.of(context).pop();

        UserCredential result = await _auth.signInWithCredential(credential);

        User user = result.user!;

        if(user != null){
          analytics.logEvent(name: 'Phone_OTP',parameters:null);
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
      codeSent: (String verificationId, int? forceResendingToken){
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                    title: Text("Enter your OTP"),
                    content: Container(
                      width: 1.sw,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextField(
                            controller: _codeController,
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Confirm"),
                        textColor: Colors.white,
                        color: Colors.blue,
                        onPressed: () async{
                          final code = _codeController.text.trim();

                          AuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: code);

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
                      )
                    ],
                  );
            }
        );
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





