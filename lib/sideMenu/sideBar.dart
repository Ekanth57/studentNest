import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentnest/settings/settings_page.dart';

import '../authentication/authentication_file.dart';
import '../chat/presentation/userChat.dart';
import '../commanWidgets/addPropertyTandC.dart';
import '../listProperty/presentation/listProperties.dart';


///Side bar Code referenced from https://oflutter.com/create-a-sidebar-menu-in-flutter/
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'StudentNest',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: AssetImage('assets/images/cover.jpg'))
            ),
          ),
          ListTile(
            leading: Icon(Icons.house_outlined),
            title:  Text(tr('addProperty')),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListProperties()),
              )
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text(tr('settings')),
            onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage(prefs.getString('language')==null?'English':prefs.getString('language'))),
              );
            },
          ),
          ListTile(
            key: const Key('logout'),
            leading: Icon(Icons.exit_to_app),
            title: Text(tr('logout')),
            onTap: () async {

              sharedPreferenceForLogout();
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('logged', false);
              prefs.setBool('admin', false);
              if(auth.currentUser!.providerData.first.providerId=='google.com'){
                await googleSignIn.signOut();
              }
              await auth.signOut();
            analytics.logEvent(name: 'signout',parameters:null);

            Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AuthenticationPage()));
            },
          ),
        ],
      ),
    );
  }
  sharedPreferenceForLogout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('logged', false);
    prefs.setBool('admin', false);

  }
}
