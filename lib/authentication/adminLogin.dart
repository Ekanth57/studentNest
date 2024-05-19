
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
import 'package:studentnest/authentication/otp_login.dart';
import 'package:studentnest/authentication/signup_file.dart';
import 'package:studentnest/commanWidgets/textFormFeild.dart';

import '../admin/propertyCards/presentation/adminPropertyDetailsPage.dart';
import '../homepage.dart';
import 'otp_page.dart';

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({Key? key}) : super(key: key);

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  String email = "";
  String password = "";
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(750, 1334));
    return Scaffold(
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
                  Text("Admin Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: .06.sw,

                  ),
                  ),
                  MyTextFormField(
                    refkey: Key('email'),
                    hintText: 'Email',
                    onchanged: (String? value){
                      email!=value;
                    },
                    validator: (String? value) {
                      email = value!;
                      const pattern =
                          r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
                      RegExp regExp = new RegExp(pattern);
                      if (value.isEmpty) {
                        return 'Enter Your Email';
                      } else if (!regExp.hasMatch(value)) {
                        return 'Invalid  Email';
                      }
                      return null;
                    },
                  ),
                  MyTextFormField(
                    refkey: Key('password'),

                    hintText: 'Password',
                    isPassword: true,
                    validator: (String? value) {
                      password=value!;
                      const pattern = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
                      RegExp regExp = new RegExp(pattern);
                      if (value.isEmpty) {
                        return 'Enter Your password';
                      } else if (!regExp.hasMatch(value)) {
                        return 'Invalid  password';
                      }
                      return null;
                    },
                    onchanged: (String? value){
                      password!=value;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  )



                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: GestureDetector(
          key: Key('button'),
          onTap: () async {
              if (formKey.currentState!.validate()) {
                try {
                  ///code referenced from https://firebase.flutter.dev/docs/auth/usage/
                  await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                    email: email,
                    password: password,
                  )
                      .then((value) async {
                    sharedPreferenceForLogin();
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('logged', true);
                    prefs.setBool('admin', true);
                    analytics.logEvent(name: 'admin_login',parameters:null);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AdminPropertiesListPage()));
                  });
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    Fluttertoast.showToast(
                        msg: 'No user found for that email.',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1);
                  } else if (e.code == 'wrong-password') {
                    Fluttertoast.showToast(
                        msg: 'Email Id or password is incorrect!',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1);
                  }
                }
              }
          },
          child: Container(
            width: 1.sw,
            height: .12.sw,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey,
            ),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 30.sp,
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
sharedPreferenceForLogin() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('logged', true);
  prefs.setBool('admin', true);

}

