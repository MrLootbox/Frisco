//import 'package:bubble/bubble.dart';
//import 'package:first_app/abrachat.dart';
import 'package:first_app/Abra/abrachat.dart';
import 'package:first_app/Appoinment/screens/Appointment_home.dart';
import 'package:first_app/Journals/HomePage.dart';
import 'package:first_app/Journals/SplashScreen.dart';
import 'package:first_app/launch1.dart';

import 'package:first_app/mainpage1.dart';
import 'package:first_app/nick.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_dialogflow/dialogflow_v2.dart';
//import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
