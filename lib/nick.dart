import 'dart:async';

import 'package:first_app/Journals/HomePage.dart';
import 'package:first_app/mainpage1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Nick extends StatefulWidget {
  @override
  _NewUserScreenState createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<Nick>
    with SingleTickerProviderStateMixin {
  SharedPreferences prefs;
  TextEditingController _controller = TextEditingController();
  bool botVisible = false;
  bool intro1Enabled = false;
  bool intro2Enabled = false;
  bool inputSectionEnabled = false;

  Widget inputWidget;

  void startUpJobs(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      botVisible = true;
    });
    Timer(Duration(milliseconds: 1000), () {
      setState(() {
        intro1Enabled = true;
      });
    });

    Timer(Duration(milliseconds: 2300), () {
      setState(() {
        intro2Enabled = true;
      });
    });

    Timer(Duration(milliseconds: 3500), () {
      setState(() {
        inputSectionEnabled = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => startUpJobs(context));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    inputWidget = Column(
      children: <Widget>[
        TextField(
          textCapitalization: TextCapitalization.sentences,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontFamily: "Quicksand",
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.green[200],
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
            hintText: "They call me.....",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.green, width: 5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: Colors.green, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.green, width: 2),
            ),
          ),
          controller: _controller,
        ),
        SizedBox(height: 35),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 60,
            width: 60,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    //gradient: LinearGradient(
                    color: Colors.green,
                    //),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Material(
                  color: Colors.white.withOpacity(0.0),
                  child: InkWell(
                    splashColor: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      if (_controller.text.trim() == "") {
                        return null;
                      }
                      prefs.setString("username", _controller.text);
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(seconds: 1),
                            pageBuilder: (_, __, ___) => mainpage1()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            new Column(
              children: [
                SizedBox(height: 140),
                Positioned(
                    child: Image.asset(
                  _PATH01,
                  width: 169,
                  height: 148,
                )
                    //fit: BoxFit.fitWidth,
                    ),
              ],
            ),
            SizedBox(height: 10),
            AnimatedOpacity(
              opacity: (intro1Enabled) ? 1 : 0,
              duration: Duration(seconds: 1),
              child: Column(
                children: <Widget>[
                  Text(
                    "Hey there!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Quicksand",
                    ),
                  ),
                  Text(
                    "I'm Abra.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Quicksand",
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: intro2Enabled ? 20 : 80,
            ),
            AnimatedOpacity(
              opacity: intro2Enabled ? 1 : 0,
              duration: Duration(seconds: 1),
              child: Text(
                "Our Conversations are Private & \nanonymous,so there is no login.\nJust Choose a nickname and \nwe are good to go.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Quicksand",
                ),
              ),
            ),
            SizedBox(height: 60),
            AnimatedOpacity(
              opacity: inputSectionEnabled ? 1 : 0,
              duration: Duration(seconds: 1),
              child: inputWidget,
            ),
          ],
        ),
      ),
    );
  }
}

const _PATH01 = "assets/smallpan.png";
