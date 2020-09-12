import 'package:first_app/launch1.dart';
import 'package:first_app/mainpage1.dart';
import 'package:flare_loading/flare_loading.dart';
import 'package:flutter/material.dart';
//import 'package:MindPlane/pages/HomePage.dart';
//import 'package:MindPlane/pages/NewUserScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../nick.dart';
import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var animationOver = false;
  SharedPreferences prefs;

  startUpJobs(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => startUpJobs(context));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            height: 300,
            width: 300,
            child: FlareLoading(
              name: "assets/Loading White Moon.flr",
              startAnimation: "Alarm",
              //loopAnimation: "Alarm",
              endAnimation: "Alarm",
              onSuccess: (data) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => prefs.containsKey("first-time")
                        ? Launch1()
                        : mainpage1(),
                  ),
                );
              },
              onError: (error, stacktrace) {},
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Frisco",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Pacifico",
                  color: const Color(0xff46c611),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Center(
              child: Text(
                "Relax and Take a Deep Breadth",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Pacifico",
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
