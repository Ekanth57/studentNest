
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentnest/authentication/adminLogin.dart';
import 'package:studentnest/authentication/otp_login.dart';
import 'package:studentnest/authentication/signup_file.dart';
import 'package:studentnest/commanWidgets/textFormFeild.dart';

import '../homepage.dart';
import 'otp_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'GB';
  PhoneNumber number = PhoneNumber(isoCode: 'GB');
  String email = "";
  String password = "";
  String? phoneNumber="";
  final FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
///Google sign in code referenced from https://firebase.flutter.dev/docs/auth/social/
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential).whenComplete(() async {
      sharedPreferenceForLogin();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('logged', true);
      prefs.setBool('admin', false);
      analytics.setAnalyticsCollectionEnabled(true);
      analytics.logEvent(name: 'google_login',parameters: {"email":googleUser!.email});

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage()),
      );
    });
  }

  String selectedLanguage = 'en'; // Default language

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(750, 1334));
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: formKey,
          child: Container(
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: InternationalPhoneNumberInput(
                        key: const Key("otp_field"),
                        onInputChanged: (PhoneNumber number) {
                          phoneNumber=number.phoneNumber;
                          },
                        hintText: 'Phone Number',
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

                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      key:const Key("otp"),
                      child: Container(
                        width: .5.sw,
                        height: .13.sw,
                        decoration: BoxDecoration(
                            color: Color(0xff3E3B3A),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: .1.sw,
                              height: .1.sw,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Icon(
                                Icons.phone,
                                size: .06.sw,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Login with OTP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: .04.sw,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                    if (formKey.currentState!.validate()) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => EnterOtpPage(phoneNumber!)),
                        // );
                      loginUser(phoneNumber!, context);
                      }
                      }
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        width: .5.sw,
                        height: .13.sw,
                        decoration: BoxDecoration(
                            color: Color(0xff3E3B3A),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: .1.sw,
                              height: .1.sw,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
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
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/images/google_logo.png",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Google Sign in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: .04.sw,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        signInWithGoogle();
                        //signup(context);
                      },
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    GestureDetector(
                      key: const Key('admin'),
                        child: Container(
                          width: .5.sw,
                          height: .13.sw,
                          decoration: BoxDecoration(
                              color: Color(0xff3E3B3A),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset:
                                  Offset(0, 4), // changes position of shadow
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: .1.sw,
                                height: .1.sw,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Icon(
                                  Icons.admin_panel_settings_outlined,
                                  size: .06.sw,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Login as admin',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: .04.sw,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        onTap: () async {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => AdminLoginPage()
                          ));
                        }
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///OTP sign in code referenced from
  ///https://medium.com/codechai/firebase-user-authentication-using-phone-verification-in-flutter-c34dc0f7a9f8 login top
  ///https://github.com/themaaz32/firebase_user_login/blob/master/lib/screens/LoginScreen.dart
  Future<Widget> loginUser(String phone,BuildContext context) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.verifyPhoneNumber(
      phoneNumber: phone,
      timeout: Duration(seconds: 60),
      codeSent: (String verificationId, int? forceResendingToken) async {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => EnterOtpPage(phoneNumber!,verificationId)),);},
      verificationFailed: (FirebaseAuthException exception){
        print(exception);
      },
      verificationCompleted: (AuthCredential credential) async{
        UserCredential result = await auth.signInWithCredential(credential);
        User user = result.user!;
        if(user != null){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => HomePage()
          ));
        }
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    return Container();
  }
  sharedPreferenceForLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('logged', true);
    prefs.setBool('admin', false);

  }
}

