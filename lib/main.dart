import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentnest/authentication/authentication_file.dart';
import 'package:studentnest/notification.dart';
import 'package:studentnest/router/router.gr.dart';
import 'package:http/http.dart' as http;
import 'admin/propertyCards/presentation/adminPropertyDetailsPage.dart';
import 'homepage.dart';
import 'injection.dart';
import 'listProperty/presentation/listProperties.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


Future<void> _firebaseBackgroundMessageHandler(RemoteMessage message) async{
  print('handling background msg${message.messageId}');
}


Future<void> main() async {
  configureInjection(Environment.dev);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseMessaging.instance.getInitialMessage();
  await EasyLocalization.ensureInitialized();

  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessageHandler);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) =>   runApp(EasyLocalization(
    supportedLocales: [Locale('en', 'US'), Locale('hi', 'IN'), Locale('es','SP'), Locale('fr','FR')],
    path: 'assets/l10n', // Path to your language files
    fallbackLocale: Locale('en', 'US'),
    child: MyApp(),
  )));
  getIt.registerSingleton<Routera>(Routera());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static FirebaseAnalytics analytics=FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer=FirebaseAnalyticsObserver(analytics: analytics);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String? mtoken='';

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  @override
  void initState() {

    requestPermission();
    // getToken();
    initInfo();
    super.initState();
  }

  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );


    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('-------------User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('--------------User granted provisional permission');
    } else {
    }
  }
  void getToken() async {
    await FirebaseMessaging.instance.getToken().then((token) {
      setState(() {
        mtoken = token;
        print(token);
      });
      saveToken(token!);
    });
  }

  void saveToken(String token)async{
    FirebaseAuth auth = FirebaseAuth.instance;
    String user = auth.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user)
        .set({
      'tokenId': token,
    },SetOptions(merge: true));
  }
    ///Notification code referenced from
   ///https://www.youtube.com/watch?v=AUU6gbDni4Q&t=22s notification  YouTube
  ///https://stackoverflow.com/a/72266463 notofication
  void sendPushMessage(String body, String title, String token) async {
    try {
      await http.post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization':
          'key=AAAAmjKnUaM:APA91bGYE8jup0V12e7lbi4uThvxRzg2wF5iQLS9luqiOn1hgd0jzuUH6jBetcW9LEibdb_tFFA39CM7bx_8Cq9FraQr_Ij_KcG_0_bqdlktu7wnlDc-vXoJBnWpyzy9iHw_0Ew6TDbY',
        },
        body: jsonEncode(
          <String, dynamic>{
            'priority': 'high',
            'data': <String, dynamic>{
              'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              'status': 'done',
              'body': body,
              'title': title,
            },
            'notification': <String, dynamic>{
              'body': body,
              'title': title,
              'android_channel_id':'studentNotification',
            },

            "to": token,
          },
        ),
      );
      print('done');
    } catch (e) {
      print("error push notification");
    }
  }

  initInfo(){
    var androidInitialize = const AndroidInitializationSettings('@mipmap/studentnest');
    var iosInitialize= const DarwinInitializationSettings();
    var initializationSettings=InitializationSettings(android:androidInitialize,iOS: iosInitialize );
    flutterLocalNotificationsPlugin.initialize(initializationSettings,onDidReceiveNotificationResponse:(NotificationResponse notificationResponse){
      try{
        if(notificationResponse.payload != null && notificationResponse.payload!.isNotEmpty){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>ListProperties (),
            ),
          );
        }
      }
      catch(e){
        print(e);
      }
    }
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async{

      BigTextStyleInformation bigTextStyleInformation=BigTextStyleInformation(
        message.notification!.body.toString(),htmlFormatBigText: true,
        contentTitle: message.notification!.title.toString(),htmlFormatContentTitle: true,
      );

      AndroidNotificationDetails androidPlatformChanelSpecifications=AndroidNotificationDetails(
        'studentNotification', 'studentNotification',importance: Importance.high,
        styleInformation: bigTextStyleInformation,priority: Priority.high,playSound: true,
      );

      NotificationDetails platformChanelSpecifics = NotificationDetails(android: androidPlatformChanelSpecifications,
          iOS: const DarwinNotificationDetails()
      );
      await flutterLocalNotificationsPlugin.show(0, message.notification!.title, message.notification!.body,
          platformChanelSpecifics,payload: message.data['title']);

    });

  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (BuildContext context, AsyncSnapshot<SharedPreferences> prefs) {
          var val = prefs.data;
          if (prefs.hasData) {
            if (prefs.hasData) {
              if(val!.getBool('logged') == true && val.getBool('admin') == false){
                return MaterialApp(
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  home:  HomePage(),
                );
              }else if(val.getBool('logged') == true && val.getBool('admin') == true){
                return MaterialApp(
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  home: AdminPropertiesListPage(),
                );
              }

            }
            else MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
                home: AuthenticationPage(),

            );
          }

          return MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              home: AuthenticationPage()
          );
        });
  }
}
