import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

import 'listProperty/presentation/listProperties.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  String? mtoken='';

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  @override
  void initState() {

    requestPermission();
    getToken();
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
      print('------------User declined or has not accepted permission');
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


  initInfo(){
    var androidInitialize = const AndroidInitializationSettings('@mipmap/ic_launcher');
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
      catch(e){}
    }
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async{

      print('onmessage----title:${message.notification!.title} onmessagebody----:${message.notification!.body}');

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GestureDetector(
            child: Center(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
            ),
            onTap: ()async{
              FirebaseAuth auth = FirebaseAuth.instance;
              String user = auth.currentUser!.uid;
              DocumentSnapshot snap=
                  await FirebaseFirestore.instance.collection('users').doc(user).get();
              String tokan=snap['tokenId'];
              print(tokan);
              sendPushMessage('sent from app', 'Notification', tokan);
            },
          )
        ],
      ),
    );
  }
}

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
