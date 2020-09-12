//import 'package:first_app/abrachat.dart';

import 'package:first_app/nick.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Launch1 extends StatefulWidget {
  Launch1({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<Launch1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: Container(
          height: 167,
          child: Transform.scale(
            scale: 1.2,
            child: new FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: const Icon(Icons.arrow_downward),
              backgroundColor: Colors.lightGreenAccent[700],
              foregroundColor: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: const Color(0xffffffff),
        body: Stack(children: <Widget>[
          Transform.translate(
            offset: Offset(73.0, 430.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Gilroy ☞',
                  fontSize: 45,
                  color: Colors.green,
                ),
                children: [
                  TextSpan(
                    text: 'Hey! I\'m',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: ' Abra',
                    style: TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(61.8, 502.0),
            child: SizedBox(
              width: 290.0,
              child: Text(
                'I\'m here to help you de-stress\nand nurture yourself',
                style: TextStyle(
                  fontFamily: 'Gilroy ☞',
                  fontSize: 18,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 207,
                right: 94,
                width: 221,
                height: 213,
                child: Image.asset(
                  _PATH01,
                  //fit: BoxFit.fitWidth,
                ),
              )
            ],
          )
        ]));
    throw UnimplementedError();
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Nick(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

const _PATH01 = "assets/LaunchP.png";
