import 'dart:async';
import 'dart:math';
import 'package:first_app/Abra/abrachat.dart';
import 'package:first_app/Journals/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Appoinment/screens/Appointment_home.dart';

class mainpage1 extends StatefulWidget {
  @override
  _mainpage1 createState() => _mainpage1();
}

class _mainpage1 extends State<mainpage1> with SingleTickerProviderStateMixin {
  bool starAnimate = true;
  bool backgroundEnabled = false;
  String greetingTime = "";
  String userName = "";

  /// Flare Animation Modes
  String botAnimation = "reposo";
  SharedPreferences prefs;

  void cometFlyAway() {
    setState(() {
      starAnimate = false;
    });
    Timer(Duration(seconds: Random().nextInt(15)), () {
      setState(() {
        starAnimate = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => startUpJobs(context));
  }

  Future startUpJobs(BuildContext context) async {
    var hr = TimeOfDay.fromDateTime(DateTime.now()).hour;
    setState(() {
      if (hr >= 4 && hr < 12) {
        greetingTime = "Morning";
      } else if (hr >= 12 && hr < 18) {
        greetingTime = "Afternoon";
      } else if (hr >= 6 && hr < 20) {
        greetingTime = "Evening";
      } else {
        greetingTime = "Night";
      }
    });

    prefs = await SharedPreferences.getInstance();
    setState(() {
      backgroundEnabled = true;
      if (prefs.containsKey("username")) {
        userName = prefs.getString("username");
      }
    });
    if (prefs.containsKey("first-time")) {
      await prefs.setBool("first-time", false);
    } else {
      await prefs.setBool("first-time", true);
    }
  }

/*class mainpage1 extends StatelessWidget {
  mainpage1({
    Key key,
  }) : super(key: key);

*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(66.0, 210.0),
            child: Container(
              width: 413.0,
              height: 192.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(51.0),
                color: const Color(0xff47c612),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(11, 10),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(66.0, 438.0),
            child: Container(
              width: 413.0,
              height: 191.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(51.0),
                color: const Color(0xff47c612),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(11, 10),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(66.0, 667.0),
            child: Container(
              width: 415.0,
              height: 192.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(51.0),
                color: const Color(0xff47c612),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(11, 10),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 195.0),
            child: Container(
              width: 413.0,
              height: 192.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(51.0),
                color: const Color(0xff47c612),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(11, 10),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 423.0),
            child: Container(
              width: 413.0,
              height: 192.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(51.0),
                color: const Color(0xff47c612),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(11, 10),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 652.0),
            child: Container(
              width: 413.0,
              height: 192.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(51.0),
                color: const Color(0xff47c612),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(11, 10),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(90.9, 323.5),
            child: SizedBox(
              width: 71.0,
              height: 12.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(9.7, 0.6, 48.6, 10.6),
                    size: Size(70.5, 11.8),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 48.6, 10.6),
                          size: Size(48.6, 10.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_6re2mr,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 48.6, 10.6),
                          size: Size(48.6, 10.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_qhxcbu,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.5, 2.2, 34.7, 7.6),
                    size: Size(70.5, 11.8),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_tqr3xj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.5, 4.7, 34.7, 4.5),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_dc6qj5,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.5, 5.7, 34.7, 3.2),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_is4gtz,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 3.5, 17.2, 5.9),
                    size: Size(70.5, 11.8),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 17.2, 5.9),
                          size: Size(17.2, 5.9),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_uyvinm,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(49.0, 3.7, 21.5, 4.8),
                    size: Size(70.5, 11.8),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 21.5, 4.8),
                          size: Size(21.5, 4.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_ccux1o,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.3, 1.8, 13.4, 3.3),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_yxllgh,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.4, 1.8, 13.4, 3.3),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_dvrnl2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(46.5, 2.1, 13.4, 3.3),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_5q6uaf,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.0, 0.0, 53.9, 11.8),
                    size: Size(70.5, 11.8),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_eaykfb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.9, 2.9, 18.1, 4.4),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ok9d4i,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.9, 3.8, 6.1, 1.5),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_1wcwf9,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(38.2, 2.9, 18.1, 4.4),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_oosbyx,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(43.3, 3.8, 6.1, 1.5),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ladmec,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.0, 1.6, 53.9, 8.5),
                    size: Size(70.5, 11.8),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_tcugjv,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.0, 2.1, 53.9, 7.4),
                    size: Size(70.5, 11.8),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_idk9ic,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 3.9, 26.2, 1.3),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 4.0, 1.3),
                          size: Size(26.2, 1.3),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.0, 1.3),
                                size: Size(4.0, 1.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_ew0y5n,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.5, 0.2, 1.5, 1.0),
                                size: Size(4.0, 1.3),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_euxxvw,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.3, 0.0, 4.0, 1.3),
                          size: Size(26.2, 1.3),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.0, 1.3),
                                size: Size(4.0, 1.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_2mcrqw,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.5, 0.2, 1.5, 1.0),
                                size: Size(4.0, 1.3),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_o05cl7,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.9, 4.6, 6.4, 1.0),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_mdu4ou,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.9, 4.6, 6.4, 1.0),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_93ufo1,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(29.4, 4.6, 9.0, 1.6),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 9.0, 1.6),
                          size: Size(9.0, 1.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_uozq86,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.3, 9.0, 1.3),
                          size: Size(9.0, 1.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_gvtblo,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.4, 0.1, 4.2, 1.0),
                          size: Size(9.0, 1.6),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_5bil5b,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.3, 4.5, 24.9, 5.5),
                    size: Size(70.5, 11.8),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_oy2ziz,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.3, 6.3, 24.9, 3.7),
                    size: Size(70.5, 11.8),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_i760kl,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.7, 5.1, 18.0, 4.4),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 1.0, 18.0, 3.3),
                          size: Size(18.0, 4.4),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_3912l0,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 2.3, 18.0, 2.1),
                          size: Size(18.0, 4.4),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_pkgq8m,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 2.4, 18.0, 1.9),
                          size: Size(18.0, 4.4),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_trm0cn,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 0.4, 3.9, 1.0),
                          size: Size(18.0, 4.4),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_53y2rh,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_dk9ka5,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_lx8c5o,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.6, 0.4, 3.9, 1.0),
                          size: Size(18.0, 4.4),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_4i6o9f,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_rwvvl3,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_onbhyp,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.6, 0.0, 4.8, 0.7),
                          size: Size(18.0, 4.4),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 1.0),
                                size: Size(4.8, 0.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_nnrit8,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 4.8, 1.0),
                                size: Size(4.8, 0.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_yv0aiz,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.3, 4.8, 1.0),
                                size: Size(4.8, 0.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_aya3b8,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(34.3, 4.5, 24.9, 5.5),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_q7wt1e,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(34.3, 6.3, 24.9, 3.7),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_n6tnz7,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.8, 5.1, 18.0, 4.4),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 1.0, 18.0, 3.3),
                          size: Size(18.0, 4.4),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_3ohbw7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 2.3, 18.0, 2.1),
                          size: Size(18.0, 4.4),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_vw8r0d,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 2.4, 18.0, 1.9),
                          size: Size(18.0, 4.4),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_3ybbuc,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 0.4, 3.9, 1.0),
                          size: Size(18.0, 4.4),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_auwqlc,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_g29pph,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_hig487,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.6, 0.4, 3.9, 1.0),
                          size: Size(18.0, 4.4),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_j2xrrd,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_ulc9yh,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 3.9, 1.0),
                                size: Size(3.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_voeboo,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.6, 0.0, 4.8, 0.7),
                          size: Size(18.0, 4.4),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 1.0),
                                size: Size(4.8, 0.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_q6j61e,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 4.8, 1.0),
                                size: Size(4.8, 0.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_mpnhvv,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.3, 4.8, 1.0),
                                size: Size(4.8, 0.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_mp0u01,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(34.1, 5.6, 1.0, 1.0),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_kacw7a,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(33.8, 6.0, 1.0, 1.0),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ipdcgg,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(27.1, 5.2, 13.6, 1.5),
                    size: Size(70.5, 11.8),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 13.6, 1.5),
                          size: Size(13.6, 1.5),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 13.6, 1.5),
                                size: Size(13.6, 1.5),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 13.6, 1.5),
                                      size: Size(13.6, 1.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_kzxbeh,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.4, 1.1, 6.8, 0.5),
                          size: Size(13.6, 1.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 6.8, 0.5),
                                size: Size(6.8, 0.5),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 6.8, 1.0),
                                      size: Size(6.8, 0.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_lhzldr,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(195.0, 281.0),
            child: SizedBox(
              width: 162.0,
              height: 50.0,
              child: Text(
                'Feeling stressed\nI\'m there for you 😍',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 17,
                  color: const Color(0xff195e20),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(90.6, 558.7),
            child: SizedBox(
              width: 91.0,
              height: 12.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.2, 3.8, 59.3, 4.1),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 59.3, 4.1),
                          size: Size(59.3, 4.1),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_hncnui,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 59.3, 4.1),
                          size: Size(59.3, 4.1),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_txq5qx,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.1, 4.2, 42.3, 3.0),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_bx9kcu,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(54.6, 4.2, 28.8, 1.7),
                    size: Size(91.2, 12.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 28.8, 1.7),
                          size: Size(28.8, 1.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_k5iglk,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(28.1, 0.0, 26.2, 12.0),
                    size: Size(91.2, 12.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.1, 0.0, 19.9, 12.0),
                          size: Size(26.2, 12.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_okieo4,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 5.2, 3.5, 2.2),
                          size: Size(26.2, 12.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_3g0n39,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.0, 5.6, 3.2, 1.0),
                          size: Size(26.2, 12.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_i8ja87,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(24.7, 5.6, 1.5, 1.0),
                          size: Size(26.2, 12.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_a2xlka,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.6, 5.1, 3.5, 2.2),
                          size: Size(26.2, 12.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_2rp7kc,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.6, 6.1, 1.3, 1.0),
                          size: Size(26.2, 12.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_3pc85c,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.7, 6.2, 1.3, 1.0),
                          size: Size(26.2, 12.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_qlhyu7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.2, 6.2, 1.0, 1.0),
                          size: Size(26.2, 12.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_qk5jt9,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.3, 6.2, 1.0, 1.0),
                          size: Size(26.2, 12.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_4g68hj,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.4, 6.3, 1.7, 1.0),
                          size: Size(26.2, 12.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_idzp27,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.1, 5.4, 42.3, 1.8),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_e0ngnm,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.1, 5.9, 42.3, 1.3),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_7px5rd,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.2, 0.6, 16.3, 1.3),
                    size: Size(91.2, 12.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_ma94bw,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.0, 0.6, 16.3, 1.3),
                    size: Size(91.2, 12.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_8fwml7,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(1.2, 0.8, 16.3, 1.3),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_mww97z,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.9, 65.8, 4.6),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_obev2b,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 2.2, 65.8, 3.3),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_vasue7,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 2.6, 65.8, 2.9),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_84kw06,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.6, 5.0, 28.8, 1.6),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 28.8, 1.6),
                          size: Size(28.8, 1.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_ox91o4,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.7, 2.4, 22.1, 1.7),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_x1dyjc,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(65.8, 4.2, 25.4, 2.6),
                    size: Size(91.2, 12.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 25.4, 2.6),
                          size: Size(25.4, 2.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 25.4, 2.6),
                                size: Size(25.4, 2.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.4, 2.6),
                                      size: Size(25.4, 2.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 25.4, 2.6),
                                            size: Size(25.4, 2.6),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(2.96),
                                                  topRight:
                                                      Radius.circular(2.96),
                                                  bottomRight:
                                                      Radius.circular(2.96),
                                                  bottomLeft:
                                                      Radius.circular(2.96),
                                                ),
                                                color: const Color(0x0f010101),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x0f050101)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.8, 0.1, 22.4, 2.5),
                                size: Size(25.4, 2.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 22.4, 2.5),
                                      size: Size(22.4, 2.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 22.4, 2.5),
                                            size: Size(22.4, 2.5),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 22.4, 2.5),
                                                  size: Size(22.4, 2.5),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Transform.rotate(
                                                    angle: 3.1416,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  3.07),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  3.07),
                                                        ),
                                                        color: const Color(
                                                            0x0f010101),
                                                        border: Border.all(
                                                            width: 1.0,
                                                            color: const Color(
                                                                0x0f050101)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.2, 0.0, 1.5, 2.6),
                                size: Size(25.4, 2.6),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 1.5, 2.6),
                                      size: Size(1.5, 2.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 1.5, 2.6),
                                            size: Size(1.5, 2.6),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 1.5, 2.6),
                                                  size: Size(1.5, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.29),
                                                      color: const Color(
                                                          0x0f010101),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0x0f050101)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.1, 0.0, 1.3, 2.6),
                                      size: Size(1.5, 2.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinLeft: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_taviep,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.2, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinLeft: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_of0i2s,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.3, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_vu7r4k,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.5, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_70gbzp,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.6, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_4z21jb,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.8, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_u6c25j,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.9, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_a1o8yt,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1.1, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_mhyo6e,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1.2, 0.0, 0.1, 2.6),
                                            size: Size(1.3, 2.6),
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 2.6),
                                                  size: Size(0.1, 2.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0, 0.0, 0.1, 2.6),
                                                        size: Size(0.1, 2.6),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      2.6),
                                                              size: Size(
                                                                  0.1, 2.6),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_gw9gb,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.3, 0.5, 16.0, 1.9),
                          size: Size(25.4, 2.6),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_y5ocyl,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_5tljdi,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.4, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_ij3t4a,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.6, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_a3epnt,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.8, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_yg425l,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_vkhrhk,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.2, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_n4so13,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.4, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_njm1g9,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.6, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_vzb4wq,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.9, 16.0, 1.0),
                                size: Size(16.0, 1.9),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_2nlvol,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.6, 0.2, 4.0, 2.0),
                          size: Size(25.4, 2.6),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Journal',
                            style: TextStyle(
                              fontFamily: 'Gilroy-ExtraBold',
                              fontSize: 1,
                              color: const Color(0x0f010101),
                              height: 2,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(43.9, 2.8, 7.4, 1.0),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_rwcrms,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.7, 2.4, 22.1, 1.7),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_jy0ser,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.1, 2.8, 7.4, 1.0),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_g24210,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.7, 2.9, 32.0, 0.5),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(27.2, 0.0, 4.8, 0.5),
                          size: Size(32.0, 0.5),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 1.0),
                                size: Size(4.8, 0.5),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_qfms89,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.4, 0.1, 1.8, 1.0),
                                size: Size(4.8, 0.5),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_v2u9eu,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 0.5),
                          size: Size(32.0, 0.5),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 1.0),
                                size: Size(4.8, 0.5),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_64wh8m,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.4, 0.1, 1.8, 1.0),
                                size: Size(4.8, 0.5),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_1pb8py,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(45.9, 3.5, 7.8, 1.0),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_zgaczh,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.7, 3.5, 7.8, 1.0),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_8gmzvc,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(27.4, 3.7, 11.0, 0.6),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 11.0, 1.0),
                          size: Size(11.0, 0.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_rxwki3,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.1, 11.0, 1.0),
                          size: Size(11.0, 0.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_cy5uhy,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.9, 0.0, 5.1, 1.0),
                          size: Size(11.0, 0.6),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_t4nw66,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(35.0, 6.4, 30.4, 2.1),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_rbalzv,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(35.0, 7.1, 30.4, 1.4),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_1avf92,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(39.2, 6.6, 22.0, 1.7),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.4, 22.0, 1.3),
                          size: Size(22.0, 1.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_i0ap23,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.9, 22.0, 1.0),
                          size: Size(22.0, 1.7),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_o8yp0z,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.9, 22.0, 1.0),
                          size: Size(22.0, 1.7),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_xkfgzo,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.3, 0.2, 4.7, 0.4),
                          size: Size(22.0, 1.7),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_xlng70,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_qktuou,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_vxcvae,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 0.2, 4.7, 0.4),
                          size: Size(22.0, 1.7),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_oz7f8q,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_io3ky0,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_z3niwq,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.0, 0.0, 5.9, 0.3),
                          size: Size(22.0, 1.7),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 5.9, 1.0),
                                size: Size(5.9, 0.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_ndnkyq,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 5.9, 1.0),
                                size: Size(5.9, 0.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_u5f1nw,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 5.9, 1.0),
                                size: Size(5.9, 0.3),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_rsmisb,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 6.4, 30.4, 2.1),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_cfaamq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 7.1, 30.4, 1.4),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_k56j13,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.2, 6.6, 22.0, 1.7),
                    size: Size(91.2, 12.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.4, 22.0, 1.3),
                          size: Size(22.0, 1.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_s2r60j,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.9, 22.0, 1.0),
                          size: Size(22.0, 1.7),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_phvzkz,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.9, 22.0, 1.0),
                          size: Size(22.0, 1.7),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_sln5h9,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.3, 0.2, 4.7, 0.4),
                          size: Size(22.0, 1.7),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_hkl3ld,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_2m4k4b,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_tozos0,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 0.2, 4.7, 0.4),
                          size: Size(22.0, 1.7),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_7nun3r,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_ed8bia,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 4.7, 1.0),
                                size: Size(4.7, 0.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_m1zzc5,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.0, 0.0, 5.9, 0.3),
                          size: Size(22.0, 1.7),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 5.9, 1.0),
                                size: Size(5.9, 0.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_sk6g4,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 5.9, 1.0),
                                size: Size(5.9, 0.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_nvsvrn,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.1, 5.9, 1.0),
                                size: Size(5.9, 0.3),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_e7u90b,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.7, 4.3, 1.0, 1.0),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_srlrgq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(33.1, 4.7, 1.0, 1.0),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_118ye0,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(24.6, 4.4, 16.6, 0.6),
                    size: Size(91.2, 12.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 16.6, 0.6),
                          size: Size(16.6, 0.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.6, 0.6),
                                size: Size(16.6, 0.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 16.6, 1.0),
                                      size: Size(16.6, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_dj4ou5,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.2, 0.4, 8.3, 0.2),
                          size: Size(16.6, 0.6),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 8.3, 0.2),
                                size: Size(8.3, 0.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 8.3, 1.0),
                                      size: Size(8.3, 0.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_24332h,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(85.7, 241.9),
            child: SizedBox(
              width: 78.0,
              height: 92.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.8, 36.1, 54.0, 48.1),
                    size: Size(78.5, 91.6),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 54.0, 48.1),
                          size: Size(54.0, 48.1),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_6gegp9,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 54.0, 48.0),
                          size: Size(54.0, 48.1),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_kh6wa0,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(17.2, 41.5, 38.6, 34.3),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_vd9vjg,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(17.2, 55.4, 38.6, 20.4),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_a7t98d,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(17.2, 61.2, 38.6, 14.6),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_r9temy,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 47.7, 19.2, 26.5),
                    size: Size(78.5, 91.6),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 19.2, 26.5),
                          size: Size(19.2, 26.5),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_hfga4u,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(54.5, 39.7, 24.0, 21.9),
                    size: Size(78.5, 91.6),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 21.9),
                          size: Size(24.0, 21.9),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_c7499b,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.5, 0.0, 14.9, 14.8),
                    size: Size(78.5, 91.6),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_raty1b,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.7, 0.0, 14.9, 14.8),
                    size: Size(78.5, 91.6),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_6d0j3o,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(51.8, 1.5, 14.9, 14.8),
                    size: Size(78.5, 91.6),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_oxhd78,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.8, 3.2, 60.0, 53.4),
                    size: Size(78.5, 91.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_3d6uyl,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.3, 20.1, 20.1, 19.8),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_d6gagr,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 25.4, 6.7, 6.9),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_z51col,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(42.5, 20.1, 20.1, 19.8),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_6ieyo0,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(48.1, 25.4, 6.7, 6.9),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ypofc5,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.8, 17.8, 60.0, 38.7),
                    size: Size(78.5, 91.6),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_ykk5kt,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.8, 22.8, 60.0, 33.6),
                    size: Size(78.5, 91.6),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_q3ovck,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(23.3, 25.6, 29.2, 5.7),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 4.4, 5.7),
                          size: Size(29.2, 5.7),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.4, 5.7),
                                size: Size(4.4, 5.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_78iy58,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.6, 1.0, 1.6, 2.1),
                                size: Size(4.4, 5.7),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_ky5tbb,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(24.8, 0.0, 4.4, 5.7),
                          size: Size(29.2, 5.7),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.4, 5.7),
                                size: Size(4.4, 5.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_8j2qgo,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.6, 1.0, 1.6, 2.1),
                                size: Size(4.4, 5.7),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_cgcsxb,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.8, 32.6, 7.1, 2.4),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_tum9jb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(50.0, 32.6, 7.1, 2.4),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_7bg7uy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.8, 35.0, 10.0, 7.0),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 10.0, 7.0),
                          size: Size(10.0, 7.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_f72nff,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 1.4, 10.0, 5.7),
                          size: Size(10.0, 7.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_rs21pz,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.7, 0.5, 4.7, 1.2),
                          size: Size(10.0, 7.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_liskfr,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.1, 66.9, 27.7, 24.7),
                    size: Size(78.5, 91.6),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ot75rs,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.1, 74.9, 27.7, 16.7),
                    size: Size(78.5, 91.6),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_v9ugro,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.0, 69.4, 20.1, 19.7),
                    size: Size(78.5, 91.6),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 4.7, 20.1, 15.1),
                          size: Size(20.1, 19.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_52wskf,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 10.3, 20.1, 9.4),
                          size: Size(20.1, 19.7),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_95gxd,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 10.9, 20.1, 8.8),
                          size: Size(20.1, 19.7),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_ih809o,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.9, 1.9, 4.3, 4.3),
                          size: Size(20.1, 19.7),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.3, 4.3),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_iyv1sg,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.9, 4.3, 3.5),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_7yt360,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.9, 4.3, 3.4),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_4o9mr3,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(15.1, 1.9, 4.3, 4.3),
                          size: Size(20.1, 19.7),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.3, 4.3),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_bx0apo,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.9, 4.3, 3.5),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_o75x4f,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.9, 4.3, 3.4),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_i5siro,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(7.4, 0.0, 5.4, 2.9),
                          size: Size(20.1, 19.7),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 5.4, 2.9),
                                size: Size(5.4, 2.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_vqcl5t,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.8, 5.4, 2.2),
                                size: Size(5.4, 2.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_edolg8,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.2, 5.4, 1.8),
                                size: Size(5.4, 2.9),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_bq3yef,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(38.2, 66.9, 27.7, 24.7),
                    size: Size(78.5, 91.6),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_nn072b,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(38.2, 74.9, 27.7, 16.7),
                    size: Size(78.5, 91.6),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_yjv02n,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(42.0, 69.4, 20.1, 19.7),
                    size: Size(78.5, 91.6),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 4.7, 20.1, 15.1),
                          size: Size(20.1, 19.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_wdw3g6,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 10.3, 20.1, 9.4),
                          size: Size(20.1, 19.7),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_qsmwvx,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 10.9, 20.1, 8.8),
                          size: Size(20.1, 19.7),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_kr0fqb,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.9, 1.9, 4.3, 4.3),
                          size: Size(20.1, 19.7),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.3, 4.3),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_aqtwo1,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.9, 4.3, 3.5),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_lwscwp,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.9, 4.3, 3.4),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_2mzqxp,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(15.1, 1.9, 4.3, 4.3),
                          size: Size(20.1, 19.7),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.3, 4.3),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_ipuneu,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.9, 4.3, 3.5),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_wov1lr,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.9, 4.3, 3.4),
                                size: Size(4.3, 4.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_933i4h,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(7.4, 0.0, 5.4, 2.9),
                          size: Size(20.1, 19.7),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 5.4, 2.9),
                                size: Size(5.4, 2.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_dm6l6a,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.8, 5.4, 2.2),
                                size: Size(5.4, 2.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_7yya05,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.2, 5.4, 1.8),
                                size: Size(5.4, 2.9),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_q0w7ko,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.9, 42.1, 1.0, 1.0),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_3tarn4,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.6, 46.7, 1.0, 1.0),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_cibbx3,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(30.2, 43.4, 15.2, 6.9),
                    size: Size(78.5, 91.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 15.2, 6.9),
                          size: Size(15.2, 6.9),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.2, 6.9),
                                size: Size(15.2, 6.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 15.2, 6.9),
                                      size: Size(15.2, 6.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_ya0115,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.8, 4.8, 7.5, 2.1),
                          size: Size(15.2, 6.9),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 7.5, 2.1),
                                size: Size(7.5, 2.1),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 7.5, 2.1),
                                      size: Size(7.5, 2.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_gm9u09,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(188.6, 242.0),
            child: SizedBox(
              width: 77.0,
              child: Text(
                'ABRA',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 25,
                  color: const Color(0xfff7f7f7),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(194.8, 467.0),
            child: SizedBox(
              width: 98.0,
              child: Text(
                'Journal',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 25,
                  color: const Color(0xfff7f7f7),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53, 103.0),
            child: SizedBox(
              width: 281.0,
              child: Text((greetingTime != "") ? "Good $greetingTime" : "",
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 35,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left),
            ),
          ),
          Transform.translate(
            offset: Offset(53, 145.0),
            child: SizedBox(
              width: 281.0,
              child: Text(
                "$userName",
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 23,
                  color: const Color(0xff46c611),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(200.0, 514.0),
            child: SizedBox(
              width: 175.0,
              height: 57.0,
              child: Text(
                'Take a note of your Day to Day activites',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 17,
                  color: const Color(0xff195e20),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(47.5, 67.9),
            child: SizedBox(
              width: 28.0,
              height: 9.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 27.5, 1.0),
                    size: Size(27.5, 8.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_9kmzeu,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 8.6, 19.4, 1.0),
                    size: Size(27.5, 8.6),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ateppm,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(90.6, 467.8),
            child: SizedBox(
              width: 91.0,
              height: 100.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.2, 39.6, 59.3, 52.7),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 59.3, 52.7),
                          size: Size(59.3, 52.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_jlt6kn,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 59.3, 52.7),
                          size: Size(59.3, 52.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_ckdkn7,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.1, 45.5, 42.3, 37.6),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_368ufy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(54.6, 45.5, 28.8, 21.4),
                    size: Size(91.2, 100.5),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 28.8, 21.4),
                          size: Size(28.8, 21.4),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_2apl4i,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(27.8, 63.1, 26.6, 10.3),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.2, -5.4, 2.4, 20.2),
                          size: Size(26.6, 10.3),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Transform.rotate(
                            angle: 4.3819,
                            child: Container(
                              color: const Color(0xfff7931e),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.7, 7.0, 2.4, 3.2),
                          size: Size(26.6, 10.3),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Transform.rotate(
                            angle: 4.3819,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.11),
                                  topRight: Radius.circular(2.11),
                                ),
                                color: const Color(0xffc1272d),
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.3, 0.0, 3.2, 2.6),
                          size: Size(26.6, 10.3),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_y73cma,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.1, 0.0, 1.5, 1.1),
                          size: Size(26.6, 10.3),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_6rltg5,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.5, 6.5, 2.4, 2.9),
                          size: Size(26.6, 10.3),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Transform.rotate(
                            angle: 4.3819,
                            child: Container(
                              color: const Color(0xff87867b),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.9, 6.3, 1.3, 2.8),
                          size: Size(26.6, 10.3),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_1zoh63,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.0, 7.0, 1.3, 2.8),
                          size: Size(26.6, 10.3),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_lj6hym,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.5, 7.4, 1.0, 1.6),
                          size: Size(26.6, 10.3),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_o61imx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.6, 7.9, 1.0, 1.6),
                          size: Size(26.6, 10.3),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_5r3a72,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.7, 9.0, 1.7, 1.0),
                          size: Size(26.6, 10.3),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_tgnume,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.1, 60.8, 42.3, 22.4),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_tjmkbz,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.1, 67.2, 42.3, 16.0),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_d38tlg,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.2, 0.0, 16.3, 16.2),
                    size: Size(91.2, 100.5),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_6xoqob,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.0, 0.0, 16.3, 16.2),
                    size: Size(91.2, 100.5),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_xxqt0k,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(1.2, 1.6, 16.3, 16.2),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_y238e7,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 3.5, 65.8, 58.5),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_qwio74,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 19.6, 65.8, 42.4),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_l6hmw,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 25.0, 65.8, 36.8),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_oeva37,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.6, 55.6, 28.8, 20.2),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 28.8, 20.2),
                          size: Size(28.8, 20.2),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_z6rbwv,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.7, 22.0, 22.1, 21.7),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_yu34pr,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(65.8, 45.3, 25.4, 33.3),
                    size: Size(91.2, 100.5),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 25.4, 33.3),
                          size: Size(25.4, 33.3),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 25.4, 33.0),
                                size: Size(25.4, 33.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.4, 33.0),
                                      size: Size(25.4, 33.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 25.4, 33.0),
                                            size: Size(25.4, 33.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(2.96),
                                                  topRight:
                                                      Radius.circular(2.96),
                                                  bottomRight:
                                                      Radius.circular(2.96),
                                                  bottomLeft:
                                                      Radius.circular(2.96),
                                                ),
                                                color: const Color(0xff754c24),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.8, 1.0, 22.4, 31.4),
                                size: Size(25.4, 33.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 22.4, 31.4),
                                      size: Size(22.4, 31.4),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 22.4, 31.4),
                                            size: Size(22.4, 31.4),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 22.4, 31.4),
                                                  size: Size(22.4, 31.4),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Transform.rotate(
                                                    angle: 3.1416,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  3.07),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  3.07),
                                                        ),
                                                        color: const Color(
                                                            0xfff7f6f5),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.2, 0.0, 1.5, 33.3),
                                size: Size(25.4, 33.3),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 1.5, 33.3),
                                      size: Size(1.5, 33.3),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 1.5, 33.3),
                                            size: Size(1.5, 33.3),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 1.5, 33.3),
                                                  size: Size(1.5, 33.3),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.29),
                                                      color: const Color(
                                                          0xfffc6460),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.1, 0.1, 1.3, 33.2),
                                      size: Size(1.5, 33.3),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinLeft: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_iorshg,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.2, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinLeft: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_xfiu3l,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.3, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_nwtkc7,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.5, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_qlhb4i,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.6, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_1r08hi,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.8, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_u124r0,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.9, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_i813k4,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1.1, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_kvt8nv,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1.2, 0.0, 0.1, 33.2),
                                            size: Size(1.3, 33.2),
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 0.1, 33.2),
                                                  size: Size(0.1, 33.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            0.1,
                                                            33.2),
                                                        size: Size(0.1, 33.2),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      1.0,
                                                                      33.2),
                                                              size: Size(
                                                                  0.1, 33.2),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_nt71ma,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.3, 6.8, 16.0, 23.6),
                          size: Size(25.4, 33.3),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_prqv76,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 2.6, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_ne0012,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 5.2, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_j4d3l4,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 7.9, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_yl9m7f,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 10.5, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_rw8tk1,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 13.1, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_jer3eo,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 15.7, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_isztro,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 18.3, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_c9ijgw,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 21.0, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_b322jk,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 23.6, 16.0, 1.0),
                                size: Size(16.0, 23.6),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_lrftx,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.6, 2.3, 4.0, 2.0),
                          size: Size(25.4, 33.3),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Journal',
                            style: TextStyle(
                              fontFamily: 'Gilroy-ExtraBold',
                              fontSize: 1,
                              color: const Color(0xff000000),
                              height: 2,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(43.9, 27.8, 7.4, 7.6),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_yt01cp,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.7, 22.0, 22.1, 21.7),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_r32n5e,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.1, 27.8, 7.4, 7.6),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_htv9o5,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.7, 28.1, 32.0, 6.3),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(27.2, 0.0, 4.8, 6.3),
                          size: Size(32.0, 6.3),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 6.3),
                                size: Size(4.8, 6.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_95ajb8,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.4, 1.1, 1.8, 2.3),
                                size: Size(4.8, 6.3),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_nio2n,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 6.3),
                          size: Size(32.0, 6.3),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 6.3),
                                size: Size(4.8, 6.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_p0mum5,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.4, 1.1, 1.8, 2.3),
                                size: Size(4.8, 6.3),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_nbpi6l,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(45.9, 35.7, 7.8, 2.6),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_t5wvr6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.7, 35.7, 7.8, 2.6),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_92i1ud,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(27.4, 38.4, 11.0, 7.7),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 11.0, 7.7),
                          size: Size(11.0, 7.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_tvv275,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 1.5, 11.0, 6.2),
                          size: Size(11.0, 7.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_vgsvnb,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.9, 0.5, 5.1, 1.3),
                          size: Size(11.0, 7.7),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_hc1m4g,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(35.0, 73.4, 30.4, 27.1),
                    size: Size(91.2, 100.5),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ndlsna,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(35.0, 82.2, 30.4, 18.3),
                    size: Size(91.2, 100.5),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_d4r7ah,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(39.2, 76.2, 22.0, 21.6),
                    size: Size(91.2, 100.5),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 5.1, 22.0, 16.5),
                          size: Size(22.0, 21.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_6xl297,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 11.3, 22.0, 10.3),
                          size: Size(22.0, 21.6),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_wzokan,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 12.0, 22.0, 9.6),
                          size: Size(22.0, 21.6),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_ero5i4,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.3, 2.1, 4.7, 4.7),
                          size: Size(22.0, 21.6),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 4.7),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_2qg4qf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 4.7, 3.8),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_woet0i,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 4.7, 3.8),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_3tjpob,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 2.1, 4.7, 4.7),
                          size: Size(22.0, 21.6),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 4.7),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_yvttf3,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 4.7, 3.8),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_vgg2dm,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 4.7, 3.8),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_byliqx,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.0, 0.0, 5.9, 3.2),
                          size: Size(22.0, 21.6),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 5.9, 3.2),
                                size: Size(5.9, 3.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_ev0bwv,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.8, 5.9, 2.4),
                                size: Size(5.9, 3.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_nexcqh,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.3, 5.9, 2.0),
                                size: Size(5.9, 3.2),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_h2tkra,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 73.4, 30.4, 27.1),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_euk5vh,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 82.2, 30.4, 18.3),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.string(
                        _svg_6qppf2,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.2, 76.2, 22.0, 21.6),
                    size: Size(91.2, 100.5),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 5.1, 22.0, 16.5),
                          size: Size(22.0, 21.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_2hj4jj,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 11.3, 22.0, 10.3),
                          size: Size(22.0, 21.6),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_h1ah1j,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 12.0, 22.0, 9.6),
                          size: Size(22.0, 21.6),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_bri5v,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.3, 2.1, 4.7, 4.7),
                          size: Size(22.0, 21.6),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 4.7),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_fhjafw,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 4.7, 3.8),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_mpvlpb,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 4.7, 3.8),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_2t0m25,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 2.1, 4.7, 4.7),
                          size: Size(22.0, 21.6),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 4.7),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_8f88tc,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 4.7, 3.8),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_yug8tc,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 4.7, 3.8),
                                size: Size(4.7, 4.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_ekdajq,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.0, 0.0, 5.9, 3.2),
                          size: Size(22.0, 21.6),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 5.9, 3.2),
                                size: Size(5.9, 3.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_qquw2x,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.8, 5.9, 2.4),
                                size: Size(5.9, 3.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_nbp0iw,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.3, 5.9, 2.0),
                                size: Size(5.9, 3.2),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_iw5198,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.7, 46.2, 1.0, 1.0),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_x6jum1,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(33.1, 51.2, 1.0, 1.0),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_etrppy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(24.6, 47.6, 16.6, 7.6),
                    size: Size(91.2, 100.5),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 16.6, 7.6),
                          size: Size(16.6, 7.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.6, 7.6),
                                size: Size(16.6, 7.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 16.6, 7.6),
                                      size: Size(16.6, 7.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_k6j1xi,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.2, 5.2, 8.3, 2.3),
                          size: Size(16.6, 7.6),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 8.3, 2.3),
                                size: Size(8.3, 2.3),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 8.3, 2.3),
                                      size: Size(8.3, 2.3),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_t6eg13,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(353.0, 579.0),
            child: SvgPicture.string(
              _svg_sohujk,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(356.0, 351.8),
            child:
                // Adobe XD layer: 'Icon feather-arrow-…' (group)
                SizedBox(
              width: 21.0,
              height: 21.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 10.5, 21.0, 1.0),
                    size: Size(21.0, 21.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_o254qw,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.5, 0.0, 10.5, 21.0),
                    size: Size(21.0, 21.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_h7dv3b,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(203.0, 696.0),
            child: Text(
              'Appointments',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 25,
                color: const Color(0xfff7f7f7),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(92.7, 783.0),
            child: SizedBox(
              width: 78.0,
              height: 15.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 78.3, 15.5),
                    size: Size(78.3, 15.5),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.0, 7.0, 57.0, 7.2),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.2, 0.0, 56.8, 7.2),
                                size: Size(57.0, 7.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_uidsii,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 56.8, 7.2),
                                size: Size(57.0, 7.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_yiwjk6,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 8.9, 20.2, 4.0),
                          size: Size(78.3, 15.5),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 20.2, 4.0),
                                size: Size(20.2, 4.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_hvvgg2,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(58.2, 8.9, 20.2, 4.0),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 20.2, 4.0),
                                size: Size(20.2, 4.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_fqgdzx,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.7, 8.9, 15.5, 2.2),
                          size: Size(78.3, 15.5),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.5, 2.2),
                                size: Size(15.5, 2.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_3ppp3,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.0, 8.8, 15.5, 2.2),
                          size: Size(78.3, 15.5),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.5, 2.2),
                                size: Size(15.5, 2.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_k6bvsj,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(57.8, 8.8, 15.9, 2.2),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.3, 0.1, 15.5, 2.2),
                                size: Size(15.9, 2.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 15.5, 2.2),
                                      size: Size(15.5, 2.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_vz3c9a,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.5, 2.2),
                                size: Size(15.9, 2.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 15.5, 2.2),
                                      size: Size(15.5, 2.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_rq28xl,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.1, 7.2, 20.5, 6.9),
                          size: Size(78.3, 15.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_7izzq,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(47.4, 7.2, 21.4, 7.0),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_2s2ygp,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.1, 7.2, 20.5, 6.9),
                          size: Size(78.3, 15.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_onogjg,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(47.4, 7.2, 21.4, 7.0),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_u969pm,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(32.3, 9.4, 14.7, 2.7),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_e1y8hx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(38.8, 10.4, 1.7, 1.1),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_jdeuaq,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(19.1, 9.4, 20.5, 2.9),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_jc720k,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.5, 9.5, 20.4, 2.7),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_4y8q9v,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.7, 11.3, 1.5, 0.2),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x21000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.7, 11.6, 1.5, 0.2),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x21000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(24.8, 9.1, 10.6, 2.7),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.2, 1.2, 9.4, 1.5),
                                size: Size(10.6, 2.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.7, 0.8, 5.3, 0.8),
                                      size: Size(9.4, 1.5),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 5.2, 0.8),
                                            size: Size(5.3, 0.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 5.2, 1.0),
                                                  size: Size(5.2, 0.8),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_an63bc,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                4.4, 0.6, 0.9, 0.1),
                                            size: Size(5.3, 0.8),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 1.0, 1.0),
                                                  size: Size(0.9, 0.1),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_kia21s,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(5.9, 0.3, 3.5, 0.9),
                                      size: Size(9.4, 1.5),
                                      pinRight: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 3.5, 0.9),
                                            size: Size(3.5, 0.9),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 3.5, 1.0),
                                                  size: Size(3.5, 0.9),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_kuenwy,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1.3, 0.8, 1.0, 0.1),
                                            size: Size(3.5, 0.9),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 1.0, 1.0),
                                                  size: Size(1.0, 0.1),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_rmik5f,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 6.4, 0.8),
                                      size: Size(9.4, 1.5),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 6.4, 1.0),
                                            size: Size(6.4, 0.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_qzpqqb,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 2.9, 1.3),
                                size: Size(10.6, 2.7),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 2.9, 1.3),
                                      size: Size(2.9, 1.3),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_mf5ggd,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.7, 11.9, 1.5, 0.2),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x21000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.2, 1.7, 15.6, 2.2),
                          size: Size(78.3, 15.5),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_zgfxw8,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.4, 1.7, 15.6, 2.2),
                          size: Size(78.3, 15.5),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_wgzoqh,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(48.2, 9.6, 2.9, 1.5),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 2.9, 1.5),
                                size: Size(2.9, 1.5),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_i7i9fa,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(45.2, 11.0, 4.2, 0.6),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.2, 1.0),
                                size: Size(4.2, 0.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_rbkr4v,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.1, 0.2, 2.0, 1.0),
                                size: Size(4.2, 0.6),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_8nbt2,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(54.4, 2.0, 15.6, 2.2),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_srswfq,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(35.7, 9.9, 7.5, 0.6),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 3.9, 1.0),
                                size: Size(7.5, 0.6),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_eka0h6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.8, 0.0, 3.7, 1.0),
                                size: Size(7.5, 0.6),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_chid4v,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(35.6, 10.2, 4.1, 1.1),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_wvo7cp,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.3, 10.2, 4.1, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_nqgor1,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.2, 2.2, 63.0, 8.0),
                          size: Size(78.3, 15.5),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_s5qzua,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(14.0, 4.8, 21.1, 3.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_93ehgi,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.1, 5.6, 7.1, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ziets8,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(44.6, 4.8, 21.1, 3.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_oqalb3,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(50.6, 5.6, 7.1, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_520nqs,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.2, 4.4, 63.0, 5.8),
                          size: Size(78.3, 15.5),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_ftk4ry,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.2, 5.2, 63.0, 5.0),
                          size: Size(78.3, 15.5),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_m4f7uu,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(24.5, 5.6, 30.7, 0.9),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.6, 0.9),
                                size: Size(30.7, 0.9),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.6, 1.0),
                                      size: Size(4.6, 0.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_yy36qc,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.6, 0.1, 1.7, 1.0),
                                      size: Size(4.6, 0.9),
                                      pinLeft: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: SvgPicture.string(
                                        _svg_tn0uoe,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(26.0, 0.0, 4.6, 0.9),
                                size: Size(30.7, 0.9),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.6, 1.0),
                                      size: Size(4.6, 0.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_r98va4,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.6, 0.1, 1.7, 1.0),
                                      size: Size(4.6, 0.9),
                                      pinLeft: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: SvgPicture.string(
                                        _svg_8xw8r3,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(19.8, 6.6, 7.4, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_m1b0jo,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(52.5, 6.6, 7.4, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_571p0r,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(34.4, 7.0, 10.5, 1.1),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 10.5, 1.1),
                                size: Size(10.5, 1.1),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_jy26o9,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.2, 10.5, 1.0),
                                size: Size(10.5, 1.1),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_12txvc,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.8, 0.1, 4.9, 1.0),
                                size: Size(10.5, 1.1),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_1x9nmr,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.5, 11.8, 29.2, 3.7),
                          size: Size(78.3, 15.5),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_xwo2l7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.5, 13.0, 29.2, 2.5),
                          size: Size(78.3, 15.5),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_67jlkc,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.6, 12.2, 21.1, 3.0),
                          size: Size(78.3, 15.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.7, 21.1, 2.3),
                                size: Size(21.1, 3.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_8n9j4c,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.5, 21.1, 1.4),
                                size: Size(21.1, 3.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_f5cce5,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.6, 21.1, 1.3),
                                size: Size(21.1, 3.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_i99f5n,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.9, 0.3, 4.5, 0.6),
                                size: Size(21.1, 3.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_8sx03x,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_33h4zn,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_6vcqak,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.9, 0.3, 4.5, 0.6),
                                size: Size(21.1, 3.0),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_l9fsn,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_pmmlto,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_zewhbh,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.8, 0.0, 5.6, 0.4),
                                size: Size(21.1, 3.0),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 5.6, 1.0),
                                      size: Size(5.6, 0.4),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_91ggfn,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 5.6, 1.0),
                                      size: Size(5.6, 0.4),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_jz575h,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.2, 5.6, 1.0),
                                      size: Size(5.6, 0.4),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_4dla9p,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(40.1, 11.8, 29.2, 3.7),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_mz4mev,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(40.1, 13.0, 29.2, 2.5),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_us7w0z,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(44.2, 12.2, 21.1, 3.0),
                          size: Size(78.3, 15.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.7, 21.1, 2.3),
                                size: Size(21.1, 3.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_rveex3,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.5, 21.1, 1.4),
                                size: Size(21.1, 3.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_33bbik,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.6, 21.1, 1.3),
                                size: Size(21.1, 3.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_tvq9h3,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.9, 0.3, 4.5, 0.6),
                                size: Size(21.1, 3.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_t119t,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_5uenkv,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_ggt2s,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.9, 0.3, 4.5, 0.6),
                                size: Size(21.1, 3.0),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_g0fbg6,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_irpin2,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 4.5, 1.0),
                                      size: Size(4.5, 0.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_wkui4p,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.8, 0.0, 5.6, 0.4),
                                size: Size(21.1, 3.0),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 5.6, 1.0),
                                      size: Size(5.6, 0.4),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_whfvj5,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.1, 5.6, 1.0),
                                      size: Size(5.6, 0.4),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_8crsv6,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.2, 5.6, 1.0),
                                      size: Size(5.6, 0.4),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_x5j930,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.9, 8.1, 1.0, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_rcd6kp,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.5, 8.7, 1.0, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_byce7v,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(31.7, 8.3, 15.9, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.9, 1.0),
                                size: Size(15.9, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 15.9, 1.0),
                                      size: Size(15.9, 1.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 15.9, 1.0),
                                            size: Size(15.9, 1.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_nc1ekn,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(4.0, 0.7, 7.9, 0.3),
                                size: Size(15.9, 1.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 7.9, 0.3),
                                      size: Size(7.9, 0.3),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 7.9, 1.0),
                                            size: Size(7.9, 0.3),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_wr01te,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(38.7, 10.2, 1.9, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_f1ny4x,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.3, 3.7, 55.0, 1.3),
                          size: Size(78.3, 15.5),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_4h6wgr,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(31.3, 0.0, 18.0, 4.0),
                          size: Size(78.3, 15.5),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x21000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(35.3, 2.0, 9.0, 2.0),
                          size: Size(78.3, 15.5),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x21000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(54.1, 11.4, 9.4, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_eeqmgj,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(15.9, 11.5, 9.4, 1.0),
                          size: Size(78.3, 15.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_v28tix,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(91.7, 697.0),
            child: SizedBox(
              width: 78.0,
              height: 101.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 78.3, 101.5),
                    size: Size(78.3, 101.5),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.0, 42.0, 57.0, 50.7),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.2, 0.2, 56.8, 50.5),
                                size: Size(57.0, 50.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_ea4r83,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 56.8, 50.5),
                                size: Size(57.0, 50.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_3p3sz4,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 55.4, 20.2, 27.8),
                          size: Size(78.3, 101.5),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 20.2, 27.8),
                                size: Size(20.2, 27.8),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_jccfo6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(58.2, 55.6, 20.2, 27.8),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 20.2, 27.8),
                                size: Size(20.2, 27.8),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_h4m65q,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.7, 55.4, 15.5, 15.1),
                          size: Size(78.3, 101.5),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.5, 15.1),
                                size: Size(15.5, 15.1),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_fyuqnh,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.0, 54.9, 15.5, 15.1),
                          size: Size(78.3, 101.5),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.5, 15.1),
                                size: Size(15.5, 15.1),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_v3t3p6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(57.8, 54.9, 15.9, 15.6),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.3, 0.5, 15.5, 15.1),
                                size: Size(15.9, 15.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 15.5, 15.1),
                                      size: Size(15.5, 15.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_cv654,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.5, 15.1),
                                size: Size(15.9, 15.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 15.5, 15.1),
                                      size: Size(15.5, 15.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_7lnvzo,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.1, 43.6, 20.5, 48.6),
                          size: Size(78.3, 101.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ozy4hc,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(47.4, 43.2, 21.4, 49.0),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_268j5a,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.1, 43.6, 20.5, 48.6),
                          size: Size(78.3, 101.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_x9fq7l,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(47.4, 43.2, 21.4, 49.0),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_gowgyr,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(32.3, 59.1, 14.7, 19.2),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_drkusd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(38.8, 66.1, 1.7, 8.0),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_py5f2u,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(19.1, 58.6, 20.5, 20.1),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_n0go1b,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.5, 59.6, 20.4, 18.9),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_fpciq6,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.7, 72.1, 1.5, 1.5),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffd0d2d3),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.7, 74.2, 1.5, 1.5),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffd0d2d3),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(24.8, 56.7, 10.6, 18.7),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.2, 8.1, 9.4, 10.6),
                                size: Size(10.6, 18.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.7, 5.3, 5.3, 5.3),
                                      size: Size(9.4, 10.6),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 5.2, 5.3),
                                            size: Size(5.3, 5.3),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 5.2, 5.3),
                                                  size: Size(5.2, 5.3),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_vd8y34,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                4.4, 3.9, 0.9, 0.8),
                                            size: Size(5.3, 5.3),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 1.0, 1.0),
                                                  size: Size(0.9, 0.8),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_1pbd2,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(5.9, 2.1, 3.5, 6.6),
                                      size: Size(9.4, 10.6),
                                      pinRight: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 3.5, 6.6),
                                            size: Size(3.5, 6.6),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 3.5, 6.6),
                                                  size: Size(3.5, 6.6),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_64ed2m,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1.3, 5.8, 1.0, 0.8),
                                            size: Size(3.5, 6.6),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 1.0, 1.0),
                                                  size: Size(1.0, 0.8),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_g6iwrv,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 6.4, 5.7),
                                      size: Size(9.4, 10.6),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 6.4, 5.7),
                                            size: Size(6.4, 5.7),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_iagasc,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 2.9, 9.0),
                                size: Size(10.6, 18.7),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 2.9, 9.0),
                                      size: Size(2.9, 9.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_1vl2kx,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.7, 76.3, 1.5, 1.5),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffd0d2d3),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.2, 5.2, 15.6, 15.5),
                          size: Size(78.3, 101.5),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_ntgu92,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.4, 5.2, 15.6, 15.5),
                          size: Size(78.3, 101.5),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_pddh0,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(48.2, 60.4, 2.9, 10.5),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 2.9, 10.5),
                                size: Size(2.9, 10.5),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_5sy82f,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(45.2, 70.2, 4.2, 4.2),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.2, 4.2),
                                size: Size(4.2, 4.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_56mhmt,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.1, 1.1, 2.0, 2.0),
                                size: Size(4.2, 4.2),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_4wwj5b,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(54.4, 6.8, 15.6, 15.5),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_227cji,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(35.7, 62.4, 7.5, 4.4),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 3.9, 4.4),
                                size: Size(7.5, 4.4),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_elya5a,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.8, 0.0, 3.7, 4.4),
                                size: Size(7.5, 4.4),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_4i1s35,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(35.6, 64.4, 4.1, 7.5),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ksms1t,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.3, 64.4, 4.1, 7.3),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_erj91f,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.2, 8.6, 63.0, 56.1),
                          size: Size(78.3, 101.5),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_15zwwb,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(14.0, 26.3, 21.1, 20.8),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_phfi5w,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.1, 31.9, 7.1, 7.3),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ijo64g,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(44.6, 26.3, 21.1, 20.8),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_goygvb,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(50.6, 31.9, 7.1, 7.3),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_p6h5qg,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.2, 24.0, 63.0, 40.6),
                          size: Size(78.3, 101.5),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_edrtws,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.2, 29.1, 63.0, 35.3),
                          size: Size(78.3, 101.5),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_2iqxi9,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(24.5, 32.1, 30.7, 6.0),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.6, 6.0),
                                size: Size(30.7, 6.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.6, 6.0),
                                      size: Size(4.6, 6.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_mqtrc4,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.6, 1.0, 1.7, 2.2),
                                      size: Size(4.6, 6.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_czwclr,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(26.0, 0.0, 4.6, 6.0),
                                size: Size(30.7, 6.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.6, 6.0),
                                      size: Size(4.6, 6.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_gxo1k8,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.6, 1.0, 1.7, 2.2),
                                      size: Size(4.6, 6.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_httynu,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(19.8, 39.4, 7.4, 2.5),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_chm4fz,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(52.5, 39.4, 7.4, 2.5),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_2k1clq,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(34.4, 42.1, 10.5, 7.4),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 10.5, 7.4),
                                size: Size(10.5, 7.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_a1u0m1,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.4, 10.5, 6.0),
                                size: Size(10.5, 7.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_722ii7,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.8, 0.5, 4.9, 1.2),
                                size: Size(10.5, 7.4),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_hv6hze,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.5, 75.5, 29.2, 25.9),
                          size: Size(78.3, 101.5),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_p7k3gd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.5, 84.0, 29.2, 17.5),
                          size: Size(78.3, 101.5),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_qegm8i,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.6, 78.2, 21.1, 20.7),
                          size: Size(78.3, 101.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 4.9, 21.1, 15.8),
                                size: Size(21.1, 20.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_kpje2j,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 10.8, 21.1, 9.9),
                                size: Size(21.1, 20.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_nqa6kv,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 11.5, 21.1, 9.2),
                                size: Size(21.1, 20.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_xe7tir,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.9, 2.0, 4.5, 4.5),
                                size: Size(21.1, 20.7),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.5, 4.5),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_d45glp,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.9, 4.5, 3.6),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_7l94l4,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.9, 4.5, 3.6),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_30hy6l,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.9, 2.0, 4.5, 4.5),
                                size: Size(21.1, 20.7),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.5, 4.5),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_c2unlh,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.9, 4.5, 3.6),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_wnwq77,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.9, 4.5, 3.6),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_x2dr0,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.8, 0.0, 5.6, 3.1),
                                size: Size(21.1, 20.7),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 5.6, 3.1),
                                      size: Size(5.6, 3.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_u2aqff,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.8, 5.6, 2.3),
                                      size: Size(5.6, 3.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_7rz329,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 1.2, 5.6, 1.9),
                                      size: Size(5.6, 3.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_vybtb1,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(40.1, 75.5, 29.2, 25.9),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ddtts1,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(40.1, 84.0, 29.2, 17.5),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: BlendMask(
                            blendMode: BlendMode.multiply,
                            child: SvgPicture.string(
                              _svg_y2hz43,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(44.2, 78.2, 21.1, 20.7),
                          size: Size(78.3, 101.5),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 4.9, 21.1, 15.8),
                                size: Size(21.1, 20.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_5s9gkq,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 10.8, 21.1, 9.9),
                                size: Size(21.1, 20.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_lsr8ry,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 11.5, 21.1, 9.2),
                                size: Size(21.1, 20.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: BlendMask(
                                  blendMode: BlendMode.multiply,
                                  child: SvgPicture.string(
                                    _svg_73q2t9,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.9, 2.0, 4.5, 4.5),
                                size: Size(21.1, 20.7),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.5, 4.5),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_v641e5,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.9, 4.5, 3.6),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_awigia,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.9, 4.5, 3.6),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_470nyd,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.9, 2.0, 4.5, 4.5),
                                size: Size(21.1, 20.7),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.5, 4.5),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_ndm2vg,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.9, 4.5, 3.6),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_caxjbj,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.9, 4.5, 3.6),
                                      size: Size(4.5, 4.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_pzzjls,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.8, 0.0, 5.6, 3.1),
                                size: Size(21.1, 20.7),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 5.6, 3.1),
                                      size: Size(5.6, 3.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_b7n6f3,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.8, 5.6, 2.3),
                                      size: Size(5.6, 3.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_10ufp4,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 1.2, 5.6, 1.9),
                                      size: Size(5.6, 3.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: BlendMask(
                                        blendMode: BlendMode.multiply,
                                        child: SvgPicture.string(
                                          _svg_ezx0dq,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.9, 49.5, 1.0, 1.0),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_5y5dr2,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.5, 54.3, 1.0, 1.0),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_sgplmu,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(31.7, 50.8, 15.9, 7.2),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 15.9, 7.2),
                                size: Size(15.9, 7.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 15.9, 7.2),
                                      size: Size(15.9, 7.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 15.9, 7.2),
                                            size: Size(15.9, 7.2),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_nzrqra,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(4.0, 5.0, 7.9, 2.2),
                                size: Size(15.9, 7.2),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 7.9, 2.2),
                                      size: Size(7.9, 2.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 7.9, 2.2),
                                            size: Size(7.9, 2.2),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_917j7g,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(38.7, 64.6, 1.9, 1.6),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_pb0kym,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.3, 18.6, 55.0, 9.4),
                          size: Size(78.3, 101.5),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_g1gi5h,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(31.3, 0.0, 18.0, 19.0),
                          size: Size(78.3, 101.5),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff808080),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(35.3, 6.0, 9.0, 10.0),
                          size: Size(78.3, 101.5),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(54.1, 73.2, 9.4, 2.1),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_rfvy7b,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(15.9, 73.2, 9.4, 2.1),
                          size: Size(78.3, 101.5),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ue39q0,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(202.0, 743.0),
            child: SizedBox(
              width: 126.0,
              height: 57.0,
              child: Text(
                'Get a doctor Appointment',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 17,
                  color: const Color(0xff195e20),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
              offset: Offset(53.0, 195.0),
              child: Stack(children: <Widget>[
                Container(
                    width: 413,
                    height: 192,
                    child: InkWell(
                      //behavior: HitTestBehavior.translucent,
                      //splashColor: Colors.lightGreen,
                      // borderRadius: BorderRadius.circular(51),
                      onTap: () {
                        Navigator.of(context).push(_createRouteAbra());
                      },
                    )),
                SizedBox(height: 36),
                Container(
                  width: 413,
                  height: 192,
                  child: InkWell(
                    //behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.of(context).push(_createRouteAbra());
                    },
                  ),
                ),
                SizedBox(height: 36),
                Container(
                  width: 413,
                  height: 192,
                  child: InkWell(
                    //behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.of(context).push(_createRouteAbra());
                    },
                  ),
                )
              ])),
          new Transform.translate(
              offset: Offset(53.0, 423.0),
              child: new Stack(children: <Widget>[
                new Material(
                    color: Colors.white.withOpacity(0.0),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      //splashColor: Colors.lightGreen,
                      //borderRadius: BorderRadius.circular(51),
                      onTap: () {
                        Navigator.of(context).push(_createRouteJour());
                      },
                      child: new Container(width: 413.0, height: 192.0),
                    )),
              ])),
          Transform.translate(
            offset: Offset(53.0, 652.0),
            child: Container(child: InkWell(
              //behavior: HitTestBehavior.translucent,

              //splashColor: Colors.lightGreen,
              // borderRadius: BorderRadius.circular(51),
              onTap: () {
                Navigator.of(context).push(_createRouteDoc());
              },
            )),
          ),
        ],
      ),
    );
    //]));
  }
}

const String _svg_6re2mr =
    '<svg viewBox="0.0 0.0 48.6 10.6" ><path transform="translate(1088.77, -1286.62)" d="M -1040.210327148438 1293.165405273438 C -1040.210327148438 1296.098266601563 -1051.08154296875 1297.2431640625 -1064.49169921875 1297.2431640625 C -1077.90185546875 1297.2431640625 -1088.772827148438 1296.098266601563 -1088.772827148438 1293.165405273438 C -1088.772827148438 1290.232543945313 -1077.90185546875 1286.622314453125 -1064.49169921875 1286.622314453125 C -1051.08154296875 1286.622314453125 -1040.210327148438 1290.232543945313 -1040.210327148438 1293.165405273438 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qhxcbu =
    '<svg viewBox="0.0 0.0 48.6 10.6" ><path transform="translate(1088.77, -1286.86)" d="M -1063.314819335938 1286.866455078125 C -1051.237182617188 1287.068359375 -1041.633056640625 1290.341796875 -1041.633056640625 1293.016479492188 C -1041.633056640625 1295.777587890625 -1051.8671875 1296.855346679688 -1064.49169921875 1296.855346679688 C -1077.1162109375 1296.855346679688 -1087.35009765625 1295.777587890625 -1087.35009765625 1293.016479492188 C -1087.35009765625 1290.341796875 -1077.746215820313 1287.068359375 -1065.668212890625 1286.866455078125 C -1078.53173828125 1287.069091796875 -1088.772827148438 1290.55322265625 -1088.772827148438 1293.399658203125 C -1088.772827148438 1296.332641601563 -1077.90185546875 1297.4775390625 -1064.49169921875 1297.4775390625 C -1051.08154296875 1297.4775390625 -1040.210327148438 1296.332641601563 -1040.210327148438 1293.399658203125 C -1040.210327148438 1290.55322265625 -1050.45166015625 1287.069091796875 -1063.314819335938 1286.866455078125 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tqr3xj =
    '<svg viewBox="15.5 2.2 34.7 7.6" ><path transform="translate(1068.64, -1314.31)" d="M -1018.508178710938 1321.205078125 C -1018.508178710938 1323.298583984375 -1026.267211914063 1324.115478515625 -1035.838256835938 1324.115478515625 C -1045.4091796875 1324.115478515625 -1053.168212890625 1323.298583984375 -1053.168212890625 1321.205078125 C -1053.168212890625 1319.112060546875 -1045.4091796875 1316.53515625 -1035.838256835938 1316.53515625 C -1026.267211914063 1316.53515625 -1018.508178710938 1319.112060546875 -1018.508178710938 1321.205078125 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dc6qj5 =
    '<svg viewBox="15.5 4.7 34.7 4.5" ><path transform="translate(1068.64, -1388.55)" d="M -1019.84375 1393.20458984375 C -1019.73291015625 1393.383544921875 -1019.673217773438 1393.560913085938 -1019.673217773438 1393.73486328125 C -1019.673217773438 1395.687377929688 -1026.91064453125 1396.449584960938 -1035.838256835938 1396.449584960938 C -1044.765625 1396.449584960938 -1052.003540039063 1395.687377929688 -1052.003540039063 1393.73486328125 C -1052.003540039063 1393.560913085938 -1051.94287109375 1393.383544921875 -1051.832275390625 1393.20458984375 C -1052.691772460938 1393.735229492188 -1053.168212890625 1394.282348632813 -1053.168212890625 1394.800170898438 C -1053.168212890625 1396.893432617188 -1045.4091796875 1397.710571289063 -1035.838256835938 1397.710571289063 C -1026.267211914063 1397.710571289063 -1018.508178710938 1396.893432617188 -1018.508178710938 1394.800170898438 C -1018.508178710938 1394.282348632813 -1018.984375 1393.735229492188 -1019.84375 1393.20458984375 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_uyvinm =
    '<svg viewBox="0.0 0.0 17.2 5.9" ><path transform="translate(1148.01, -1351.03)" d="M -1146.2734375 1356.62060546875 C -1144.526733398438 1357.1455078125 -1141.554443359375 1356.769897460938 -1139.735961914063 1356.353149414063 C -1137.234252929688 1355.779907226563 -1136.643188476563 1354.904907226563 -1134.701049804688 1354.2451171875 C -1133.169921875 1353.724975585938 -1131.22705078125 1353.123168945313 -1130.805053710938 1352.46826171875 C -1130.35791015625 1351.773315429688 -1133.304321289063 1351.067626953125 -1135.76904296875 1351.027465820313 C -1139.028564453125 1350.974487304688 -1152.797729492188 1354.65966796875 -1146.2734375 1356.62060546875 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_is4gtz =
    '<svg viewBox="15.5 5.7 34.7 3.2" ><path transform="translate(1068.64, -1419.65)" d="M -1035.838256835938 1428.005615234375 C -1044.948974609375 1428.005615234375 -1052.41162109375 1427.264282226563 -1053.109375 1425.387573242188 C -1053.14453125 1425.490234375 -1053.168212890625 1425.592163085938 -1053.168212890625 1425.69287109375 C -1053.168212890625 1427.7861328125 -1045.4091796875 1428.603149414063 -1035.838256835938 1428.603149414063 C -1026.267211914063 1428.603149414063 -1018.508178710938 1427.7861328125 -1018.508178710938 1425.69287109375 C -1018.508178710938 1425.592163085938 -1018.53125 1425.490234375 -1018.566772460938 1425.387573242188 C -1019.264404296875 1427.264282226563 -1026.727294921875 1428.005615234375 -1035.838256835938 1428.005615234375 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ccux1o =
    '<svg viewBox="0.0 0.0 21.5 4.8" ><path transform="translate(847.73, -1306.82)" d="M -826.4982299804688 1307.304443359375 C -828.0183715820313 1306.738525390625 -830.6427001953125 1306.729858398438 -832.9645385742188 1306.947875976563 C -836.1604614257813 1307.247802734375 -838.046875 1308.004028320313 -840.855712890625 1308.43603515625 C -843.0704956054688 1308.776245117188 -845.7921752929688 1309.154174804688 -847.18505859375 1309.722045898438 C -848.6633911132813 1310.324462890625 -846.9042358398438 1311.20166015625 -844.7906494140625 1311.515869140625 C -838.7260131835938 1312.417602539063 -823.9134521484375 1308.266967773438 -826.4982299804688 1307.304443359375 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yxllgh =
    '<svg viewBox="11.3 1.8 13.4 3.3" ><path transform="translate(1090.19, -1086.18)" d="M -1067.507202148438 1088.370361328125 C -1069.829467773438 1087.733276367188 -1073.026489257813 1087.988647460938 -1075.852172851563 1088.610595703125 C -1078.67724609375 1089.232421875 -1080.061157226563 1089.9853515625 -1077.738525390625 1090.622680664063 C -1075.546020507813 1091.22412109375 -1070.835693359375 1091.506591796875 -1067.938354492188 1091.012817382813 C -1070.530151367188 1091.44091796875 -1074.692504882813 1091.187622070313 -1076.637329101563 1090.654052734375 C -1078.71142578125 1090.0849609375 -1077.475708007813 1089.412841796875 -1074.9521484375 1088.857421875 C -1072.429077148438 1088.302001953125 -1069.574340820313 1088.073974609375 -1067.500366210938 1088.64306640625 C -1065.4267578125 1089.2119140625 -1064.919067382813 1090.362670898438 -1067.442016601563 1090.918090820313 C -1064.616943359375 1090.296142578125 -1065.185180664063 1089.007446289063 -1067.507202148438 1088.370361328125 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dvrnl2 =
    '<svg viewBox="11.4 1.8 13.4 3.3" ><path transform="translate(1089.35, -1086.18)" d="M -1076.738403320313 1090.622680664063 C -1079.060913085938 1089.9853515625 -1077.677124023438 1089.232421875 -1074.851806640625 1088.610595703125 C -1072.026245117188 1087.988647460938 -1068.829345703125 1087.733276367188 -1066.50732421875 1088.370361328125 C -1064.185180664063 1089.007446289063 -1063.616821289063 1090.296142578125 -1066.442016601563 1090.918090820313 C -1069.267456054688 1091.5400390625 -1074.416381835938 1091.259765625 -1076.738403320313 1090.622680664063 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5q6uaf =
    '<svg viewBox="46.5 2.1 13.4 3.3" ><path transform="translate(909.43, -1093.86)" d="M -850.7105102539063 1098.622436523438 C -848.3883056640625 1097.985229492188 -849.7720336914063 1097.232299804688 -852.5970458984375 1096.610473632813 C -855.4226684570313 1095.988525390625 -858.6195678710938 1095.733154296875 -860.94189453125 1096.3701171875 C -863.2638549804688 1097.007446289063 -863.8323364257813 1098.296020507813 -861.0070190429688 1098.91796875 C -858.181640625 1099.539916992188 -853.03271484375 1099.259643554688 -850.7105102539063 1098.622436523438 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_eaykfb =
    '<svg viewBox="7.0 0.0 53.9 11.8" ><path transform="translate(1112.07, -1105.4)" d="M -1051.189819335938 1112.65673828125 C -1051.189819335938 1115.910766601563 -1063.250854492188 1117.180908203125 -1078.12939453125 1117.180908203125 C -1093.0078125 1117.180908203125 -1105.069213867188 1115.910766601563 -1105.069213867188 1112.65673828125 C -1105.069213867188 1109.402709960938 -1093.0078125 1105.39697265625 -1078.12939453125 1105.39697265625 C -1063.250854492188 1105.39697265625 -1051.189819335938 1109.402709960938 -1051.189819335938 1112.65673828125 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ok9d4i =
    '<svg viewBox="11.9 2.9 18.1 4.4" ><path transform="translate(1086.77, -1195.71)" d="M -1074.647338867188 1201.146118164063 C -1075.062866210938 1201.474487304688 -1074.733642578125 1202.065063476563 -1074.060913085938 1202.364013671875 C -1073.402954101563 1202.656616210938 -1072.202758789063 1202.811767578125 -1070.9189453125 1202.887451171875 C -1065.318725585938 1203.217895507813 -1057.541259765625 1202.302368164063 -1056.83203125 1200.793823242188 C -1056.540283203125 1200.171997070313 -1057.095947265625 1199.289794921875 -1059.243896484375 1198.880126953125 C -1063.756591796875 1198.019409179688 -1069.740478515625 1199.2421875 -1072.458618164063 1200.110473632813 C -1073.391967773438 1200.40869140625 -1074.19189453125 1200.78662109375 -1074.647338867188 1201.146118164063 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1wcwf9 =
    '<svg viewBox="18.9 3.8 6.1 1.5" ><path transform="translate(1051.22, -1224.03)" d="M -1032.136352539063 1229.161987304688 C -1031.932861328125 1229.263916015625 -1031.505493164063 1229.314086914063 -1031.06982421875 1229.33984375 C -1030.367065429688 1229.381225585938 -1029.563842773438 1229.364868164063 -1028.817626953125 1229.302001953125 C -1027.54541015625 1229.19482421875 -1026.5556640625 1228.972045898438 -1026.33349609375 1228.651733398438 C -1026.129638671875 1228.357788085938 -1026.642578125 1228.07763671875 -1027.366455078125 1227.950073242188 C -1030.094848632813 1227.46923828125 -1033.193725585938 1228.632934570313 -1032.136352539063 1229.161987304688 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_oosbyx =
    '<svg viewBox="38.2 2.9 18.1 4.4" ><path transform="translate(952.17, -1195.71)" d="M -896.1033935546875 1201.146118164063 C -895.6873779296875 1201.474487304688 -896.0169677734375 1202.065063476563 -896.6896362304688 1202.364013671875 C -897.3480834960938 1202.656616210938 -898.5476684570313 1202.811767578125 -899.8313598632813 1202.887451171875 C -905.4318237304688 1203.217895507813 -913.2089233398438 1202.302368164063 -913.9185180664063 1200.793823242188 C -914.2105712890625 1200.171997070313 -913.6546020507813 1199.289794921875 -911.5068359375 1198.880126953125 C -906.9939575195313 1198.019409179688 -901.010009765625 1199.2421875 -898.292236328125 1200.110473632813 C -897.3587646484375 1200.40869140625 -896.5587768554688 1200.78662109375 -896.1033935546875 1201.146118164063 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ladmec =
    '<svg viewBox="43.3 3.8 6.1 1.5" ><path transform="translate(926.12, -1224.03)" d="M -877.0078125 1229.161987304688 C -877.211181640625 1229.263916015625 -877.6385498046875 1229.314086914063 -878.0741577148438 1229.33984375 C -878.776611328125 1229.381225585938 -879.5803833007813 1229.364868164063 -880.325927734375 1229.302001953125 C -881.5988159179688 1229.19482421875 -882.5885009765625 1228.972045898438 -882.8103637695313 1228.651733398438 C -883.0144653320313 1228.357788085938 -882.50146484375 1228.07763671875 -881.77783203125 1227.950073242188 C -879.04931640625 1227.46923828125 -875.9506225585938 1228.632934570313 -877.0078125 1229.161987304688 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tcugjv =
    '<svg viewBox="7.0 1.6 53.9 8.5" ><path transform="translate(1112.07, -1184.58)" d="M -1056.543334960938 1186.203002929688 C -1054.83935546875 1187.179077148438 -1053.877685546875 1188.213989257813 -1053.877685546875 1189.182373046875 C -1053.877685546875 1192.436279296875 -1064.735473632813 1193.706420898438 -1078.12939453125 1193.706420898438 C -1091.522827148438 1193.706420898438 -1102.380859375 1192.436279296875 -1102.380859375 1189.182373046875 C -1102.380859375 1188.213989257813 -1101.419067382813 1187.179077148438 -1099.715576171875 1186.203002929688 C -1103.077514648438 1187.454223632813 -1105.069213867188 1188.900512695313 -1105.069213867188 1190.22265625 C -1105.069213867188 1193.476684570313 -1093.0078125 1194.746826171875 -1078.12939453125 1194.746826171875 C -1063.250854492188 1194.746826171875 -1051.189819335938 1193.476684570313 -1051.189819335938 1190.22265625 C -1051.189819335938 1188.900512695313 -1053.1806640625 1187.454223632813 -1056.543334960938 1186.203002929688 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ew0y5n =
    '<svg viewBox="0.0 0.0 4.0 1.3" ><path transform="translate(1019.45, -1228.96)" d="M -1015.492309570313 1229.590209960938 C -1015.492309570313 1229.937866210938 -1016.379150390625 1230.220092773438 -1017.472534179688 1230.220092773438 C -1018.566528320313 1230.220092773438 -1019.453247070313 1229.937866210938 -1019.453247070313 1229.590209960938 C -1019.453247070313 1229.242309570313 -1018.566528320313 1228.960205078125 -1017.472534179688 1228.960205078125 C -1016.379150390625 1228.960205078125 -1015.492309570313 1229.242309570313 -1015.492309570313 1229.590209960938 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_euxxvw =
    '<svg viewBox="0.5 0.2 1.5 1.0" ><path transform="translate(1016.85, -1234.15)" d="M -1014.874145507813 1234.605712890625 C -1014.874145507813 1234.734985351563 -1015.204345703125 1234.839965820313 -1015.611328125 1234.839965820313 C -1016.018676757813 1234.839965820313 -1016.348388671875 1234.734985351563 -1016.348388671875 1234.605712890625 C -1016.348388671875 1234.47607421875 -1016.018676757813 1234.37109375 -1015.611328125 1234.37109375 C -1015.204345703125 1234.37109375 -1014.874145507813 1234.47607421875 -1014.874145507813 1234.605712890625 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2mcrqw =
    '<svg viewBox="0.0 0.0 4.0 1.3" ><path transform="translate(882.89, -1228.96)" d="M -878.9254760742188 1229.590209960938 C -878.9254760742188 1229.937866210938 -879.8120727539063 1230.220092773438 -880.9057006835938 1230.220092773438 C -881.9998168945313 1230.220092773438 -882.8861083984375 1229.937866210938 -882.8861083984375 1229.590209960938 C -882.8861083984375 1229.242309570313 -881.9998168945313 1228.960205078125 -880.9057006835938 1228.960205078125 C -879.8120727539063 1228.960205078125 -878.9254760742188 1229.242309570313 -878.9254760742188 1229.590209960938 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_o05cl7 =
    '<svg viewBox="0.5 0.2 1.5 1.0" ><path transform="translate(880.29, -1234.15)" d="M -878.308837890625 1234.605712890625 C -878.308837890625 1234.734985351563 -878.6392211914063 1234.839965820313 -879.0458374023438 1234.839965820313 C -879.4535522460938 1234.839965820313 -879.782958984375 1234.734985351563 -879.782958984375 1234.605712890625 C -879.782958984375 1234.47607421875 -879.4535522460938 1234.37109375 -879.0458374023438 1234.37109375 C -878.6392211914063 1234.37109375 -878.308837890625 1234.47607421875 -878.308837890625 1234.605712890625 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_idk9ic =
    '<svg viewBox="7.0 2.1 53.9 7.4" ><path transform="translate(1112.07, -1211.25)" d="M -1053.9833984375 1213.352172851563 C -1052.734741210938 1214.16259765625 -1052.044677734375 1214.996826171875 -1052.044677734375 1215.786743164063 C -1052.044677734375 1219.040893554688 -1063.723022460938 1220.31103515625 -1078.12939453125 1220.31103515625 C -1092.535400390625 1220.31103515625 -1104.214111328125 1219.040893554688 -1104.214111328125 1215.786743164063 C -1104.214111328125 1214.996826171875 -1103.524169921875 1214.162719726563 -1102.275268554688 1213.352172851563 C -1104.062622070313 1214.302124023438 -1105.069213867188 1215.3037109375 -1105.069213867188 1216.243041992188 C -1105.069213867188 1219.496948242188 -1093.0078125 1220.767211914063 -1078.12939453125 1220.767211914063 C -1063.250854492188 1220.767211914063 -1051.189819335938 1219.496948242188 -1051.189819335938 1216.243041992188 C -1051.189819335938 1215.3037109375 -1052.19580078125 1214.302124023438 -1053.9833984375 1213.352172851563 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mdu4ou =
    '<svg viewBox="16.9 4.6 6.4 1.0" ><path transform="translate(1061.13, -1262.72)" d="M -1037.83203125 1267.577758789063 C -1037.83203125 1267.722412109375 -1039.255004882813 1267.83935546875 -1041.009887695313 1267.83935546875 C -1042.7646484375 1267.83935546875 -1044.18701171875 1267.722412109375 -1044.18701171875 1267.577758789063 C -1044.18701171875 1267.433227539063 -1042.7646484375 1267.316284179688 -1041.009887695313 1267.316284179688 C -1039.255004882813 1267.316284179688 -1037.83203125 1267.433227539063 -1037.83203125 1267.577758789063 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_uozq86 =
    '<svg viewBox="0.0 0.0 9.0 1.6" ><path transform="translate(967.54, -1281.01)" d="M -967.5449829101563 1281.601806640625 C -967.5449829101563 1281.173461914063 -965.5299072265625 1281.006225585938 -963.0430908203125 1281.006225585938 C -960.5565795898438 1281.006225585938 -958.5402221679688 1281.173461914063 -958.5402221679688 1281.601806640625 C -958.5402221679688 1282.030395507813 -960.5565795898438 1282.55810546875 -963.0430908203125 1282.55810546875 C -965.5299072265625 1282.55810546875 -967.5449829101563 1282.030395507813 -967.5449829101563 1281.601806640625 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gvtblo =
    '<svg viewBox="0.0 0.3 9.0 1.3" ><path transform="translate(967.54, -1288.2)" d="M -958.9688110351563 1288.503173828125 C -958.9483642578125 1288.532470703125 -958.9353637695313 1288.562622070313 -958.9353637695313 1288.5947265625 C -958.9353637695313 1289.023315429688 -960.774169921875 1289.550659179688 -963.0430908203125 1289.550659179688 C -965.3115234375 1289.550659179688 -967.1508178710938 1289.023315429688 -967.1508178710938 1288.5947265625 C -967.1508178710938 1288.562622070313 -967.137451171875 1288.532470703125 -967.1171875 1288.503173828125 C -967.3892211914063 1288.58349609375 -967.5449829101563 1288.6806640625 -967.5449829101563 1288.79833984375 C -967.5449829101563 1289.226806640625 -965.5299072265625 1289.75439453125 -963.0430908203125 1289.75439453125 C -960.5565795898438 1289.75439453125 -958.5402221679688 1289.226806640625 -958.5402221679688 1288.79833984375 C -958.5402221679688 1288.6806640625 -958.6965942382813 1288.58349609375 -958.9688110351563 1288.503173828125 Z" fill="#060000" fill-opacity="0.06" stroke="none" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5bil5b =
    '<svg viewBox="2.4 0.1 4.2 1.0" ><path transform="translate(955.21, -1283.61)" d="M -948.6129760742188 1283.844970703125 C -948.6129760742188 1283.917236328125 -949.5526123046875 1283.975708007813 -950.711181640625 1283.975708007813 C -951.8704223632813 1283.975708007813 -952.8092651367188 1283.917236328125 -952.8092651367188 1283.844970703125 C -952.8092651367188 1283.772705078125 -951.8704223632813 1283.714233398438 -950.711181640625 1283.714233398438 C -949.5526123046875 1283.714233398438 -948.6129760742188 1283.772705078125 -948.6129760742188 1283.844970703125 Z" fill="#060000" fill-opacity="0.05" stroke="none" stroke-width="1" stroke-opacity="0.05" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_93ufo1 =
    '<svg viewBox="44.9 4.6 6.4 1.0" ><path transform="translate(917.66, -1262.72)" d="M -866.39404296875 1267.577758789063 C -866.39404296875 1267.722412109375 -867.81640625 1267.83935546875 -869.5711059570313 1267.83935546875 C -871.3256225585938 1267.83935546875 -872.748046875 1267.722412109375 -872.748046875 1267.577758789063 C -872.748046875 1267.433227539063 -871.3256225585938 1267.316284179688 -869.5711059570313 1267.316284179688 C -867.81640625 1267.316284179688 -866.39404296875 1267.433227539063 -866.39404296875 1267.577758789063 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_oy2ziz =
    '<svg viewBox="7.3 4.5 24.9 5.5" ><path transform="translate(1110.56, -1452.09)" d="M -1078.330078125 1459.965454101563 C -1078.330078125 1461.471313476563 -1083.912475585938 1462.059204101563 -1090.7978515625 1462.059204101563 C -1097.683227539063 1462.059204101563 -1103.264892578125 1461.471313476563 -1103.264892578125 1459.965454101563 C -1103.264892578125 1458.459716796875 -1097.683227539063 1456.60595703125 -1090.7978515625 1456.60595703125 C -1083.912475585938 1456.60595703125 -1078.330078125 1458.459716796875 -1078.330078125 1459.965454101563 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3912l0 =
    '<svg viewBox="0.0 1.0 18.0 3.3" ><path transform="translate(1082.13, -1495.11)" d="M -1064.094360351563 1498.186401367188 C -1064.094360351563 1499.105834960938 -1068.131958007813 1499.46484375 -1073.113891601563 1499.46484375 C -1078.094970703125 1499.46484375 -1082.133178710938 1499.105834960938 -1082.133178710938 1498.186401367188 C -1082.133178710938 1497.266967773438 -1078.094970703125 1496.135009765625 -1073.113891601563 1496.135009765625 C -1068.131958007813 1496.135009765625 -1064.094360351563 1497.266967773438 -1064.094360351563 1498.186401367188 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_pkgq8m =
    '<svg viewBox="0.0 2.3 18.0 2.1" ><path transform="translate(1082.13, -1524.95)" d="M -1065.003295898438 1527.22314453125 C -1064.93310546875 1527.317749023438 -1064.894653320313 1527.411499023438 -1064.894653320313 1527.503295898438 C -1064.894653320313 1528.422729492188 -1068.574829101563 1528.781616210938 -1073.113891601563 1528.781616210938 C -1077.653076171875 1528.781616210938 -1081.332397460938 1528.422729492188 -1081.332397460938 1527.503295898438 C -1081.332397460938 1527.411499023438 -1081.294555664063 1527.317749023438 -1081.2236328125 1527.22314453125 C -1081.805541992188 1527.488037109375 -1082.133178710938 1527.7666015625 -1082.133178710938 1528.028198242188 C -1082.133178710938 1528.947387695313 -1078.094970703125 1529.306518554688 -1073.113891601563 1529.306518554688 C -1068.131958007813 1529.306518554688 -1064.094360351563 1528.947387695313 -1064.094360351563 1528.028198242188 C -1064.094360351563 1527.7666015625 -1064.421752929688 1527.488037109375 -1065.003295898438 1527.22314453125 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_53y2rh =
    '<svg viewBox="0.0 0.0 3.9 1.0" ><path transform="translate(1077.19, -1480.83)" d="M -1077.176879882813 1481.5380859375 C -1077.386108398438 1481.91064453125 -1075.529174804688 1481.783447265625 -1074.7763671875 1481.637939453125 C -1074.156372070313 1481.518188476563 -1073.060791015625 1481.254272460938 -1073.393920898438 1481.0283203125 C -1074.228149414063 1480.4619140625 -1077.011962890625 1481.24462890625 -1077.176879882813 1481.5380859375 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dk9ka5 =
    '<svg viewBox="0.0 0.2 3.9 1.0" ><path transform="translate(1077.19, -1485.44)" d="M -1073.407470703125 1485.63037109375 C -1073.633178710938 1485.798828125 -1074.327392578125 1485.961181640625 -1074.7763671875 1486.047729492188 C -1075.405029296875 1486.169189453125 -1076.799682617188 1486.276977539063 -1077.121948242188 1486.092529296875 C -1077.148193359375 1486.112548828125 -1077.167236328125 1486.13134765625 -1077.176879882813 1486.148193359375 C -1077.386108398438 1486.520751953125 -1075.529174804688 1486.393676757813 -1074.7763671875 1486.248046875 C -1074.156372070313 1486.128295898438 -1073.060791015625 1485.8642578125 -1073.393920898438 1485.638427734375 C -1073.398193359375 1485.635620117188 -1073.4033203125 1485.63330078125 -1073.407470703125 1485.63037109375 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lx8c5o =
    '<svg viewBox="0.0 0.2 3.9 1.0" ><path transform="translate(1077.17, -1485.51)" d="M -1073.370971679688 1485.706665039063 C -1073.3740234375 1485.704711914063 -1073.377319335938 1485.703125 -1073.380126953125 1485.701416015625 C -1073.394409179688 1485.902709960938 -1074.2861328125 1486.114624023438 -1074.822875976563 1486.218383789063 C -1075.450073242188 1486.33984375 -1076.83984375 1486.447143554688 -1077.166015625 1486.264526367188 C -1077.18798828125 1486.575805664063 -1075.471435546875 1486.455078125 -1074.75390625 1486.31640625 C -1074.134033203125 1486.196533203125 -1073.038208007813 1485.932495117188 -1073.370971679688 1485.706665039063 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_trm0cn =
    '<svg viewBox="0.0 2.4 18.0 1.9" ><path transform="translate(1082.13, -1528.31)" d="M -1064.72265625 1530.728881835938 C -1064.598999023438 1530.847045898438 -1064.53173828125 1530.964477539063 -1064.53173828125 1531.078369140625 C -1064.53173828125 1531.953369140625 -1068.374145507813 1532.294921875 -1073.113891601563 1532.294921875 C -1077.853759765625 1532.294921875 -1081.6953125 1531.953369140625 -1081.6953125 1531.078369140625 C -1081.6953125 1530.964477539063 -1081.628540039063 1530.847045898438 -1081.504516601563 1530.728881835938 C -1081.90869140625 1530.950561523438 -1082.133178710938 1531.177612304688 -1082.133178710938 1531.393310546875 C -1082.133178710938 1532.312622070313 -1078.094970703125 1532.671630859375 -1073.113891601563 1532.671630859375 C -1068.131958007813 1532.671630859375 -1064.094360351563 1532.312622070313 -1064.094360351563 1531.393310546875 C -1064.094360351563 1531.177612304688 -1064.319091796875 1530.950561523438 -1064.72265625 1530.728881835938 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4i6o9f =
    '<svg viewBox="0.0 0.0 3.9 1.0" ><path transform="translate(999.0, -1480.83)" d="M -995.1593017578125 1481.5380859375 C -994.9505615234375 1481.91064453125 -996.8074951171875 1481.783447265625 -997.56005859375 1481.637939453125 C -998.1802978515625 1481.518188476563 -999.2757568359375 1481.254272460938 -998.9427490234375 1481.0283203125 C -998.1085205078125 1480.4619140625 -995.32421875 1481.24462890625 -995.1593017578125 1481.5380859375 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rwvvl3 =
    '<svg viewBox="0.0 0.2 3.9 1.0" ><path transform="translate(999.0, -1485.44)" d="M -998.9285888671875 1485.63037109375 C -998.7037353515625 1485.798828125 -998.00927734375 1485.961181640625 -997.56005859375 1486.047729492188 C -996.931396484375 1486.169189453125 -995.537109375 1486.276977539063 -995.21435546875 1486.092529296875 C -995.1884765625 1486.112548828125 -995.1689453125 1486.13134765625 -995.1593017578125 1486.148193359375 C -994.9505615234375 1486.520751953125 -996.8074951171875 1486.393676757813 -997.56005859375 1486.248046875 C -998.1802978515625 1486.128295898438 -999.2757568359375 1485.8642578125 -998.9427490234375 1485.638427734375 C -998.9383544921875 1485.635620117188 -998.9334716796875 1485.63330078125 -998.9285888671875 1485.63037109375 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_onbhyp =
    '<svg viewBox="0.0 0.2 3.9 1.0" ><path transform="translate(999.0, -1485.51)" d="M -998.9427490234375 1485.706665039063 C -998.939697265625 1485.704711914063 -998.936767578125 1485.703125 -998.9337158203125 1485.701416015625 C -998.9195556640625 1485.902709960938 -998.028076171875 1486.114624023438 -997.4910888671875 1486.218383789063 C -996.8642578125 1486.33984375 -995.4739990234375 1486.447143554688 -995.1474609375 1486.264526367188 C -995.125732421875 1486.575805664063 -996.8427734375 1486.455078125 -997.56005859375 1486.31640625 C -998.1802978515625 1486.196533203125 -999.2757568359375 1485.932495117188 -998.9427490234375 1485.706665039063 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nnrit8 =
    '<svg viewBox="0.0 0.0 4.8 1.0" ><path transform="translate(1041.41, -1470.5)" d="M -1037.109130859375 1471.00927734375 C -1036.342407226563 1470.88134765625 -1036.474609375 1470.692260742188 -1037.11767578125 1470.580200195313 C -1037.64453125 1470.488159179688 -1039.302001953125 1470.458984375 -1040.329711914063 1470.552734375 C -1041.181762695313 1470.63037109375 -1041.733520507813 1470.765747070313 -1041.198852539063 1470.947509765625 C -1040.38720703125 1471.2236328125 -1038.141357421875 1471.181274414063 -1037.109130859375 1471.00927734375 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yv0aiz =
    '<svg viewBox="0.0 0.2 4.8 1.0" ><path transform="translate(1041.41, -1474.53)" d="M -1036.777954101563 1474.699096679688 C -1036.83154296875 1474.756591796875 -1036.981567382813 1474.812866210938 -1037.247802734375 1474.860961914063 C -1038.210205078125 1475.034301757813 -1040.297729492188 1475.079833984375 -1041.044311523438 1474.804809570313 C -1041.123779296875 1474.775634765625 -1041.174682617188 1474.747802734375 -1041.20458984375 1474.720947265625 C -1041.45556640625 1474.792114257813 -1041.500244140625 1474.880004882813 -1041.197875976563 1474.983032226563 C -1040.386474609375 1475.259033203125 -1038.140625 1475.216796875 -1037.108276367188 1475.044677734375 C -1036.509643554688 1474.94482421875 -1036.46435546875 1474.807983398438 -1036.777954101563 1474.699096679688 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_aya3b8 =
    '<svg viewBox="0.0 0.3 4.8 1.0" ><path transform="translate(1041.4, -1476.58)" d="M -1037.103149414063 1476.991455078125 C -1038.135375976563 1477.16357421875 -1040.381103515625 1477.205810546875 -1041.192749023438 1476.929809570313 C -1041.28076171875 1476.89990234375 -1041.336181640625 1476.871337890625 -1041.368896484375 1476.844116210938 C -1041.442504882813 1476.89990234375 -1041.399780273438 1476.963500976563 -1041.192749023438 1477.033935546875 C -1040.381103515625 1477.31005859375 -1038.135375976563 1477.267700195313 -1037.103149414063 1477.095703125 C -1036.653686523438 1477.020751953125 -1036.519775390625 1476.924926757813 -1036.609619140625 1476.835815429688 C -1036.671142578125 1476.891357421875 -1036.827026367188 1476.945434570313 -1037.103149414063 1476.991455078125 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_i760kl =
    '<svg viewBox="7.3 6.3 24.9 3.7" ><path transform="translate(1110.56, -1494.46)" d="M -1080.14306640625 1500.738159179688 C -1079.582153320313 1501.1162109375 -1079.271240234375 1501.505615234375 -1079.271240234375 1501.87451171875 C -1079.271240234375 1503.380493164063 -1084.432250976563 1503.968017578125 -1090.7978515625 1503.968017578125 C -1097.163452148438 1503.968017578125 -1102.32373046875 1503.380493164063 -1102.32373046875 1501.87451171875 C -1102.32373046875 1501.505615234375 -1102.0126953125 1501.1162109375 -1101.452758789063 1500.738159179688 C -1102.602172851563 1501.24951171875 -1103.264892578125 1501.809448242188 -1103.264892578125 1502.328247070313 C -1103.264892578125 1503.834228515625 -1097.683227539063 1504.421875 -1090.7978515625 1504.421875 C -1083.912475585938 1504.421875 -1078.330078125 1503.834228515625 -1078.330078125 1502.328247070313 C -1078.330078125 1501.809448242188 -1078.993408203125 1501.24951171875 -1080.14306640625 1500.738159179688 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_q7wt1e =
    '<svg viewBox="34.3 4.5 24.9 5.5" ><path transform="translate(971.86, -1452.09)" d="M -912.5894165039063 1459.965454101563 C -912.5894165039063 1461.471313476563 -918.1710205078125 1462.059204101563 -925.0567016601563 1462.059204101563 C -931.9420166015625 1462.059204101563 -937.5239868164063 1461.471313476563 -937.5239868164063 1459.965454101563 C -937.5239868164063 1458.459716796875 -931.9420166015625 1456.60595703125 -925.0567016601563 1456.60595703125 C -918.1710205078125 1456.60595703125 -912.5894165039063 1458.459716796875 -912.5894165039063 1459.965454101563 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3ohbw7 =
    '<svg viewBox="0.0 1.0 18.0 3.3" ><path transform="translate(916.39, -1495.11)" d="M -898.3516235351563 1498.186401367188 C -898.3516235351563 1499.105834960938 -902.389404296875 1499.46484375 -907.3707885742188 1499.46484375 C -912.3524169921875 1499.46484375 -916.39013671875 1499.105834960938 -916.39013671875 1498.186401367188 C -916.39013671875 1497.266967773438 -912.3524169921875 1496.135009765625 -907.3707885742188 1496.135009765625 C -902.389404296875 1496.135009765625 -898.3516235351563 1497.266967773438 -898.3516235351563 1498.186401367188 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vw8r0d =
    '<svg viewBox="0.0 2.3 18.0 2.1" ><path transform="translate(916.39, -1524.95)" d="M -899.2608642578125 1527.22314453125 C -899.1902465820313 1527.317749023438 -899.15234375 1527.411499023438 -899.15234375 1527.503295898438 C -899.15234375 1528.422729492188 -902.8316650390625 1528.781616210938 -907.3707885742188 1528.781616210938 C -911.9097290039063 1528.781616210938 -915.5894775390625 1528.422729492188 -915.5894775390625 1527.503295898438 C -915.5894775390625 1527.411499023438 -915.5513916015625 1527.317749023438 -915.4813232421875 1527.22314453125 C -916.0630493164063 1527.488037109375 -916.39013671875 1527.7666015625 -916.39013671875 1528.028198242188 C -916.39013671875 1528.947387695313 -912.3524169921875 1529.306518554688 -907.3707885742188 1529.306518554688 C -902.389404296875 1529.306518554688 -898.3516235351563 1528.947387695313 -898.3516235351563 1528.028198242188 C -898.3516235351563 1527.7666015625 -898.678955078125 1527.488037109375 -899.2608642578125 1527.22314453125 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_auwqlc =
    '<svg viewBox="0.0 0.0 3.9 1.0" ><path transform="translate(911.45, -1480.83)" d="M -911.435546875 1481.5380859375 C -911.6442260742188 1481.91064453125 -909.7877807617188 1481.783447265625 -909.0350341796875 1481.637939453125 C -908.4144897460938 1481.518188476563 -907.319091796875 1481.254272460938 -907.6522216796875 1481.0283203125 C -908.486328125 1480.4619140625 -911.2706909179688 1481.24462890625 -911.435546875 1481.5380859375 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_g29pph =
    '<svg viewBox="0.0 0.2 3.9 1.0" ><path transform="translate(911.45, -1485.44)" d="M -907.6659545898438 1485.63037109375 C -907.891357421875 1485.798828125 -908.5859375 1485.961181640625 -909.0350341796875 1486.047729492188 C -909.6633911132813 1486.169189453125 -911.0577392578125 1486.276977539063 -911.3804321289063 1486.092529296875 C -911.4066772460938 1486.112548828125 -911.4259643554688 1486.13134765625 -911.435546875 1486.148193359375 C -911.6442260742188 1486.520751953125 -909.7877807617188 1486.393676757813 -909.0350341796875 1486.248046875 C -908.4144897460938 1486.128295898438 -907.319091796875 1485.8642578125 -907.6522216796875 1485.638427734375 C -907.6565551757813 1485.635620117188 -907.6617431640625 1485.63330078125 -907.6659545898438 1485.63037109375 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hig487 =
    '<svg viewBox="0.0 0.2 3.9 1.0" ><path transform="translate(911.43, -1485.51)" d="M -907.6302490234375 1485.706665039063 C -907.6331176757813 1485.704711914063 -907.6361694335938 1485.703125 -907.63916015625 1485.701416015625 C -907.6531372070313 1485.902709960938 -908.5447387695313 1486.114624023438 -909.0820922851563 1486.218383789063 C -909.7091674804688 1486.33984375 -911.0989990234375 1486.447143554688 -911.4251708984375 1486.264526367188 C -911.447265625 1486.575805664063 -909.73046875 1486.455078125 -909.0130004882813 1486.31640625 C -908.3924560546875 1486.196533203125 -907.2972412109375 1485.932495117188 -907.6302490234375 1485.706665039063 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3ybbuc =
    '<svg viewBox="0.0 2.4 18.0 1.9" ><path transform="translate(916.39, -1528.31)" d="M -898.9801635742188 1530.728881835938 C -898.8557739257813 1530.847045898438 -898.7893676757813 1530.964477539063 -898.7893676757813 1531.078369140625 C -898.7893676757813 1531.953369140625 -902.631103515625 1532.294921875 -907.3707885742188 1532.294921875 C -912.1104125976563 1532.294921875 -915.9526977539063 1531.953369140625 -915.9526977539063 1531.078369140625 C -915.9526977539063 1530.964477539063 -915.8860473632813 1530.847045898438 -915.7618408203125 1530.728881835938 C -916.1663208007813 1530.950561523438 -916.39013671875 1531.177612304688 -916.39013671875 1531.393310546875 C -916.39013671875 1532.312622070313 -912.3524169921875 1532.671630859375 -907.3707885742188 1532.671630859375 C -902.389404296875 1532.671630859375 -898.3516235351563 1532.312622070313 -898.3516235351563 1531.393310546875 C -898.3516235351563 1531.177612304688 -898.5756225585938 1530.950561523438 -898.9801635742188 1530.728881835938 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_j2xrrd =
    '<svg viewBox="0.0 0.0 3.9 1.0" ><path transform="translate(833.26, -1480.83)" d="M -829.4188842773438 1481.5380859375 C -829.2097778320313 1481.91064453125 -831.0667114257813 1481.783447265625 -831.8193359375 1481.637939453125 C -832.4396362304688 1481.518188476563 -833.53515625 1481.254272460938 -833.2025146484375 1481.0283203125 C -832.3674926757813 1480.4619140625 -829.5839233398438 1481.24462890625 -829.4188842773438 1481.5380859375 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ulc9yh =
    '<svg viewBox="0.0 0.2 3.9 1.0" ><path transform="translate(833.26, -1485.44)" d="M -833.1884155273438 1485.63037109375 C -832.9632568359375 1485.798828125 -832.268310546875 1485.961181640625 -831.8193359375 1486.047729492188 C -831.1907348632813 1486.169189453125 -829.79638671875 1486.276977539063 -829.4741821289063 1486.092529296875 C -829.447998046875 1486.112548828125 -829.4284057617188 1486.13134765625 -829.4188842773438 1486.148193359375 C -829.2097778320313 1486.520751953125 -831.0667114257813 1486.393676757813 -831.8193359375 1486.248046875 C -832.4396362304688 1486.128295898438 -833.53515625 1485.8642578125 -833.2025146484375 1485.638427734375 C -833.1980590820313 1485.635620117188 -833.192626953125 1485.63330078125 -833.1884155273438 1485.63037109375 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_voeboo =
    '<svg viewBox="0.0 0.2 3.9 1.0" ><path transform="translate(833.26, -1485.51)" d="M -833.2025146484375 1485.706665039063 C -833.199462890625 1485.704711914063 -833.196044921875 1485.703125 -833.19287109375 1485.701416015625 C -833.1792602539063 1485.902709960938 -832.2875366210938 1486.114624023438 -831.7506713867188 1486.218383789063 C -831.1229858398438 1486.33984375 -829.7332763671875 1486.447143554688 -829.4070434570313 1486.264526367188 C -829.3856811523438 1486.575805664063 -831.1019897460938 1486.455078125 -831.8193359375 1486.31640625 C -832.4396362304688 1486.196533203125 -833.53515625 1485.932495117188 -833.2025146484375 1485.706665039063 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_q6j61e =
    '<svg viewBox="0.0 0.0 4.8 1.0" ><path transform="translate(875.67, -1470.5)" d="M -871.367919921875 1471.00927734375 C -870.6014404296875 1470.88134765625 -870.7328491210938 1470.692260742188 -871.3760375976563 1470.580200195313 C -871.9032592773438 1470.488159179688 -873.5606689453125 1470.458984375 -874.5885009765625 1470.552734375 C -875.440673828125 1470.63037109375 -875.992431640625 1470.765747070313 -875.4574584960938 1470.947509765625 C -874.6461181640625 1471.2236328125 -872.4002075195313 1471.181274414063 -871.367919921875 1471.00927734375 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mpnhvv =
    '<svg viewBox="0.0 0.2 4.8 1.0" ><path transform="translate(875.67, -1474.53)" d="M -871.0358276367188 1474.699096679688 C -871.08984375 1474.756591796875 -871.2398681640625 1474.812866210938 -871.5060424804688 1474.860961914063 C -872.4686279296875 1475.034301757813 -874.5557861328125 1475.079833984375 -875.302734375 1474.804809570313 C -875.38232421875 1474.775634765625 -875.4324340820313 1474.747802734375 -875.4627075195313 1474.720947265625 C -875.7135009765625 1474.792114257813 -875.7588500976563 1474.880004882813 -875.456298828125 1474.983032226563 C -874.6448364257813 1475.259033203125 -872.3990478515625 1475.216796875 -871.3668823242188 1475.044677734375 C -870.7677612304688 1474.94482421875 -870.7223510742188 1474.807983398438 -871.0358276367188 1474.699096679688 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mp0u01 =
    '<svg viewBox="0.0 0.3 4.8 1.0" ><path transform="translate(875.66, -1476.58)" d="M -871.3599853515625 1476.991455078125 C -872.3922729492188 1477.16357421875 -874.6380615234375 1477.205810546875 -875.4495239257813 1476.929809570313 C -875.5377197265625 1476.89990234375 -875.5933227539063 1476.871337890625 -875.6257934570313 1476.844116210938 C -875.698974609375 1476.89990234375 -875.6571044921875 1476.963500976563 -875.4495239257813 1477.033935546875 C -874.6380615234375 1477.31005859375 -872.3922729492188 1477.267700195313 -871.3599853515625 1477.095703125 C -870.91064453125 1477.020751953125 -870.776611328125 1476.924926757813 -870.8671264648438 1476.835815429688 C -870.9281005859375 1476.891357421875 -871.0839233398438 1476.945434570313 -871.3599853515625 1476.991455078125 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_n6tnz7 =
    '<svg viewBox="34.3 6.3 24.9 3.7" ><path transform="translate(971.86, -1494.46)" d="M -914.4017944335938 1500.738159179688 C -913.8411254882813 1501.1162109375 -913.5303955078125 1501.505615234375 -913.5303955078125 1501.87451171875 C -913.5303955078125 1503.380493164063 -918.69091796875 1503.968017578125 -925.0567016601563 1503.968017578125 C -931.4224853515625 1503.968017578125 -936.5831298828125 1503.380493164063 -936.5831298828125 1501.87451171875 C -936.5831298828125 1501.505615234375 -936.2719116210938 1501.1162109375 -935.71142578125 1500.738159179688 C -936.8610229492188 1501.24951171875 -937.5239868164063 1501.809448242188 -937.5239868164063 1502.328247070313 C -937.5239868164063 1503.834228515625 -931.9420166015625 1504.421875 -925.0567016601563 1504.421875 C -918.1710205078125 1504.421875 -912.5894165039063 1503.834228515625 -912.5894165039063 1502.328247070313 C -912.5894165039063 1501.809448242188 -913.2520141601563 1501.24951171875 -914.4017944335938 1500.738159179688 Z" fill="#060000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kacw7a =
    '<svg viewBox="34.1 5.6 1.0 1.0" ><path transform="translate(973.1, -1314.44)" d="M -939 1320" fill="#060000" fill-opacity="0.13" stroke="#404041" stroke-width="8.48073959350586" stroke-opacity="0.13" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_kzxbeh =
    '<svg viewBox="0.0 0.0 13.6 1.5" ><path transform="translate(981.77, -1327.0)" d="M -981.2562255859375 1327.237915039063 C -981.6495361328125 1327.2705078125 -981.8740234375 1327.3759765625 -981.7211303710938 1327.47119140625 C -980.8027954101563 1328.041870117188 -978.1128540039063 1328.522705078125 -974.9542236328125 1328.522705078125 C -971.7970581054688 1328.522705078125 -969.1063232421875 1328.041870117188 -968.1881713867188 1327.47119140625 C -968.0361328125 1327.3759765625 -968.260009765625 1327.2705078125 -968.6530151367188 1327.237915039063 C -972.459716796875 1326.92138671875 -977.4498291015625 1326.92138671875 -981.2562255859375 1327.237915039063 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lhzldr =
    '<svg viewBox="0.0 0.0 6.8 1.0" ><path transform="translate(960.78, -1353.19)" d="M -960.775146484375 1353.463989257813 C -959.7662963867188 1353.586303710938 -958.6123046875 1353.659423828125 -957.3853149414063 1353.659423828125 C -956.1597290039063 1353.659423828125 -955.0057983398438 1353.586303710938 -953.9962768554688 1353.463989257813 C -954.9305419921875 1353.291137695313 -956.105224609375 1353.187133789063 -957.3853149414063 1353.187133789063 C -958.6663208007813 1353.187133789063 -959.841552734375 1353.291137695313 -960.775146484375 1353.463989257813 Z" fill="#060000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ipdcgg =
    '<svg viewBox="33.8 6.0 1.0 1.0" ><path transform="translate(974.77, -1339.03)" d="M -941 1345" fill="#060000" fill-opacity="0.13" stroke="#000000" stroke-width="2" stroke-opacity="0.13" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_hncnui =
    '<svg viewBox="0.0 0.0 59.3 4.1" ><path transform="translate(-1398.27, -1925.7)" d="M 1398.26611328125 1928.252197265625 C 1398.26611328125 1929.397338867188 1411.535278320313 1929.844360351563 1427.904541015625 1929.844360351563 C 1444.272827148438 1929.844360351563 1457.54248046875 1929.397338867188 1457.54248046875 1928.252197265625 C 1457.54248046875 1927.10693359375 1444.272827148438 1925.697265625 1427.904541015625 1925.697265625 C 1411.535278320313 1925.697265625 1398.26611328125 1927.10693359375 1398.26611328125 1928.252197265625 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_txq5qx =
    '<svg viewBox="0.0 0.0 59.3 4.1" ><path transform="translate(-1398.27, -1925.81)" d="M 1426.4677734375 1925.818237304688 C 1411.725830078125 1925.897094726563 1400.00244140625 1927.175170898438 1400.00244140625 1928.219604492188 C 1400.00244140625 1929.297729492188 1412.494506835938 1929.718505859375 1427.904541015625 1929.718505859375 C 1443.314575195313 1929.718505859375 1455.80615234375 1929.297729492188 1455.80615234375 1928.219604492188 C 1455.80615234375 1927.175170898438 1444.083251953125 1925.897094726563 1429.34033203125 1925.818237304688 C 1445.0419921875 1925.897338867188 1457.54248046875 1927.257690429688 1457.54248046875 1928.369262695313 C 1457.54248046875 1929.514526367188 1444.272827148438 1929.96142578125 1427.904541015625 1929.96142578125 C 1411.535278320313 1929.96142578125 1398.26611328125 1929.514526367188 1398.26611328125 1928.369262695313 C 1398.26611328125 1927.257690429688 1410.766723632813 1925.897338867188 1426.4677734375 1925.818237304688 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k5iglk =
    '<svg viewBox="0.0 0.0 28.8 1.7" ><path transform="translate(-1527.18, -1940.73)" d="M 1554.688720703125 1940.8857421875 C 1557.340942382813 1941.049072265625 1555.552490234375 1941.337280273438 1553.530883789063 1941.515258789063 C 1550.747924804688 1941.760009765625 1546.418090820313 1941.823974609375 1543.192260742188 1942.015625 C 1540.648315429688 1942.166870117188 1537.710693359375 1942.358154296875 1534.469848632813 1942.404052734375 C 1531.031005859375 1942.452758789063 1527.450317382813 1942.17578125 1527.187377929688 1941.939697265625 C 1526.840209960938 1941.62744140625 1544.783813476563 1940.276000976563 1554.688720703125 1940.8857421875 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bx9kcu =
    '<svg viewBox="13.1 4.2 42.3 3.0" ><path transform="translate(-1409.94, -1936.43)" d="M 1423.06689453125 1942.475341796875 C 1423.06689453125 1943.292724609375 1432.537841796875 1943.611694335938 1444.220458984375 1943.611694335938 C 1455.9033203125 1943.611694335938 1465.37353515625 1943.292724609375 1465.37353515625 1942.475341796875 C 1465.37353515625 1941.658081054688 1455.9033203125 1940.65185546875 1444.220458984375 1940.65185546875 C 1432.537841796875 1940.65185546875 1423.06689453125 1941.658081054688 1423.06689453125 1942.475341796875 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_okieo4 =
    '<svg viewBox="3.1 0.0 19.9 12.0" ><path transform="matrix(-0.324523, -0.945878, 0.945878, -0.324523, 5.12, 11.95)" d="M 5.722159385681152 0.6720041632652283 L 6.139518737792969 0 L 0.4173591434955597 18.26883888244629 L 2.980232238769531e-08 18.94084358215332 L 5.722159385681152 0.6720041632652283 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3g0n39 =
    '<svg viewBox="0.0 5.2 3.5 2.2" ><path transform="matrix(-0.324523, -0.945878, 0.945878, -0.324523, 0.38, 7.4)" d="M 1.1207594871521 0.05169153213500977 C 1.236011624336243 -0.1338797807693481 1.179006576538086 0.1959716975688934 0.993435263633728 0.7884353399276733 L 0.417359322309494 2.62764310836792 L 2.980232238769531e-08 3.299647331237793 L 0.5760848522186279 1.460411310195923 C 0.7616513967514038 0.8679631948471069 1.005510330200195 0.2372579127550125 1.1207594871521 0.05169153213500977 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i8ja87 =
    '<svg viewBox="22.0 5.6 3.2 1.0" ><path transform="translate(-1493.95, -1979.25)" d="M 1516.912841796875 1985.057739257813 C 1516.985107421875 1985.055786132813 1519.068725585938 1984.946655273438 1519.068725585938 1984.946655273438 L 1518.692260742188 1984.858032226563 L 1516.142211914063 1984.880981445313 C 1516.142211914063 1984.880981445313 1515.875732421875 1984.898071289063 1515.905517578125 1984.921020507813 C 1515.935424804688 1984.944458007813 1516.388793945313 1984.951538085938 1516.388793945313 1984.951538085938 L 1516.152099609375 1984.979614257813 C 1516.249389648438 1984.998657226563 1516.670776367188 1985.016235351563 1516.670776367188 1985.016235351563 L 1516.454833984375 1985.039672851563 C 1516.562744140625 1985.065795898438 1516.912841796875 1985.057739257813 1516.912841796875 1985.057739257813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a2xlka =
    '<svg viewBox="24.7 5.6 1.5 1.0" ><path transform="translate(-1498.16, -1979.25)" d="M 1523.279052734375 1984.94873046875 C 1523.322021484375 1984.94677734375 1524.448608398438 1984.885986328125 1524.392456054688 1984.873046875 C 1524.336303710938 1984.860107421875 1522.901123046875 1984.860107421875 1522.901123046875 1984.860107421875 L 1523.279052734375 1984.94873046875 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2rp7kc =
    '<svg viewBox="1.6 5.1 3.5 2.2" ><path transform="matrix(-0.324523, -0.945878, 0.945878, -0.324523, 2.01, 7.36)" d="M 0.8257138729095459 0.6720041632652283 L 1.243073225021362 0 L 0.417359322309494 2.636212825775146 L 2.980232238769531e-08 3.308217287063599 L 0.8257138729095459 0.6720041632652283 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3pc85c =
    '<svg viewBox="3.6 6.1 1.3 1.0" ><path transform="translate(-1466.24, -1994.59)" d="M 1469.8701171875 2000.736694335938 L 1470.574096679688 2000.898071289063 C 1470.642822265625 2000.913696289063 1470.8212890625 2000.923217773438 1470.973022460938 2000.919067382813 L 1470.973022460938 2000.919067382813 C 1471.12451171875 2000.914916992188 1471.191650390625 2000.899047851563 1471.122924804688 2000.883178710938 L 1470.418701171875 2000.721801757813 C 1470.35009765625 2000.706176757813 1470.171264648438 2000.696655273438 1470.019775390625 2000.700805664063 L 1470.019775390625 2000.700805664063 C 1469.8681640625 2000.704711914063 1469.80126953125 2000.720825195313 1469.8701171875 2000.736694335938 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qlhyu7 =
    '<svg viewBox="1.7 6.2 1.3 1.0" ><path transform="translate(-1463.4, -1996.16)" d="M 1465.154174804688 2002.354858398438 L 1465.85791015625 2002.516235351563 C 1465.927001953125 2002.531860351563 1466.105224609375 2002.541381835938 1466.2568359375 2002.537475585938 L 1466.2568359375 2002.537475585938 C 1466.408325195313 2002.533325195313 1466.475708007813 2002.517211914063 1466.40673828125 2002.501342773438 L 1465.70263671875 2002.339965820313 C 1465.634033203125 2002.324340820313 1465.455200195313 2002.314819335938 1465.303833007813 2002.318969726563 L 1465.303833007813 2002.318969726563 C 1465.151977539063 2002.323120117188 1465.085083007813 2002.338989257813 1465.154174804688 2002.354858398438 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qk5jt9 =
    '<svg viewBox="4.2 6.2 1.0 1.0" ><path transform="translate(-1467.1, -1997.35)" d="M 1471.928588867188 2003.65673828125 C 1471.92578125 2003.661376953125 1471.892700195313 2003.665771484375 1471.843872070313 2003.66552734375 C 1471.777221679688 2003.665283203125 1471.731811523438 2003.657470703125 1471.703491210938 2003.651123046875 C 1471.57080078125 2003.62158203125 1471.438232421875 2003.591796875 1471.3056640625 2003.562255859375 C 1471.27490234375 2003.55517578125 1471.250244140625 2003.5458984375 1471.310424804688 2003.54296875 C 1471.3466796875 2003.541259765625 1471.398071289063 2003.54296875 1471.4326171875 2003.546142578125 C 1471.467407226563 2003.54931640625 1471.4892578125 2003.553466796875 1471.510375976563 2003.5576171875 C 1471.607055664063 2003.576416015625 1471.732666015625 2003.59619140625 1471.803344726563 2003.61572265625 C 1471.842651367188 2003.626708984375 1471.9345703125 2003.64599609375 1471.928588867188 2003.65673828125 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4g68hj =
    '<svg viewBox="2.3 6.2 1.0 1.0" ><path transform="translate(-1464.23, -1998.54)" d="M 1466.862426757813 2004.863525390625 C 1466.749877929688 2004.83740234375 1466.63720703125 2004.811279296875 1466.524291992188 2004.785400390625 C 1466.512084960938 2004.782470703125 1466.499145507813 2004.779541015625 1466.501708984375 2004.776611328125 C 1466.504150390625 2004.77392578125 1466.526733398438 2004.771240234375 1466.556762695313 2004.77197265625 C 1466.589721679688 2004.7724609375 1466.61083984375 2004.77587890625 1466.625244140625 2004.779052734375 C 1466.777709960938 2004.81103515625 1466.982421875 2004.8447265625 1467.09912109375 2004.87744140625 C 1467.120727539063 2004.88330078125 1467.18603515625 2004.901123046875 1467.073974609375 2004.901123046875 C 1466.990844726563 2004.901123046875 1466.88818359375 2004.869384765625 1466.862426757813 2004.863525390625 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_idzp27 =
    '<svg viewBox="0.4 6.3 1.7 1.0" ><path transform="translate(-1461.36, -2001.04)" d="M 1462.518676757813 2007.41748046875 C 1462.447021484375 2007.41943359375 1462.374145507813 2007.42138671875 1462.296875 2007.42138671875 C 1462.085693359375 2007.421630859375 1461.856201171875 2007.406005859375 1461.770263671875 2007.385498046875 C 1461.732421875 2007.376708984375 1461.721313476563 2007.36669921875 1461.760375976563 2007.359130859375 C 1461.766967773438 2007.357666015625 1461.77587890625 2007.3564453125 1461.790649414063 2007.356201171875 C 1461.80517578125 2007.355712890625 1461.822875976563 2007.356201171875 1461.83837890625 2007.35693359375 C 1461.952758789063 2007.36181640625 1462.027221679688 2007.374267578125 1462.140625 2007.379638671875 C 1462.228271484375 2007.3837890625 1462.323120117188 2007.382568359375 1462.410400390625 2007.38134765625 C 1462.657348632813 2007.377685546875 1462.89794921875 2007.3720703125 1463.129760742188 2007.364501953125 C 1463.157592773438 2007.363525390625 1463.186767578125 2007.36279296875 1463.2177734375 2007.36328125 C 1463.241333007813 2007.36376953125 1463.263549804688 2007.364990234375 1463.283447265625 2007.366455078125 C 1463.551513671875 2007.386474609375 1463.348022460938 2007.395263671875 1463.17431640625 2007.39990234375 C 1462.955688476563 2007.40576171875 1462.737426757813 2007.41162109375 1462.518676757813 2007.41748046875 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e0ngnm =
    '<svg viewBox="13.1 5.4 42.3 1.8" ><path transform="translate(-1409.94, -1973.56)" d="M 1424.697021484375 1978.983154296875 C 1424.561889648438 1979.052978515625 1424.488891601563 1979.122314453125 1424.488891601563 1979.190185546875 C 1424.488891601563 1979.95263671875 1433.3232421875 1980.250244140625 1444.220458984375 1980.250244140625 C 1455.117309570313 1980.250244140625 1463.952026367188 1979.95263671875 1463.952026367188 1979.190185546875 C 1463.952026367188 1979.122314453125 1463.878295898438 1979.052978515625 1463.743286132813 1978.983154296875 C 1464.792236328125 1979.190185546875 1465.37353515625 1979.40380859375 1465.37353515625 1979.606201171875 C 1465.37353515625 1980.423583984375 1455.9033203125 1980.74267578125 1444.220458984375 1980.74267578125 C 1432.537841796875 1980.74267578125 1423.06689453125 1980.423583984375 1423.06689453125 1979.606201171875 C 1423.06689453125 1979.40380859375 1423.648193359375 1979.190185546875 1424.697021484375 1978.983154296875 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7px5rd =
    '<svg viewBox="13.1 5.9 42.3 1.3" ><path transform="translate(-1409.94, -1989.14)" d="M 1444.220458984375 1996.095336914063 C 1455.341186523438 1996.095336914063 1464.450317382813 1995.805786132813 1465.302001953125 1995.073120117188 C 1465.344970703125 1995.113159179688 1465.37353515625 1995.152954101563 1465.37353515625 1995.192260742188 C 1465.37353515625 1996.009643554688 1455.9033203125 1996.328735351563 1444.220458984375 1996.328735351563 C 1432.537841796875 1996.328735351563 1423.06689453125 1996.009643554688 1423.06689453125 1995.192260742188 C 1423.06689453125 1995.152954101563 1423.095336914063 1995.113159179688 1423.138671875 1995.073120117188 C 1423.990356445313 1995.805786132813 1433.099365234375 1996.095336914063 1444.220458984375 1996.095336914063 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ma94bw =
    '<svg viewBox="44.2 0.6 16.3 1.3" ><path transform="translate(-1456.93, -1825.75)" d="M 1503.56689453125 1826.537963867188 C 1506.401245117188 1826.289184570313 1510.303466796875 1826.389038085938 1513.752563476563 1826.6318359375 C 1517.201049804688 1826.874633789063 1518.889892578125 1827.168579101563 1516.055541992188 1827.41748046875 C 1513.37890625 1827.65234375 1507.6298828125 1827.7626953125 1504.09326171875 1827.569946289063 C 1507.256469726563 1827.737060546875 1512.337524414063 1827.638061523438 1514.710815429688 1827.429809570313 C 1517.24267578125 1827.207641601563 1515.734252929688 1826.945190429688 1512.654418945313 1826.728271484375 C 1509.574340820313 1826.511474609375 1506.08984375 1826.42236328125 1503.558471679688 1826.644409179688 C 1501.02685546875 1826.86669921875 1500.4072265625 1827.316040039063 1503.4873046875 1827.532836914063 C 1500.038818359375 1827.2900390625 1500.732299804688 1826.786865234375 1503.56689453125 1826.537963867188 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8fwml7 =
    '<svg viewBox="44.0 0.6 16.3 1.3" ><path transform="translate(-1456.63, -1825.75)" d="M 1515.555541992188 1827.41748046875 C 1518.389892578125 1827.168579101563 1516.701049804688 1826.874633789063 1513.252563476563 1826.6318359375 C 1509.803588867188 1826.389038085938 1505.9013671875 1826.289184570313 1503.06689453125 1826.537963867188 C 1500.232421875 1826.786865234375 1499.538940429688 1827.2900390625 1502.9873046875 1827.532836914063 C 1506.435913085938 1827.775634765625 1512.720825195313 1827.666259765625 1515.555541992188 1827.41748046875 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mww97z =
    '<svg viewBox="1.2 0.8 16.3 1.3" ><path transform="translate(-1391.96, -1829.62)" d="M 1394.603393554688 1831.417358398438 C 1391.768920898438 1831.16845703125 1393.457885742188 1830.87451171875 1396.90625 1830.631713867188 C 1400.355590820313 1830.388793945313 1404.257446289063 1830.289184570313 1407.092041015625 1830.537841796875 C 1409.926635742188 1830.786743164063 1410.6201171875 1831.289916992188 1407.171752929688 1831.53271484375 C 1403.722900390625 1831.775512695313 1397.43798828125 1831.666137695313 1394.603393554688 1831.417358398438 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_obev2b =
    '<svg viewBox="0.0 0.9 65.8 4.6" ><path transform="translate(-1390.12, -1834.17)" d="M 1390.1201171875 1837.926879882813 C 1390.1201171875 1839.197509765625 1404.842163085938 1839.693359375 1423.00341796875 1839.693359375 C 1441.164184570313 1839.693359375 1455.886596679688 1839.197509765625 1455.886596679688 1837.926879882813 C 1455.886596679688 1836.65625 1441.164184570313 1835.092163085938 1423.00341796875 1835.092163085938 C 1404.842163085938 1835.092163085938 1390.1201171875 1836.65625 1390.1201171875 1837.926879882813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vasue7 =
    '<svg viewBox="0.0 2.2 65.8 3.3" ><path transform="translate(-1390.12, -1873.31)" d="M 1396.6552734375 1875.490966796875 C 1394.575073242188 1875.8720703125 1393.401245117188 1876.276123046875 1393.401245117188 1876.654296875 C 1393.401245117188 1877.9248046875 1406.654541015625 1878.4208984375 1423.00341796875 1878.4208984375 C 1439.352172851563 1878.4208984375 1452.605590820313 1877.9248046875 1452.605590820313 1876.654296875 C 1452.605590820313 1876.276123046875 1451.43115234375 1875.8720703125 1449.35205078125 1875.490966796875 C 1453.45556640625 1875.9794921875 1455.886596679688 1876.544189453125 1455.886596679688 1877.060546875 C 1455.886596679688 1878.3310546875 1441.164184570313 1878.8271484375 1423.00341796875 1878.8271484375 C 1404.842163085938 1878.8271484375 1390.1201171875 1878.3310546875 1390.1201171875 1877.060546875 C 1390.1201171875 1876.544189453125 1392.550659179688 1875.9794921875 1396.6552734375 1875.490966796875 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ox91o4 =
    '<svg viewBox="0.0 0.0 28.8 1.6" ><path transform="translate(-1396.75, -1965.99)" d="M 1424.63037109375 1967.468505859375 C 1426.526123046875 1967.249755859375 1425.348999023438 1967.015380859375 1423.271362304688 1966.841796875 C 1420.411376953125 1966.6025390625 1416.062133789063 1966.547119140625 1412.775146484375 1966.36181640625 C 1410.184814453125 1966.2158203125 1407.186279296875 1966.0302734375 1403.931762695313 1965.99072265625 C 1400.478393554688 1965.948974609375 1397.263916015625 1966.2353515625 1396.800415039063 1966.469482421875 C 1395.469604492188 1967.141357421875 1421.407470703125 1967.8408203125 1424.63037109375 1967.468505859375 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_84kw06 =
    '<svg viewBox="0.0 2.6 65.8 2.9" ><path transform="translate(-1390.12, -1886.46)" d="M 1393.52978515625 1889.065063476563 C 1392.00634765625 1889.381469726563 1391.163818359375 1889.707275390625 1391.163818359375 1890.015625 C 1391.163818359375 1891.286376953125 1405.418579101563 1891.782348632813 1423.00341796875 1891.782348632813 C 1440.587890625 1891.782348632813 1454.842895507813 1891.286376953125 1454.842895507813 1890.015625 C 1454.842895507813 1889.707275390625 1454.000854492188 1889.381591796875 1452.476440429688 1889.065063476563 C 1454.658081054688 1889.435913085938 1455.886596679688 1889.8271484375 1455.886596679688 1890.19384765625 C 1455.886596679688 1891.46435546875 1441.164184570313 1891.96044921875 1423.00341796875 1891.96044921875 C 1404.842163085938 1891.96044921875 1390.1201171875 1891.46435546875 1390.1201171875 1890.19384765625 C 1390.1201171875 1889.8271484375 1391.3486328125 1889.435913085938 1393.52978515625 1889.065063476563 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_taviep =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1563.49, -1940.3)" d="M 1563.526123046875 1942.909301757813 C 1563.5078125 1942.909301757813 1563.4931640625 1942.908081054688 1563.4931640625 1942.906616210938 L 1563.4931640625 1940.302734375 C 1563.4931640625 1940.301391601563 1563.5078125 1940.300170898438 1563.526123046875 1940.300170898438 C 1563.54443359375 1940.300170898438 1563.559326171875 1940.301391601563 1563.559326171875 1940.302734375 L 1563.559326171875 1942.906616210938 C 1563.559326171875 1942.908081054688 1563.54443359375 1942.909301757813 1563.526123046875 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_of0i2s =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1563.88, -1940.3)" d="M 1563.917114257813 1942.909301757813 C 1563.898803710938 1942.909301757813 1563.884155273438 1942.908081054688 1563.884155273438 1942.906616210938 L 1563.884155273438 1940.302734375 C 1563.884155273438 1940.301391601563 1563.898803710938 1940.300170898438 1563.917114257813 1940.300170898438 C 1563.935180664063 1940.300170898438 1563.9501953125 1940.301391601563 1563.9501953125 1940.302734375 L 1563.9501953125 1942.906616210938 C 1563.9501953125 1942.908081054688 1563.935180664063 1942.909301757813 1563.917114257813 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vu7r4k =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1564.28, -1940.3)" d="M 1564.30810546875 1942.909301757813 C 1564.289794921875 1942.909301757813 1564.275146484375 1942.908081054688 1564.275146484375 1942.906616210938 L 1564.275146484375 1940.302734375 C 1564.275146484375 1940.301391601563 1564.289794921875 1940.300170898438 1564.30810546875 1940.300170898438 C 1564.326416015625 1940.300170898438 1564.341186523438 1940.301391601563 1564.341186523438 1940.302734375 L 1564.341186523438 1942.906616210938 C 1564.341186523438 1942.908081054688 1564.326416015625 1942.909301757813 1564.30810546875 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_70gbzp =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1564.67, -1940.3)" d="M 1564.69921875 1942.909301757813 C 1564.68115234375 1942.909301757813 1564.666015625 1942.908081054688 1564.666015625 1942.906616210938 L 1564.666015625 1940.302734375 C 1564.666015625 1940.301391601563 1564.68115234375 1940.300170898438 1564.69921875 1940.300170898438 C 1564.717529296875 1940.300170898438 1564.732421875 1940.301391601563 1564.732421875 1940.302734375 L 1564.732421875 1942.906616210938 C 1564.732421875 1942.908081054688 1564.717529296875 1942.909301757813 1564.69921875 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4z21jb =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1565.06, -1940.3)" d="M 1565.089965820313 1942.909301757813 C 1565.072143554688 1942.909301757813 1565.056762695313 1942.908081054688 1565.056762695313 1942.906616210938 L 1565.056762695313 1940.302734375 C 1565.056762695313 1940.301391601563 1565.072143554688 1940.300170898438 1565.089965820313 1940.300170898438 C 1565.108276367188 1940.300170898438 1565.123413085938 1940.301391601563 1565.123413085938 1940.302734375 L 1565.123413085938 1942.906616210938 C 1565.123413085938 1942.908081054688 1565.108276367188 1942.909301757813 1565.089965820313 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u6c25j =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1565.45, -1940.3)" d="M 1565.482055664063 1942.909301757813 C 1565.4638671875 1942.909301757813 1565.448974609375 1942.908081054688 1565.448974609375 1942.906616210938 L 1565.448974609375 1940.302734375 C 1565.448974609375 1940.301391601563 1565.4638671875 1940.300170898438 1565.482055664063 1940.300170898438 C 1565.5 1940.300170898438 1565.51513671875 1940.301391601563 1565.51513671875 1940.302734375 L 1565.51513671875 1942.906616210938 C 1565.51513671875 1942.908081054688 1565.5 1942.909301757813 1565.482055664063 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a1o8yt =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1565.84, -1940.3)" d="M 1565.873046875 1942.909301757813 C 1565.8544921875 1942.909301757813 1565.83984375 1942.908081054688 1565.83984375 1942.906616210938 L 1565.83984375 1940.302734375 C 1565.83984375 1940.301391601563 1565.8544921875 1940.300170898438 1565.873046875 1940.300170898438 C 1565.891357421875 1940.300170898438 1565.905883789063 1940.301391601563 1565.905883789063 1940.302734375 L 1565.905883789063 1942.906616210938 C 1565.905883789063 1942.908081054688 1565.891357421875 1942.909301757813 1565.873046875 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mhyo6e =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1566.23, -1940.3)" d="M 1566.264038085938 1942.909301757813 C 1566.245727539063 1942.909301757813 1566.23095703125 1942.908081054688 1566.23095703125 1942.906616210938 L 1566.23095703125 1940.302734375 C 1566.23095703125 1940.301391601563 1566.245727539063 1940.300170898438 1566.264038085938 1940.300170898438 C 1566.282470703125 1940.300170898438 1566.297119140625 1940.301391601563 1566.297119140625 1940.302734375 L 1566.297119140625 1942.906616210938 C 1566.297119140625 1942.908081054688 1566.282470703125 1942.909301757813 1566.264038085938 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gw9gb =
    '<svg viewBox="0.0 0.0 1.0 2.6" ><path transform="translate(-1566.62, -1940.3)" d="M 1566.655029296875 1942.909301757813 C 1566.63671875 1942.909301757813 1566.621826171875 1942.908081054688 1566.621826171875 1942.906616210938 L 1566.621826171875 1940.302734375 C 1566.621826171875 1940.301391601563 1566.63671875 1940.300170898438 1566.655029296875 1940.300170898438 C 1566.67333984375 1940.300170898438 1566.688110351563 1940.301391601563 1566.688110351563 1940.302734375 L 1566.688110351563 1942.906616210938 C 1566.688110351563 1942.908081054688 1566.67333984375 1942.909301757813 1566.655029296875 1942.909301757813 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y5ocyl =
    '<svg viewBox="0.0 0.0 16.0 1.0" ><path  d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5tljdi =
    '<svg viewBox="0.0 0.2 16.0 1.0" ><path transform="translate(0.0, 0.21)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ij3t4a =
    '<svg viewBox="0.0 0.4 16.0 1.0" ><path transform="translate(0.0, 0.41)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_a3epnt =
    '<svg viewBox="0.0 0.6 16.0 1.0" ><path transform="translate(0.0, 0.62)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yg425l =
    '<svg viewBox="0.0 0.8 16.0 1.0" ><path transform="translate(0.0, 0.82)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vkhrhk =
    '<svg viewBox="0.0 1.0 16.0 1.0" ><path transform="translate(0.0, 1.03)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_n4so13 =
    '<svg viewBox="0.0 1.2 16.0 1.0" ><path transform="translate(0.0, 1.24)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_njm1g9 =
    '<svg viewBox="0.0 1.4 16.0 1.0" ><path transform="translate(0.0, 1.44)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vzb4wq =
    '<svg viewBox="0.0 1.6 16.0 1.0" ><path transform="translate(0.0, 1.65)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2nlvol =
    '<svg viewBox="0.0 1.9 16.0 1.0" ><path transform="translate(0.0, 1.85)" d="M 0 0 L 16.0382022857666 0" fill="none" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x1dyjc =
    '<svg viewBox="37.7 2.4 22.1 1.7" ><path transform="translate(-1447.04, -1879.3)" d="M 1506.565063476563 1882.682006835938 C 1507.072631835938 1882.810180664063 1506.670654296875 1883.040893554688 1505.849731445313 1883.15771484375 C 1505.046264648438 1883.271850585938 1503.581665039063 1883.332397460938 1502.014526367188 1883.361938476563 C 1495.178588867188 1883.490966796875 1485.685546875 1883.133544921875 1484.820068359375 1882.54443359375 C 1484.463134765625 1882.301635742188 1485.141479492188 1881.957275390625 1487.763427734375 1881.797241210938 C 1493.271850585938 1881.461181640625 1500.576049804688 1881.9384765625 1503.89404296875 1882.277709960938 C 1505.03271484375 1882.394165039063 1506.009399414063 1882.541625976563 1506.565063476563 1882.682006835938 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rwcrms =
    '<svg viewBox="43.9 2.8 7.4 1.0" ><path transform="translate(-1456.41, -1893.47)" d="M 1507.435913085938 1896.823486328125 C 1507.187255859375 1896.863159179688 1506.665893554688 1896.8828125 1506.134155273438 1896.892944335938 C 1505.2763671875 1896.909057617188 1504.295776367188 1896.902709960938 1503.38525390625 1896.878173828125 C 1501.832153320313 1896.836181640625 1500.623779296875 1896.749267578125 1500.352905273438 1896.624145507813 C 1500.104125976563 1896.509399414063 1500.730224609375 1896.400024414063 1501.61376953125 1896.350219726563 C 1504.943725585938 1896.162475585938 1508.726440429688 1896.616821289063 1507.435913085938 1896.823486328125 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jy0ser =
    '<svg viewBox="5.7 2.4 22.1 1.7" ><path transform="translate(-1398.66, -1879.3)" d="M 1404.542236328125 1882.682006835938 C 1404.03466796875 1882.810180664063 1404.43701171875 1883.040893554688 1405.257934570313 1883.15771484375 C 1406.061401367188 1883.271850585938 1407.525512695313 1883.332397460938 1409.092651367188 1883.361938476563 C 1415.928833007813 1883.490966796875 1425.421630859375 1883.133544921875 1426.287475585938 1882.54443359375 C 1426.64404296875 1882.301635742188 1425.965698242188 1881.957275390625 1423.344360351563 1881.797241210938 C 1417.835693359375 1881.461181640625 1410.531494140625 1881.9384765625 1407.214111328125 1882.277709960938 C 1406.074584960938 1882.394165039063 1405.097778320313 1882.541625976563 1404.542236328125 1882.682006835938 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qfms89 =
    '<svg viewBox="0.0 0.0 4.8 1.0" ><path transform="translate(-1500.28, -1896.87)" d="M 1500.283081054688 1897.114013671875 C 1500.283081054688 1897.249877929688 1501.365478515625 1897.360107421875 1502.700073242188 1897.360107421875 C 1504.035278320313 1897.360107421875 1505.11767578125 1897.249877929688 1505.11767578125 1897.114013671875 C 1505.11767578125 1896.978271484375 1504.035278320313 1896.868041992188 1502.700073242188 1896.868041992188 C 1501.365478515625 1896.868041992188 1500.283081054688 1896.978271484375 1500.283081054688 1897.114013671875 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v2u9eu =
    '<svg viewBox="2.4 0.1 1.8 1.0" ><path transform="translate(-1503.93, -1899.49)" d="M 1506.350952148438 1899.66455078125 C 1506.350952148438 1899.715209960938 1506.754272460938 1899.756103515625 1507.250854492188 1899.756103515625 C 1507.748168945313 1899.756103515625 1508.150268554688 1899.715209960938 1508.150268554688 1899.66455078125 C 1508.150268554688 1899.614013671875 1507.748168945313 1899.573120117188 1507.250854492188 1899.573120117188 C 1506.754272460938 1899.573120117188 1506.350952148438 1899.614013671875 1506.350952148438 1899.66455078125 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_64wh8m =
    '<svg viewBox="0.0 0.0 4.8 1.0" ><path transform="translate(-1432.01, -1896.87)" d="M 1432.005981445313 1897.114013671875 C 1432.005981445313 1897.249877929688 1433.087890625 1897.360107421875 1434.422973632813 1897.360107421875 C 1435.75830078125 1897.360107421875 1436.84033203125 1897.249877929688 1436.84033203125 1897.114013671875 C 1436.84033203125 1896.978271484375 1435.75830078125 1896.868041992188 1434.422973632813 1896.868041992188 C 1433.087890625 1896.868041992188 1432.005981445313 1896.978271484375 1432.005981445313 1897.114013671875 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1pb8py =
    '<svg viewBox="2.4 0.1 1.8 1.0" ><path transform="translate(-1435.66, -1899.49)" d="M 1438.073974609375 1899.66455078125 C 1438.073974609375 1899.715209960938 1438.47705078125 1899.756103515625 1438.973388671875 1899.756103515625 C 1439.470947265625 1899.756103515625 1439.873413085938 1899.715209960938 1439.873413085938 1899.66455078125 C 1439.873413085938 1899.614013671875 1439.470947265625 1899.573120117188 1438.973388671875 1899.573120117188 C 1438.47705078125 1899.573120117188 1438.073974609375 1899.614013671875 1438.073974609375 1899.66455078125 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g24210 =
    '<svg viewBox="14.1 2.8 7.4 1.0" ><path transform="translate(-1411.44, -1893.47)" d="M 1425.81689453125 1896.823486328125 C 1426.065063476563 1896.863159179688 1426.5869140625 1896.8828125 1427.1181640625 1896.892944335938 C 1427.975830078125 1896.909057617188 1428.956420898438 1896.902709960938 1429.867065429688 1896.878173828125 C 1431.420654296875 1896.836181640625 1432.628295898438 1896.749267578125 1432.899536132813 1896.624145507813 C 1433.148559570313 1896.509399414063 1432.522216796875 1896.400024414063 1431.639282226563 1896.350219726563 C 1428.308471679688 1896.162475585938 1424.526245117188 1896.616821289063 1425.81689453125 1896.823486328125 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zgaczh =
    '<svg viewBox="45.9 3.5 7.8 1.0" ><path transform="translate(-1459.43, -1912.59)" d="M 1505.31298828125 1916.146118164063 C 1505.31298828125 1916.20263671875 1507.049682617188 1916.248291015625 1509.191528320313 1916.248291015625 C 1511.333740234375 1916.248291015625 1513.069580078125 1916.20263671875 1513.069580078125 1916.146118164063 C 1513.069580078125 1916.089721679688 1511.333740234375 1916.044067382813 1509.191528320313 1916.044067382813 C 1507.049682617188 1916.044067382813 1505.31298828125 1916.089721679688 1505.31298828125 1916.146118164063 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rxwki3 =
    '<svg viewBox="0.0 0.0 11.0 1.0" ><path transform="translate(-1458.87, -1922.89)" d="M 1469.8662109375 1923.121459960938 C 1469.8662109375 1922.954223632813 1467.406616210938 1922.888916015625 1464.371337890625 1922.888916015625 C 1461.3359375 1922.888916015625 1458.874877929688 1922.954223632813 1458.874877929688 1923.121459960938 C 1458.874877929688 1923.288818359375 1461.3359375 1923.494873046875 1464.371337890625 1923.494873046875 C 1467.406616210938 1923.494873046875 1469.8662109375 1923.288818359375 1469.8662109375 1923.121459960938 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cy5uhy =
    '<svg viewBox="0.0 0.1 11.0 1.0" ><path transform="translate(-1458.87, -1926.52)" d="M 1459.39794921875 1926.637084960938 C 1459.372924804688 1926.6484375 1459.35693359375 1926.660278320313 1459.35693359375 1926.6728515625 C 1459.35693359375 1926.840087890625 1461.60205078125 1927.046142578125 1464.371337890625 1927.046142578125 C 1467.140014648438 1927.046142578125 1469.385498046875 1926.840087890625 1469.385498046875 1926.6728515625 C 1469.385498046875 1926.660278320313 1469.36865234375 1926.6484375 1469.343872070313 1926.637084960938 C 1469.67626953125 1926.668334960938 1469.8662109375 1926.706420898438 1469.8662109375 1926.752319335938 C 1469.8662109375 1926.919555664063 1467.406616210938 1927.125610351563 1464.371337890625 1927.125610351563 C 1461.3359375 1927.125610351563 1458.874877929688 1926.919555664063 1458.874877929688 1926.752319335938 C 1458.874877929688 1926.706420898438 1459.065795898438 1926.668334960938 1459.39794921875 1926.637084960938 Z" fill="#010101" fill-opacity="0.03" stroke="#050101" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t4nw66 =
    '<svg viewBox="2.9 0.0 5.1 1.0" ><path transform="translate(-1463.31, -1924.2)" d="M 1466.241943359375 1924.2939453125 C 1466.241943359375 1924.322021484375 1467.389038085938 1924.344970703125 1468.80322265625 1924.344970703125 C 1470.2177734375 1924.344970703125 1471.364135742188 1924.322021484375 1471.364135742188 1924.2939453125 C 1471.364135742188 1924.265625 1470.2177734375 1924.242919921875 1468.80322265625 1924.242919921875 C 1467.389038085938 1924.242919921875 1466.241943359375 1924.265625 1466.241943359375 1924.2939453125 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8gmzvc =
    '<svg viewBox="11.7 3.5 7.8 1.0" ><path transform="translate(-1407.86, -1912.59)" d="M 1419.60400390625 1916.146118164063 C 1419.60400390625 1916.20263671875 1421.339599609375 1916.248291015625 1423.481811523438 1916.248291015625 C 1425.623413085938 1916.248291015625 1427.359619140625 1916.20263671875 1427.359619140625 1916.146118164063 C 1427.359619140625 1916.089721679688 1425.623413085938 1916.044067382813 1423.481811523438 1916.044067382813 C 1421.339599609375 1916.044067382813 1419.60400390625 1916.089721679688 1419.60400390625 1916.146118164063 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rbalzv =
    '<svg viewBox="35.0 6.4 30.4 2.1" ><path transform="translate(-1442.94, -2004.26)" d="M 1477.9150390625 2011.992797851563 C 1477.9150390625 2012.580932617188 1484.728515625 2012.810424804688 1493.133056640625 2012.810424804688 C 1501.537475585938 2012.810424804688 1508.3505859375 2012.580932617188 1508.3505859375 2011.992797851563 C 1508.3505859375 2011.404907226563 1501.537475585938 2010.681030273438 1493.133056640625 2010.681030273438 C 1484.728515625 2010.681030273438 1477.9150390625 2011.404907226563 1477.9150390625 2011.992797851563 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i0ap23 =
    '<svg viewBox="0.0 0.4 22.0 1.3" ><path transform="translate(-1488.48, -2030.04)" d="M 1488.48095703125 2031.2451171875 C 1488.48095703125 2031.60400390625 1493.40966796875 2031.744140625 1499.490234375 2031.744140625 C 1505.5703125 2031.744140625 1510.49951171875 2031.60400390625 1510.49951171875 2031.2451171875 C 1510.49951171875 2030.885986328125 1505.5703125 2030.444091796875 1499.490234375 2030.444091796875 C 1493.40966796875 2030.444091796875 1488.48095703125 2030.885986328125 1488.48095703125 2031.2451171875 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o8yp0z =
    '<svg viewBox="0.0 0.9 22.0 1.0" ><path transform="translate(-1488.48, -2045.1)" d="M 1489.5908203125 2045.987182617188 C 1489.504638671875 2046.024047851563 1489.4580078125 2046.060668945313 1489.4580078125 2046.096557617188 C 1489.4580078125 2046.455444335938 1493.94970703125 2046.595581054688 1499.490234375 2046.595581054688 C 1505.031005859375 2046.595581054688 1509.522216796875 2046.455444335938 1509.522216796875 2046.096557617188 C 1509.522216796875 2046.060668945313 1509.4755859375 2046.024047851563 1509.3896484375 2045.987182617188 C 1510.099853515625 2046.090698242188 1510.49951171875 2046.199340820313 1510.49951171875 2046.301391601563 C 1510.49951171875 2046.660522460938 1505.5703125 2046.800659179688 1499.490234375 2046.800659179688 C 1493.40966796875 2046.800659179688 1488.48095703125 2046.660522460938 1488.48095703125 2046.301391601563 C 1488.48095703125 2046.199340820313 1488.880126953125 2046.090698242188 1489.5908203125 2045.987182617188 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xlng70 =
    '<svg viewBox="0.0 0.0 4.7 1.0" ><path transform="translate(-1529.46, -2022.79)" d="M 1534.14892578125 2023.068359375 C 1534.404418945313 2023.2138671875 1532.137817382813 2023.164306640625 1531.21875 2023.107421875 C 1530.4619140625 2023.060791015625 1529.125 2022.957763671875 1529.53076171875 2022.869384765625 C 1530.549560546875 2022.648193359375 1533.947875976563 2022.953857421875 1534.14892578125 2023.068359375 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qktuou =
    '<svg viewBox="0.0 0.1 4.7 1.0" ><path transform="translate(-1529.46, -2025.12)" d="M 1529.5478515625 2025.192016601563 C 1529.823120117188 2025.257690429688 1530.670654296875 2025.321166992188 1531.21875 2025.355102539063 C 1531.986450195313 2025.402465820313 1533.688720703125 2025.444458007813 1534.081665039063 2025.372436523438 C 1534.113525390625 2025.380249023438 1534.137084960938 2025.387573242188 1534.14892578125 2025.394165039063 C 1534.404418945313 2025.539672851563 1532.137817382813 2025.490112304688 1531.21875 2025.433227539063 C 1530.4619140625 2025.386352539063 1529.125 2025.283325195313 1529.53076171875 2025.195190429688 C 1529.536254882813 2025.193969726563 1529.542602539063 2025.192993164063 1529.5478515625 2025.192016601563 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vxcvae =
    '<svg viewBox="0.0 0.1 4.7 1.0" ><path transform="translate(-1529.46, -2025.15)" d="M 1529.53076171875 2025.2294921875 C 1529.534301757813 2025.228515625 1529.538696289063 2025.22802734375 1529.542236328125 2025.227294921875 C 1529.558959960938 2025.305908203125 1530.647705078125 2025.388671875 1531.302978515625 2025.42919921875 C 1532.068481445313 2025.4765625 1533.765014648438 2025.5185546875 1534.163330078125 2025.447021484375 C 1534.189575195313 2025.56884765625 1532.0947265625 2025.521484375 1531.21875 2025.46728515625 C 1530.4619140625 2025.420654296875 1529.125 2025.317626953125 1529.53076171875 2025.2294921875 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xkfgzo =
    '<svg viewBox="0.0 0.9 22.0 1.0" ><path transform="translate(-1488.48, -2046.8)" d="M 1489.247802734375 2047.739990234375 C 1489.096923828125 2047.7861328125 1489.015380859375 2047.83203125 1489.015380859375 2047.87646484375 C 1489.015380859375 2048.218017578125 1493.704833984375 2048.351318359375 1499.490234375 2048.351318359375 C 1505.276123046875 2048.351318359375 1509.965087890625 2048.218017578125 1509.965087890625 2047.87646484375 C 1509.965087890625 2047.83203125 1509.884033203125 2047.7861328125 1509.732421875 2047.739990234375 C 1510.225341796875 2047.82666015625 1510.49951171875 2047.915283203125 1510.49951171875 2047.99951171875 C 1510.49951171875 2048.3583984375 1505.5703125 2048.49853515625 1499.490234375 2048.49853515625 C 1493.40966796875 2048.49853515625 1488.48095703125 2048.3583984375 1488.48095703125 2047.99951171875 C 1488.48095703125 2047.915283203125 1488.75537109375 2047.82666015625 1489.247802734375 2047.739990234375 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oz7f8q =
    '<svg viewBox="0.0 0.0 4.7 1.0" ><path transform="translate(-1490.36, -2022.79)" d="M 1490.384033203125 2023.068359375 C 1490.129272460938 2023.2138671875 1492.395629882813 2023.164306640625 1493.314575195313 2023.107421875 C 1494.071411132813 2023.060791015625 1495.408935546875 2022.957763671875 1495.00244140625 2022.869384765625 C 1493.983764648438 2022.648193359375 1490.585571289063 2022.953857421875 1490.384033203125 2023.068359375 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_io3ky0 =
    '<svg viewBox="0.0 0.1 4.7 1.0" ><path transform="translate(-1490.36, -2025.12)" d="M 1494.984741210938 2025.192016601563 C 1494.710815429688 2025.257690429688 1493.8623046875 2025.321166992188 1493.314575195313 2025.355102539063 C 1492.546997070313 2025.402465820313 1490.845336914063 2025.444458007813 1490.451049804688 2025.372436523438 C 1490.419677734375 2025.380249023438 1490.395629882813 2025.387573242188 1490.384033203125 2025.394165039063 C 1490.129272460938 2025.539672851563 1492.395629882813 2025.490112304688 1493.314575195313 2025.433227539063 C 1494.071411132813 2025.386352539063 1495.408935546875 2025.283325195313 1495.00244140625 2025.195190429688 C 1494.996704101563 2025.193969726563 1494.990844726563 2025.192993164063 1494.984741210938 2025.192016601563 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z3niwq =
    '<svg viewBox="0.0 0.1 4.7 1.0" ><path transform="translate(-1490.37, -2025.15)" d="M 1495.010375976563 2025.2294921875 C 1495.0068359375 2025.228515625 1495.002685546875 2025.22802734375 1494.999633789063 2025.227294921875 C 1494.982055664063 2025.305908203125 1493.893920898438 2025.388671875 1493.238037109375 2025.42919921875 C 1492.472900390625 2025.4765625 1490.776123046875 2025.5185546875 1490.377807617188 2025.447021484375 C 1490.35107421875 2025.56884765625 1492.446655273438 2025.521484375 1493.322509765625 2025.46728515625 C 1494.07958984375 2025.420654296875 1495.417114257813 2025.317626953125 1495.010375976563 2025.2294921875 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ndnkyq =
    '<svg viewBox="0.0 0.0 5.9 1.0" ><path transform="translate(-1508.61, -2017.62)" d="M 1509.249755859375 2017.825561523438 C 1508.314208984375 2017.775512695313 1508.47509765625 2017.701782226563 1509.26025390625 2017.657836914063 C 1509.9033203125 2017.621948242188 1511.926635742188 2017.610717773438 1513.180541992188 2017.647094726563 C 1514.220947265625 2017.677612304688 1514.894653320313 2017.730346679688 1514.241333007813 2017.801391601563 C 1513.251098632813 2017.909057617188 1510.509765625 2017.892700195313 1509.249755859375 2017.825561523438 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u5f1nw =
    '<svg viewBox="0.0 0.1 5.9 1.0" ><path transform="translate(-1508.61, -2019.66)" d="M 1508.8525390625 2019.727172851563 C 1508.918212890625 2019.749389648438 1509.10107421875 2019.771362304688 1509.42626953125 2019.790405273438 C 1510.600830078125 2019.858032226563 1513.14892578125 2019.875854492188 1514.06005859375 2019.768188476563 C 1514.1572265625 2019.756958007813 1514.21923828125 2019.745971679688 1514.255859375 2019.735717773438 C 1514.561767578125 2019.763305664063 1514.616943359375 2019.797729492188 1514.247802734375 2019.837768554688 C 1513.25732421875 2019.945678710938 1510.51611328125 2019.929077148438 1509.255859375 2019.861938476563 C 1508.524658203125 2019.822875976563 1508.4697265625 2019.769653320313 1508.8525390625 2019.727172851563 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rsmisb =
    '<svg viewBox="0.0 0.1 5.9 1.0" ><path transform="translate(-1508.62, -2020.7)" d="M 1509.260620117188 2020.855712890625 C 1510.5205078125 2020.9228515625 1513.261962890625 2020.939453125 1514.252075195313 2020.83154296875 C 1514.35986328125 2020.81982421875 1514.427856445313 2020.808837890625 1514.467651367188 2020.798095703125 C 1514.557739257813 2020.820068359375 1514.505615234375 2020.8447265625 1514.252075195313 2020.872314453125 C 1513.261962890625 2020.97998046875 1510.5205078125 2020.963623046875 1509.260620117188 2020.896240234375 C 1508.712158203125 2020.8671875 1508.54833984375 2020.82958984375 1508.658325195313 2020.794921875 C 1508.733154296875 2020.816650390625 1508.923706054688 2020.837646484375 1509.260620117188 2020.855712890625 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1avf92 =
    '<svg viewBox="35.0 7.1 30.4 1.4" ><path transform="translate(-1442.94, -2025.64)" d="M 1480.127685546875 2032.744995117188 C 1479.442993164063 2032.892700195313 1479.0634765625 2033.044555664063 1479.0634765625 2033.188598632813 C 1479.0634765625 2033.776733398438 1485.363159179688 2034.006225585938 1493.133056640625 2034.006225585938 C 1500.9033203125 2034.006225585938 1507.202026367188 2033.776733398438 1507.202026367188 2033.188598632813 C 1507.202026367188 2033.044555664063 1506.822631835938 2032.892700195313 1506.138671875 2032.744995117188 C 1507.541870117188 2032.944702148438 1508.3505859375 2033.163208007813 1508.3505859375 2033.365844726563 C 1508.3505859375 2033.953735351563 1501.537475585938 2034.183471679688 1493.133056640625 2034.183471679688 C 1484.728515625 2034.183471679688 1477.9150390625 2033.953735351563 1477.9150390625 2033.365844726563 C 1477.9150390625 2033.163208007813 1478.723999023438 2032.944702148438 1480.127685546875 2032.744995117188 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cfaamq =
    '<svg viewBox="2.0 6.4 30.4 2.1" ><path transform="translate(-1393.09, -2004.26)" d="M 1395.051147460938 2011.992797851563 C 1395.051147460938 2012.580932617188 1401.86474609375 2012.810424804688 1410.269165039063 2012.810424804688 C 1418.673583984375 2012.810424804688 1425.487060546875 2012.580932617188 1425.487060546875 2011.992797851563 C 1425.487060546875 2011.404907226563 1418.673583984375 2010.681030273438 1410.269165039063 2010.681030273438 C 1401.86474609375 2010.681030273438 1395.051147460938 2011.404907226563 1395.051147460938 2011.992797851563 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s2r60j =
    '<svg viewBox="0.0 0.4 22.0 1.3" ><path transform="translate(-1405.62, -2030.04)" d="M 1405.616943359375 2031.2451171875 C 1405.616943359375 2031.60400390625 1410.546020507813 2031.744140625 1416.626220703125 2031.744140625 C 1422.706787109375 2031.744140625 1427.635375976563 2031.60400390625 1427.635375976563 2031.2451171875 C 1427.635375976563 2030.885986328125 1422.706787109375 2030.444091796875 1416.626220703125 2030.444091796875 C 1410.546020507813 2030.444091796875 1405.616943359375 2030.885986328125 1405.616943359375 2031.2451171875 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_phvzkz =
    '<svg viewBox="0.0 0.9 22.0 1.0" ><path transform="translate(-1405.62, -2045.1)" d="M 1406.726806640625 2045.987182617188 C 1406.640747070313 2046.024047851563 1406.594482421875 2046.060668945313 1406.594482421875 2046.096557617188 C 1406.594482421875 2046.455444335938 1411.085693359375 2046.595581054688 1416.626220703125 2046.595581054688 C 1422.16650390625 2046.595581054688 1426.658081054688 2046.455444335938 1426.658081054688 2046.096557617188 C 1426.658081054688 2046.060668945313 1426.611572265625 2046.024047851563 1426.526000976563 2045.987182617188 C 1427.23583984375 2046.090698242188 1427.635375976563 2046.199340820313 1427.635375976563 2046.301391601563 C 1427.635375976563 2046.660522460938 1422.706787109375 2046.800659179688 1416.626220703125 2046.800659179688 C 1410.546020507813 2046.800659179688 1405.616943359375 2046.660522460938 1405.616943359375 2046.301391601563 C 1405.616943359375 2046.199340820313 1406.016479492188 2046.090698242188 1406.726806640625 2045.987182617188 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hkl3ld =
    '<svg viewBox="0.0 0.0 4.7 1.0" ><path transform="translate(-1446.59, -2022.79)" d="M 1451.28515625 2023.068359375 C 1451.5400390625 2023.2138671875 1449.274047851563 2023.164306640625 1448.35498046875 2023.107421875 C 1447.59765625 2023.060791015625 1446.260620117188 2022.957763671875 1446.667236328125 2022.869384765625 C 1447.685424804688 2022.648193359375 1451.084106445313 2022.953857421875 1451.28515625 2023.068359375 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2m4k4b =
    '<svg viewBox="0.0 0.1 4.7 1.0" ><path transform="translate(-1446.59, -2025.12)" d="M 1446.684326171875 2025.192016601563 C 1446.958740234375 2025.257690429688 1447.807250976563 2025.321166992188 1448.35498046875 2025.355102539063 C 1449.122192382813 2025.402465820313 1450.824340820313 2025.444458007813 1451.218383789063 2025.372436523438 C 1451.250244140625 2025.380249023438 1451.273681640625 2025.387573242188 1451.28515625 2025.394165039063 C 1451.5400390625 2025.539672851563 1449.274047851563 2025.490112304688 1448.35498046875 2025.433227539063 C 1447.59765625 2025.386352539063 1446.260620117188 2025.283325195313 1446.667236328125 2025.195190429688 C 1446.6728515625 2025.193969726563 1446.678833007813 2025.192993164063 1446.684326171875 2025.192016601563 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tozos0 =
    '<svg viewBox="0.0 0.1 4.7 1.0" ><path transform="translate(-1446.59, -2025.15)" d="M 1446.667236328125 2025.2294921875 C 1446.671020507813 2025.228515625 1446.674438476563 2025.22802734375 1446.678100585938 2025.227294921875 C 1446.6953125 2025.305908203125 1447.783447265625 2025.388671875 1448.439575195313 2025.42919921875 C 1449.204711914063 2025.4765625 1450.901611328125 2025.5185546875 1451.299560546875 2025.447021484375 C 1451.32666015625 2025.56884765625 1449.23095703125 2025.521484375 1448.35498046875 2025.46728515625 C 1447.59765625 2025.420654296875 1446.260620117188 2025.317626953125 1446.667236328125 2025.2294921875 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sln5h9 =
    '<svg viewBox="0.0 0.9 22.0 1.0" ><path transform="translate(-1405.62, -2046.8)" d="M 1406.384155273438 2047.739990234375 C 1406.232421875 2047.7861328125 1406.151123046875 2047.83203125 1406.151123046875 2047.87646484375 C 1406.151123046875 2048.218017578125 1410.8408203125 2048.351318359375 1416.626220703125 2048.351318359375 C 1422.411499023438 2048.351318359375 1427.1015625 2048.218017578125 1427.1015625 2047.87646484375 C 1427.1015625 2047.83203125 1427.019897460938 2047.7861328125 1426.868286132813 2047.739990234375 C 1427.362060546875 2047.82666015625 1427.635375976563 2047.915283203125 1427.635375976563 2047.99951171875 C 1427.635375976563 2048.3583984375 1422.706787109375 2048.49853515625 1416.626220703125 2048.49853515625 C 1410.546020507813 2048.49853515625 1405.616943359375 2048.3583984375 1405.616943359375 2047.99951171875 C 1405.616943359375 2047.915283203125 1405.890258789063 2047.82666015625 1406.384155273438 2047.739990234375 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7nun3r =
    '<svg viewBox="0.0 0.0 4.7 1.0" ><path transform="translate(-1407.5, -2022.79)" d="M 1407.520141601563 2023.068359375 C 1407.265258789063 2023.2138671875 1409.53173828125 2023.164306640625 1410.450317382813 2023.107421875 C 1411.20751953125 2023.060791015625 1412.544677734375 2022.957763671875 1412.138916015625 2022.869384765625 C 1411.119506835938 2022.648193359375 1407.7216796875 2022.953857421875 1407.520141601563 2023.068359375 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ed8bia =
    '<svg viewBox="0.0 0.1 4.7 1.0" ><path transform="translate(-1407.5, -2025.12)" d="M 1412.121215820313 2025.192016601563 C 1411.846557617188 2025.257690429688 1410.998413085938 2025.321166992188 1410.450317382813 2025.355102539063 C 1409.68310546875 2025.402465820313 1407.981079101563 2025.444458007813 1407.587768554688 2025.372436523438 C 1407.555908203125 2025.380249023438 1407.5322265625 2025.387573242188 1407.520141601563 2025.394165039063 C 1407.265258789063 2025.539672851563 1409.53173828125 2025.490112304688 1410.450317382813 2025.433227539063 C 1411.20751953125 2025.386352539063 1412.544677734375 2025.283325195313 1412.138916015625 2025.195190429688 C 1412.133178710938 2025.193969726563 1412.12646484375 2025.192993164063 1412.121215820313 2025.192016601563 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m1zzc5 =
    '<svg viewBox="0.0 0.1 4.7 1.0" ><path transform="translate(-1407.51, -2025.15)" d="M 1412.146850585938 2025.2294921875 C 1412.142700195313 2025.228515625 1412.138793945313 2025.22802734375 1412.134765625 2025.227294921875 C 1412.118530273438 2025.305908203125 1411.02978515625 2025.388671875 1410.374633789063 2025.42919921875 C 1409.608032226563 2025.4765625 1407.912109375 2025.5185546875 1407.513793945313 2025.447021484375 C 1407.487426757813 2025.56884765625 1409.582641601563 2025.521484375 1410.458251953125 2025.46728515625 C 1411.215576171875 2025.420654296875 1412.552734375 2025.317626953125 1412.146850585938 2025.2294921875 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sk6g4 =
    '<svg viewBox="0.0 0.0 5.9 1.0" ><path transform="translate(-1425.74, -2017.62)" d="M 1426.385375976563 2017.825561523438 C 1425.44970703125 2017.775512695313 1425.610229492188 2017.701782226563 1426.395263671875 2017.657836914063 C 1427.038696289063 2017.621948242188 1429.061889648438 2017.610717773438 1430.316528320313 2017.647094726563 C 1431.356567382813 2017.677612304688 1432.0302734375 2017.730346679688 1431.377319335938 2017.801391601563 C 1430.38671875 2017.909057617188 1427.645263671875 2017.892700195313 1426.385375976563 2017.825561523438 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nvsvrn =
    '<svg viewBox="0.0 0.1 5.9 1.0" ><path transform="translate(-1425.75, -2019.66)" d="M 1425.988037109375 2019.727172851563 C 1426.054077148438 2019.749389648438 1426.236938476563 2019.771362304688 1426.56201171875 2019.790405273438 C 1427.736694335938 2019.858032226563 1430.284423828125 2019.875854492188 1431.196166992188 2019.768188476563 C 1431.29345703125 2019.756958007813 1431.354858398438 2019.745971679688 1431.391479492188 2019.735717773438 C 1431.697265625 2019.763305664063 1431.753051757813 2019.797729492188 1431.383911132813 2019.837768554688 C 1430.393188476563 2019.945678710938 1427.65185546875 2019.929077148438 1426.391845703125 2019.861938476563 C 1425.661010742188 2019.822875976563 1425.605224609375 2019.769653320313 1425.988037109375 2019.727172851563 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e7u90b =
    '<svg viewBox="0.0 0.1 5.9 1.0" ><path transform="translate(-1425.76, -2020.7)" d="M 1426.397216796875 2020.855712890625 C 1427.6572265625 2020.9228515625 1430.398559570313 2020.939453125 1431.38916015625 2020.83154296875 C 1431.496704101563 2020.81982421875 1431.564331054688 2020.808837890625 1431.604125976563 2020.798095703125 C 1431.693481445313 2020.820068359375 1431.64208984375 2020.8447265625 1431.38916015625 2020.872314453125 C 1430.398559570313 2020.97998046875 1427.6572265625 2020.963623046875 1426.397216796875 2020.896240234375 C 1425.8486328125 2020.8671875 1425.684936523438 2020.82958984375 1425.795776367188 2020.794921875 C 1425.869750976563 2020.816650390625 1426.060302734375 2020.837646484375 1426.397216796875 2020.855712890625 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k56j13 =
    '<svg viewBox="2.0 7.1 30.4 1.4" ><path transform="translate(-1393.09, -2025.64)" d="M 1397.263549804688 2032.744995117188 C 1396.5791015625 2032.892700195313 1396.200073242188 2033.044555664063 1396.200073242188 2033.188598632813 C 1396.200073242188 2033.776733398438 1402.498779296875 2034.006225585938 1410.269165039063 2034.006225585938 C 1418.039428710938 2034.006225585938 1424.338745117188 2033.776733398438 1424.338745117188 2033.188598632813 C 1424.338745117188 2033.044555664063 1423.958618164063 2032.892700195313 1423.2744140625 2032.744995117188 C 1424.677734375 2032.944702148438 1425.487060546875 2033.163208007813 1425.487060546875 2033.365844726563 C 1425.487060546875 2033.953735351563 1418.673583984375 2034.183471679688 1410.269165039063 2034.183471679688 C 1401.86474609375 2034.183471679688 1395.051147460938 2033.953735351563 1395.051147460938 2033.365844726563 C 1395.051147460938 2033.163208007813 1395.860229492188 2032.944702148438 1397.263549804688 2032.744995117188 Z" fill="#010101" fill-opacity="0.02" stroke="#050101" stroke-width="1" stroke-opacity="0.02" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_srlrgq =
    '<svg viewBox="32.7 4.3 1.0 1.0" ><path transform="translate(-1439.5, -1938.1)" d="M 1472.197021484375 1942.384033203125" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="8.48073959350586" stroke-opacity="0.06" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_dj4ou5 =
    '<svg viewBox="0.0 0.0 16.6 1.0" ><path transform="translate(-1451.82, -1945.88)" d="M 1467.824951171875 1945.9765625 C 1468.305053710938 1945.9892578125 1468.579223632813 1946.0302734375 1468.392822265625 1946.067504882813 C 1467.27197265625 1946.290405273438 1463.988403320313 1946.478149414063 1460.133056640625 1946.478149414063 C 1456.279174804688 1946.478149414063 1452.994750976563 1946.290405273438 1451.8740234375 1946.067504882813 C 1451.688842773438 1946.0302734375 1451.961791992188 1945.9892578125 1452.441772460938 1945.9765625 C 1457.088012695313 1945.852905273438 1463.178955078125 1945.852905273438 1467.824951171875 1945.9765625 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_24332h =
    '<svg viewBox="0.0 0.0 8.3 1.0" ><path transform="translate(-1462.31, -1958.98)" d="M 1470.585083007813 1959.084228515625 C 1469.353881835938 1959.1318359375 1467.9453125 1959.160400390625 1466.447875976563 1959.160400390625 C 1464.951538085938 1959.160400390625 1463.543090820313 1959.1318359375 1462.31103515625 1959.084228515625 C 1463.451416015625 1959.0166015625 1464.884887695313 1958.97607421875 1466.447875976563 1958.97607421875 C 1468.01123046875 1958.97607421875 1469.445434570313 1959.0166015625 1470.585083007813 1959.084228515625 Z" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_118ye0 =
    '<svg viewBox="33.1 4.7 1.0 1.0" ><path transform="translate(-1440.1, -1950.21)" d="M 1473.197021484375 1954.883056640625" fill="#010101" fill-opacity="0.06" stroke="#050101" stroke-width="2" stroke-opacity="0.06" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_6gegp9 =
    '<svg viewBox="0.0 0.0 54.0 48.1" ><path transform="translate(1088.77, -1286.62)" d="M -1034.738037109375 1316.245971679688 C -1034.738037109375 1329.524658203125 -1046.834106445313 1334.708129882813 -1061.755615234375 1334.708129882813 C -1076.676879882813 1334.708129882813 -1088.772827148438 1329.524658203125 -1088.772827148438 1316.245971679688 C -1088.772827148438 1302.967651367188 -1076.676879882813 1286.622314453125 -1061.755615234375 1286.622314453125 C -1046.834106445313 1286.622314453125 -1034.738037109375 1302.967651367188 -1034.738037109375 1316.245971679688 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kh6wa0 =
    '<svg viewBox="0.0 0.0 54.0 48.0" ><path transform="translate(1088.77, -1286.82)" d="M -1060.446044921875 1286.866455078125 C -1047.00732421875 1287.780883789063 -1036.320922851563 1302.600830078125 -1036.320922851563 1314.710693359375 C -1036.320922851563 1327.211547851563 -1047.708251953125 1332.091186523438 -1061.755615234375 1332.091186523438 C -1075.802734375 1332.091186523438 -1087.189697265625 1327.211547851563 -1087.189697265625 1314.710693359375 C -1087.189697265625 1302.600830078125 -1076.503662109375 1287.780883789063 -1063.064697265625 1286.866455078125 C -1077.377685546875 1287.783569335938 -1088.772827148438 1303.557983398438 -1088.772827148438 1316.445678710938 C -1088.772827148438 1329.724609375 -1076.676879882813 1334.907836914063 -1061.755615234375 1334.907836914063 C -1046.834106445313 1334.907836914063 -1034.738037109375 1329.724609375 -1034.738037109375 1316.445678710938 C -1034.738037109375 1303.557983398438 -1046.13330078125 1287.783569335938 -1060.446044921875 1286.866455078125 Z" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vd9vjg =
    '<svg viewBox="17.2 41.5 38.6 34.3" ><path transform="translate(1070.39, -1275.05)" d="M -1014.602416992188 1337.678466796875 C -1014.602416992188 1347.15576171875 -1023.235717773438 1350.854736328125 -1033.885375976563 1350.854736328125 C -1044.534912109375 1350.854736328125 -1053.168212890625 1347.15576171875 -1053.168212890625 1337.678466796875 C -1053.168212890625 1328.20166015625 -1044.534912109375 1316.53515625 -1033.885375976563 1316.53515625 C -1023.235717773438 1316.53515625 -1014.602416992188 1328.20166015625 -1014.602416992188 1337.678466796875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_a7t98d =
    '<svg viewBox="17.2 55.4 38.6 20.4" ><path transform="translate(1070.39, -1337.8)" d="M -1016.088500976563 1393.20458984375 C -1015.965209960938 1394.01513671875 -1015.898803710938 1394.818481445313 -1015.898803710938 1395.606079101563 C -1015.898803710938 1404.4462890625 -1023.951904296875 1407.896484375 -1033.885375976563 1407.896484375 C -1043.81884765625 1407.896484375 -1051.872314453125 1404.4462890625 -1051.872314453125 1395.606079101563 C -1051.872314453125 1394.818481445313 -1051.804931640625 1394.01513671875 -1051.681762695313 1393.20458984375 C -1052.638061523438 1395.607055664063 -1053.168212890625 1398.08447265625 -1053.168212890625 1400.428955078125 C -1053.168212890625 1409.906372070313 -1044.534912109375 1413.60546875 -1033.885375976563 1413.60546875 C -1023.235717773438 1413.60546875 -1014.602416992188 1409.906372070313 -1014.602416992188 1400.428955078125 C -1014.602416992188 1398.08447265625 -1015.13232421875 1395.607055664063 -1016.088500976563 1393.20458984375 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hfga4u =
    '<svg viewBox="0.0 0.0 19.2 26.5" ><path transform="translate(1148.01, -1351.03)" d="M -1146.078125 1376.351684570313 C -1144.134521484375 1378.728637695313 -1140.827514648438 1377.028076171875 -1138.803955078125 1375.141845703125 C -1136.020385742188 1372.54638671875 -1135.362670898438 1368.584228515625 -1133.201904296875 1365.59716796875 C -1131.498168945313 1363.242065429688 -1129.33642578125 1360.517700195313 -1128.866821289063 1357.552612304688 C -1128.369262695313 1354.406372070313 -1131.647705078125 1351.21142578125 -1134.390258789063 1351.029541015625 C -1138.01708984375 1350.78955078125 -1153.337768554688 1367.473999023438 -1146.078125 1376.351684570313 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_r9temy =
    '<svg viewBox="17.2 61.2 38.6 14.6" ><path transform="translate(1070.39, -1364.14)" d="M -1033.885375976563 1437.240600585938 C -1044.022705078125 1437.240600585938 -1052.326416015625 1433.884155273438 -1053.102783203125 1425.387573242188 C -1053.141967773438 1425.85205078125 -1053.168212890625 1426.31396484375 -1053.168212890625 1426.769653320313 C -1053.168212890625 1436.246826171875 -1044.534912109375 1439.946044921875 -1033.885375976563 1439.946044921875 C -1023.235717773438 1439.946044921875 -1014.602416992188 1436.246826171875 -1014.602416992188 1426.769653320313 C -1014.602416992188 1426.31396484375 -1014.628173828125 1425.85205078125 -1014.667724609375 1425.387573242188 C -1015.443969726563 1433.884155273438 -1023.747680664063 1437.240600585938 -1033.885375976563 1437.240600585938 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_c7499b =
    '<svg viewBox="0.0 0.0 24.0 21.9" ><path transform="translate(847.73, -1306.82)" d="M -824.1054077148438 1309.028930664063 C -825.796875 1306.466430664063 -828.7169189453125 1306.427124023438 -831.3003540039063 1307.414306640625 C -834.8564453125 1308.772094726563 -836.9554443359375 1312.195922851563 -840.080810546875 1314.151611328125 C -842.5451049804688 1315.6923828125 -845.5735473632813 1317.4033203125 -847.1233520507813 1319.974365234375 C -848.768310546875 1322.701904296875 -846.8109741210938 1326.673095703125 -844.459228515625 1328.095947265625 C -837.7110595703125 1332.178344726563 -821.2293701171875 1313.386474609375 -824.1054077148438 1309.028930664063 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_raty1b =
    '<svg viewBox="12.5 0.0 14.9 14.8" ><path transform="translate(1091.46, -1088.0)" d="M -1066.22216796875 1089.674926757813 C -1068.806030273438 1086.79052734375 -1072.363159179688 1087.946655273438 -1075.50732421875 1090.762573242188 C -1078.65087890625 1093.578369140625 -1080.190551757813 1096.986450195313 -1077.606201171875 1099.871948242188 C -1075.166748046875 1102.595336914063 -1069.925659179688 1103.874267578125 -1066.701782226563 1101.639038085938 C -1069.585693359375 1103.57666015625 -1074.217041015625 1102.430297851563 -1076.380859375 1100.014404296875 C -1078.688720703125 1097.438354492188 -1077.313842773438 1094.394897460938 -1074.505981445313 1091.879638671875 C -1071.698486328125 1089.365844726563 -1068.522094726563 1088.333374023438 -1066.21435546875 1090.909301757813 C -1063.907104492188 1093.485473632813 -1063.34228515625 1098.694946289063 -1066.149536132813 1101.209594726563 C -1063.006103515625 1098.394165039063 -1063.63818359375 1092.559692382813 -1066.22216796875 1089.674926757813 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6d0j3o =
    '<svg viewBox="12.7 0.0 14.9 14.8" ><path transform="translate(1090.64, -1088.0)" d="M -1076.606201171875 1099.871948242188 C -1079.1904296875 1096.986450195313 -1077.650634765625 1093.578369140625 -1074.506958007813 1090.762573242188 C -1071.363037109375 1087.946655273438 -1067.805786132813 1086.79052734375 -1065.22216796875 1089.674926757813 C -1062.638305664063 1092.559692382813 -1062.005859375 1098.394165039063 -1065.149536132813 1101.209594726563 C -1068.29345703125 1104.025756835938 -1074.0224609375 1102.7568359375 -1076.606201171875 1099.871948242188 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_oxhd78 =
    '<svg viewBox="51.8 1.5 14.9 14.8" ><path transform="translate(914.67, -1094.55)" d="M -849.3355712890625 1107.871948242188 C -846.751708984375 1104.986572265625 -848.2913208007813 1101.578369140625 -851.4347534179688 1098.762573242188 C -854.5787353515625 1095.946533203125 -858.1359252929688 1094.790405273438 -860.7199096679688 1097.674682617188 C -863.3035278320313 1100.559936523438 -863.9361572265625 1106.394165039063 -860.7923583984375 1109.2099609375 C -857.6486206054688 1112.025756835938 -851.91943359375 1110.7568359375 -849.3355712890625 1107.871948242188 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3d6uyl =
    '<svg viewBox="7.8 3.2 60.0 53.4" ><path transform="translate(1112.86, -1102.24)" d="M -1045.1181640625 1138.265380859375 C -1045.1181640625 1152.997436523438 -1058.538330078125 1158.74853515625 -1075.093505859375 1158.74853515625 C -1091.648559570313 1158.74853515625 -1105.069213867188 1152.997436523438 -1105.069213867188 1138.265380859375 C -1105.069213867188 1123.532958984375 -1091.648559570313 1105.39697265625 -1075.093505859375 1105.39697265625 C -1058.538330078125 1105.39697265625 -1045.1181640625 1123.532958984375 -1045.1181640625 1138.265380859375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_d6gagr =
    '<svg viewBox="13.3 20.1 20.1 19.8" ><path transform="translate(1088.12, -1178.51)" d="M -1074.626586914063 1210.174438476563 C -1075.089111328125 1211.660766601563 -1074.722778320313 1214.334838867188 -1073.974243164063 1215.688598632813 C -1073.242065429688 1217.013061523438 -1071.906494140625 1217.715576171875 -1070.478149414063 1218.05810546875 C -1064.246826171875 1219.554077148438 -1055.593017578125 1215.409057617188 -1054.803833007813 1208.57958984375 C -1054.479125976563 1205.764038085938 -1055.097412109375 1201.769775390625 -1057.4873046875 1199.915283203125 C -1062.5087890625 1196.01806640625 -1069.166748046875 1201.554077148438 -1072.191284179688 1205.485717773438 C -1073.229736328125 1206.835815429688 -1074.119873046875 1208.546752929688 -1074.626586914063 1210.174438476563 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_z51col =
    '<svg viewBox="21.0 25.4 6.7 6.9" ><path transform="translate(1053.34, -1202.45)" d="M -1032.112426757813 1233.8388671875 C -1031.885986328125 1234.30029296875 -1031.410400390625 1234.527587890625 -1030.92578125 1234.64404296875 C -1030.143920898438 1234.831420898438 -1029.250122070313 1234.757568359375 -1028.419799804688 1234.473022460938 C -1027.004150390625 1233.9873046875 -1025.902954101563 1232.978881835938 -1025.65576171875 1231.528564453125 C -1025.428833007813 1230.197998046875 -1025.999633789063 1228.930053710938 -1026.805053710938 1228.352172851563 C -1029.8408203125 1226.174682617188 -1033.288940429688 1231.443115234375 -1032.112426757813 1233.8388671875 Z" fill="#fdfdff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6ieyo0 =
    '<svg viewBox="42.5 20.1 20.1 19.8" ><path transform="translate(956.47, -1178.51)" d="M -894.0877075195313 1210.174438476563 C -893.6248779296875 1211.660766601563 -893.9915771484375 1214.334838867188 -894.7400512695313 1215.688598632813 C -895.4727172851563 1217.013061523438 -896.8074340820313 1217.715576171875 -898.2357788085938 1218.05810546875 C -904.4674072265625 1219.554077148438 -913.1207885742188 1215.409057617188 -913.910400390625 1208.57958984375 C -914.2354125976563 1205.764038085938 -913.6167602539063 1201.769775390625 -911.2269287109375 1199.915283203125 C -906.20556640625 1196.01806640625 -899.5472412109375 1201.554077148438 -896.5233154296875 1205.485717773438 C -895.4844970703125 1206.835815429688 -894.5944213867188 1208.546752929688 -894.0877075195313 1210.174438476563 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ypofc5 =
    '<svg viewBox="48.1 25.4 6.7 6.9" ><path transform="translate(930.99, -1202.45)" d="M -876.3488159179688 1233.8388671875 C -876.5750732421875 1234.30029296875 -877.0506591796875 1234.527587890625 -877.535400390625 1234.64404296875 C -878.3169555664063 1234.831420898438 -879.2112426757813 1234.757568359375 -880.0408935546875 1234.473022460938 C -881.4571533203125 1233.9873046875 -882.5584106445313 1232.978881835938 -882.8052978515625 1231.528564453125 C -883.0322875976563 1230.197998046875 -882.4616088867188 1228.930053710938 -881.6563720703125 1228.352172851563 C -878.6204223632813 1226.174682617188 -875.1725463867188 1231.443115234375 -876.3488159179688 1233.8388671875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ykk5kt =
    '<svg viewBox="7.8 17.8 60.0 38.7" ><path transform="translate(1112.86, -1168.38)" d="M -1051.075073242188 1186.203002929688 C -1049.17919921875 1190.622314453125 -1048.109130859375 1195.307983398438 -1048.109130859375 1199.691772460938 C -1048.109130859375 1214.423706054688 -1060.1904296875 1220.174438476563 -1075.093505859375 1220.174438476563 C -1089.996337890625 1220.174438476563 -1102.078002929688 1214.423706054688 -1102.078002929688 1199.691772460938 C -1102.078002929688 1195.307983398438 -1101.007690429688 1190.622314453125 -1099.1123046875 1186.203002929688 C -1102.853149414063 1191.86767578125 -1105.069213867188 1198.415893554688 -1105.069213867188 1204.401733398438 C -1105.069213867188 1219.134155273438 -1091.648559570313 1224.884765625 -1075.093505859375 1224.884765625 C -1058.538330078125 1224.884765625 -1045.1181640625 1219.134155273438 -1045.1181640625 1204.401733398438 C -1045.1181640625 1198.415893554688 -1047.33349609375 1191.86767578125 -1051.075073242188 1186.203002929688 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_78iy58 =
    '<svg viewBox="0.0 0.0 4.4 5.7" ><path transform="translate(1019.45, -1228.96)" d="M -1015.046020507813 1231.812377929688 C -1015.046020507813 1233.386962890625 -1016.03271484375 1234.663940429688 -1017.249389648438 1234.663940429688 C -1018.466674804688 1234.663940429688 -1019.453247070313 1233.386962890625 -1019.453247070313 1231.812377929688 C -1019.453247070313 1230.2373046875 -1018.466674804688 1228.960205078125 -1017.249389648438 1228.960205078125 C -1016.03271484375 1228.960205078125 -1015.046020507813 1230.2373046875 -1015.046020507813 1231.812377929688 Z" fill="#00a7d5" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ky5tbb =
    '<svg viewBox="0.6 1.0 1.6 2.1" ><path transform="translate(1016.91, -1233.39)" d="M -1014.708129882813 1235.432739257813 C -1014.708129882813 1236.018798828125 -1015.075561523438 1236.494018554688 -1015.5283203125 1236.494018554688 C -1015.981567382813 1236.494018554688 -1016.348388671875 1236.018798828125 -1016.348388671875 1235.432739257813 C -1016.348388671875 1234.846313476563 -1015.981567382813 1234.37109375 -1015.5283203125 1234.37109375 C -1015.075561523438 1234.37109375 -1014.708129882813 1234.846313476563 -1014.708129882813 1235.432739257813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8j2qgo =
    '<svg viewBox="0.0 0.0 4.4 5.7" ><path transform="translate(882.89, -1228.96)" d="M -878.479248046875 1231.812377929688 C -878.479248046875 1233.386962890625 -879.4657592773438 1234.663940429688 -880.6824951171875 1234.663940429688 C -881.8999633789063 1234.663940429688 -882.8861694335938 1233.386962890625 -882.8861694335938 1231.812377929688 C -882.8861694335938 1230.2373046875 -881.8999633789063 1228.960205078125 -880.6824951171875 1228.960205078125 C -879.4657592773438 1228.960205078125 -878.479248046875 1230.2373046875 -878.479248046875 1231.812377929688 Z" fill="#00a7d5" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_cgcsxb =
    '<svg viewBox="0.6 1.0 1.6 2.1" ><path transform="translate(880.35, -1233.39)" d="M -878.1427612304688 1235.432739257813 C -878.1427612304688 1236.018798828125 -878.5103759765625 1236.494018554688 -878.9627685546875 1236.494018554688 C -879.4164428710938 1236.494018554688 -879.7830200195313 1236.018798828125 -879.7830200195313 1235.432739257813 C -879.7830200195313 1234.846313476563 -879.4164428710938 1234.37109375 -878.9627685546875 1234.37109375 C -878.5103759765625 1234.37109375 -878.1427612304688 1234.846313476563 -878.1427612304688 1235.432739257813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_q3ovck =
    '<svg viewBox="7.8 22.8 60.0 33.6" ><path transform="translate(1112.86, -1190.6)" d="M -1048.226684570313 1213.352172851563 C -1046.837280273438 1217.021362304688 -1046.069458007813 1220.798461914063 -1046.069458007813 1224.37548828125 C -1046.069458007813 1239.107666015625 -1059.06396484375 1244.858154296875 -1075.093505859375 1244.858154296875 C -1091.123046875 1244.858154296875 -1104.117919921875 1239.107666015625 -1104.117919921875 1224.37548828125 C -1104.117919921875 1220.798461914063 -1103.349975585938 1217.022094726563 -1101.96044921875 1213.352416992188 C -1103.949340820313 1217.653442382813 -1105.069213867188 1222.1884765625 -1105.069213867188 1226.440673828125 C -1105.069213867188 1241.1728515625 -1091.648559570313 1246.924072265625 -1075.093505859375 1246.924072265625 C -1058.538330078125 1246.924072265625 -1045.1181640625 1241.1728515625 -1045.1181640625 1226.440673828125 C -1045.1181640625 1222.1884765625 -1046.237670898438 1217.653442382813 -1048.226684570313 1213.352172851563 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tum9jb =
    '<svg viewBox="18.8 32.6 7.1 2.4" ><path transform="translate(1063.03, -1234.76)" d="M -1037.115966796875 1268.500122070313 C -1037.115966796875 1269.154907226563 -1038.699340820313 1269.684814453125 -1040.651977539063 1269.684814453125 C -1042.604370117188 1269.684814453125 -1044.18701171875 1269.154907226563 -1044.18701171875 1268.500122070313 C -1044.18701171875 1267.845581054688 -1042.604370117188 1267.316284179688 -1040.651977539063 1267.316284179688 C -1038.699340820313 1267.316284179688 -1037.115966796875 1267.845581054688 -1037.115966796875 1268.500122070313 Z" fill="#f398b8" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_f72nff =
    '<svg viewBox="0.0 0.0 10.0 7.0" ><path transform="translate(967.54, -1281.01)" d="M -967.5449829101563 1283.702880859375 C -967.5449829101563 1281.763427734375 -965.3028564453125 1281.006225585938 -962.5358276367188 1281.006225585938 C -959.7691040039063 1281.006225585938 -957.5255126953125 1281.763427734375 -957.5255126953125 1283.702880859375 C -957.5255126953125 1285.64306640625 -959.7691040039063 1288.031982421875 -962.5358276367188 1288.031982421875 C -965.3028564453125 1288.031982421875 -967.5449829101563 1285.64306640625 -967.5449829101563 1283.702880859375 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rs21pz =
    '<svg viewBox="0.0 1.4 10.0 5.7" ><path transform="translate(967.54, -1287.14)" d="M -958.0023803710938 1288.503173828125 C -957.9796142578125 1288.63525390625 -957.9651489257813 1288.772094726563 -957.9651489257813 1288.917358398438 C -957.9651489257813 1290.857788085938 -960.0111694335938 1293.245361328125 -962.5358276367188 1293.245361328125 C -965.059814453125 1293.245361328125 -967.1064453125 1290.857788085938 -967.1064453125 1288.917358398438 C -967.1064453125 1288.772094726563 -967.091552734375 1288.63525390625 -967.0689697265625 1288.503173828125 C -967.3717041015625 1288.866333007813 -967.5449829101563 1289.306518554688 -967.5449829101563 1289.838989257813 C -967.5449829101563 1291.778930664063 -965.3028564453125 1294.167846679688 -962.5358276367188 1294.167846679688 C -959.7691040039063 1294.167846679688 -957.5255126953125 1291.778930664063 -957.5255126953125 1289.838989257813 C -957.5255126953125 1289.306518554688 -957.6995239257813 1288.866333007813 -958.0023803710938 1288.503173828125 Z" fill="#704b32" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_liskfr =
    '<svg viewBox="2.7 0.5 4.7 1.2" ><path transform="translate(955.48, -1283.22)" d="M -948.1400756835938 1284.306518554688 C -948.1400756835938 1284.633056640625 -949.1856689453125 1284.898315429688 -950.4747314453125 1284.898315429688 C -951.7645874023438 1284.898315429688 -952.8092651367188 1284.633056640625 -952.8092651367188 1284.306518554688 C -952.8092651367188 1283.97900390625 -951.7645874023438 1283.714233398438 -950.4747314453125 1283.714233398438 C -949.1856689453125 1283.714233398438 -948.1400756835938 1283.97900390625 -948.1400756835938 1284.306518554688 Z" fill="#fff5d4" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7bg7uy =
    '<svg viewBox="50.0 32.6 7.1 2.4" ><path transform="translate(922.72, -1234.76)" d="M -865.6781005859375 1268.500122070313 C -865.6781005859375 1269.154907226563 -867.2607421875 1269.684814453125 -869.213134765625 1269.684814453125 C -871.1653442382813 1269.684814453125 -872.7481079101563 1269.154907226563 -872.7481079101563 1268.500122070313 C -872.7481079101563 1267.845581054688 -871.1653442382813 1267.316284179688 -869.213134765625 1267.316284179688 C -867.2607421875 1267.316284179688 -865.6781005859375 1267.845581054688 -865.6781005859375 1268.500122070313 Z" fill="#f398b8" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ot75rs =
    '<svg viewBox="8.1 66.9 27.7 24.7" ><path transform="translate(1111.39, -1389.69)" d="M -1075.520263671875 1471.81640625 C -1075.520263671875 1478.634399414063 -1081.731689453125 1481.296142578125 -1089.392944335938 1481.296142578125 C -1097.05419921875 1481.296142578125 -1103.264892578125 1478.634399414063 -1103.264892578125 1471.81640625 C -1103.264892578125 1464.998901367188 -1097.05419921875 1456.60595703125 -1089.392944335938 1456.60595703125 C -1081.731689453125 1456.60595703125 -1075.520263671875 1464.998901367188 -1075.520263671875 1471.81640625 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_52wskf =
    '<svg viewBox="0.0 4.7 20.1 15.1" ><path transform="translate(1082.13, -1491.48)" d="M -1062.061767578125 1505.422973632813 C -1062.061767578125 1509.585571289063 -1066.554321289063 1511.21044921875 -1072.097534179688 1511.21044921875 C -1077.640014648438 1511.21044921875 -1082.133178710938 1509.585571289063 -1082.133178710938 1505.422973632813 C -1082.133178710938 1501.259887695313 -1077.640014648438 1496.135009765625 -1072.097534179688 1496.135009765625 C -1066.554321289063 1496.135009765625 -1062.061767578125 1501.259887695313 -1062.061767578125 1505.422973632813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_95gxd =
    '<svg viewBox="0.0 10.3 20.1 9.4" ><path transform="translate(1082.13, -1516.92)" d="M -1063.073120117188 1527.22314453125 C -1062.994873046875 1527.651123046875 -1062.952270507813 1528.07568359375 -1062.952270507813 1528.491455078125 C -1062.952270507813 1532.654052734375 -1067.046997070313 1534.278930664063 -1072.097534179688 1534.278930664063 C -1077.148315429688 1534.278930664063 -1081.2421875 1532.654052734375 -1081.2421875 1528.491455078125 C -1081.2421875 1528.07568359375 -1081.200073242188 1527.651123046875 -1081.121215820313 1527.22314453125 C -1081.7685546875 1528.421875 -1082.133178710938 1529.683349609375 -1082.133178710938 1530.867431640625 C -1082.133178710938 1535.029663085938 -1077.640014648438 1536.655029296875 -1072.097534179688 1536.655029296875 C -1066.554321289063 1536.655029296875 -1062.061767578125 1535.029663085938 -1062.061767578125 1530.867431640625 C -1062.061767578125 1529.683349609375 -1062.425903320313 1528.421875 -1063.073120117188 1527.22314453125 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_iyv1sg =
    '<svg viewBox="0.0 0.0 4.3 4.3" ><path transform="translate(1077.19, -1480.83)" d="M -1077.175048828125 1484.044067382813 C -1077.407836914063 1485.73095703125 -1075.341796875 1485.1552734375 -1074.504028320313 1484.496459960938 C -1073.814086914063 1483.9541015625 -1072.59521484375 1482.7587890625 -1072.9658203125 1481.736206054688 C -1073.89404296875 1479.171264648438 -1076.991577148438 1482.71533203125 -1077.175048828125 1484.044067382813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7yt360 =
    '<svg viewBox="0.0 0.9 4.3 3.5" ><path transform="translate(1077.19, -1484.76)" d="M -1072.980834960938 1485.63037109375 C -1073.232055664063 1486.393310546875 -1074.004516601563 1487.127685546875 -1074.504028320313 1487.520263671875 C -1075.20361328125 1488.070190429688 -1076.75537109375 1488.5576171875 -1077.113891601563 1487.722778320313 C -1077.143188476563 1487.813110351563 -1077.164306640625 1487.898315429688 -1077.175048828125 1487.97509765625 C -1077.407836914063 1489.66162109375 -1075.341796875 1489.086181640625 -1074.504028320313 1488.427124023438 C -1073.814086914063 1487.884521484375 -1072.59521484375 1486.689208984375 -1072.9658203125 1485.666870117188 C -1072.970581054688 1485.654052734375 -1072.976196289063 1485.643188476563 -1072.980834960938 1485.63037109375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4o9mr3 =
    '<svg viewBox="0.0 0.9 4.3 3.4" ><path transform="translate(1077.17, -1484.82)" d="M -1072.943359375 1485.725219726563 C -1072.946655273438 1485.716552734375 -1072.950317382813 1485.709228515625 -1072.95361328125 1485.701416015625 C -1072.969360351563 1486.613037109375 -1073.961547851563 1487.57275390625 -1074.558837890625 1488.042602539063 C -1075.256591796875 1488.591796875 -1076.803100585938 1489.077880859375 -1077.166015625 1488.25048828125 C -1077.1904296875 1489.660522460938 -1075.280517578125 1489.113159179688 -1074.482177734375 1488.485473632813 C -1073.792236328125 1487.943115234375 -1072.573120117188 1486.74755859375 -1072.943359375 1485.725219726563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ih809o =
    '<svg viewBox="0.0 10.9 20.1 8.8" ><path transform="translate(1082.13, -1519.79)" d="M -1062.7607421875 1530.728881835938 C -1062.623046875 1531.263916015625 -1062.54833984375 1531.795043945313 -1062.54833984375 1532.311279296875 C -1062.54833984375 1536.272338867188 -1066.82373046875 1537.818481445313 -1072.097534179688 1537.818481445313 C -1077.37158203125 1537.818481445313 -1081.646118164063 1536.272338867188 -1081.646118164063 1532.311279296875 C -1081.646118164063 1531.795043945313 -1081.57177734375 1531.263916015625 -1081.433837890625 1530.728881835938 C -1081.883422851563 1531.732299804688 -1082.133178710938 1532.760375976563 -1082.133178710938 1533.736694335938 C -1082.133178710938 1537.899169921875 -1077.640014648438 1539.524291992188 -1072.097534179688 1539.524291992188 C -1066.554321289063 1539.524291992188 -1062.061767578125 1537.899169921875 -1062.061767578125 1533.736694335938 C -1062.061767578125 1532.760375976563 -1062.3115234375 1531.732299804688 -1062.7607421875 1530.728881835938 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bx0apo =
    '<svg viewBox="0.0 0.0 4.3 4.3" ><path transform="translate(999.0, -1480.83)" d="M -994.7261962890625 1484.044067382813 C -994.4937744140625 1485.73095703125 -996.5599365234375 1485.1552734375 -997.3974609375 1484.496459960938 C -998.0875244140625 1483.9541015625 -999.306396484375 1482.7587890625 -998.935791015625 1481.736206054688 C -998.007568359375 1479.171264648438 -994.9095458984375 1482.71533203125 -994.7261962890625 1484.044067382813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_o75x4f =
    '<svg viewBox="0.0 0.9 4.3 3.5" ><path transform="translate(999.0, -1484.76)" d="M -998.9200439453125 1485.63037109375 C -998.669921875 1486.393310546875 -997.8970947265625 1487.127685546875 -997.3974609375 1487.520263671875 C -996.6978759765625 1488.070190429688 -995.1463623046875 1488.5576171875 -994.787353515625 1487.722778320313 C -994.7584228515625 1487.813110351563 -994.73681640625 1487.898315429688 -994.7261962890625 1487.97509765625 C -994.4937744140625 1489.66162109375 -996.5599365234375 1489.086181640625 -997.3974609375 1488.427124023438 C -998.0875244140625 1487.884521484375 -999.306396484375 1486.689208984375 -998.935791015625 1485.666870117188 C -998.930908203125 1485.654052734375 -998.925537109375 1485.643188476563 -998.9200439453125 1485.63037109375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_i5siro =
    '<svg viewBox="0.0 0.9 4.3 3.4" ><path transform="translate(999.0, -1484.82)" d="M -998.935791015625 1485.725219726563 C -998.9324951171875 1485.716552734375 -998.92919921875 1485.709228515625 -998.9259033203125 1485.701416015625 C -998.9100341796875 1486.613037109375 -997.9180908203125 1487.57275390625 -997.320556640625 1488.042602539063 C -996.623046875 1488.591796875 -995.076171875 1489.077880859375 -994.712890625 1488.25048828125 C -994.688720703125 1489.660522460938 -996.5992431640625 1489.113159179688 -997.3974609375 1488.485473632813 C -998.0875244140625 1487.943115234375 -999.306396484375 1486.74755859375 -998.935791015625 1485.725219726563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vqcl5t =
    '<svg viewBox="0.0 0.0 5.4 2.9" ><path transform="translate(1041.41, -1470.5)" d="M -1036.62451171875 1472.822875976563 C -1035.771484375 1472.243774414063 -1035.918579101563 1471.387451171875 -1036.634155273438 1470.879638671875 C -1037.22021484375 1470.463623046875 -1039.064575195313 1470.331176757813 -1040.2080078125 1470.755126953125 C -1041.156127929688 1471.107421875 -1041.77001953125 1471.720092773438 -1041.175048828125 1472.543212890625 C -1040.27197265625 1473.79296875 -1037.77294921875 1473.6015625 -1036.62451171875 1472.822875976563 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_edolg8 =
    '<svg viewBox="0.0 0.8 5.4 2.2" ><path transform="translate(1041.41, -1473.94)" d="M -1036.256103515625 1474.699096679688 C -1036.315795898438 1474.959228515625 -1036.482788085938 1475.213623046875 -1036.77880859375 1475.431274414063 C -1037.849853515625 1476.21630859375 -1040.172607421875 1476.422241210938 -1041.003295898438 1475.177490234375 C -1041.091674804688 1475.045532226563 -1041.148315429688 1474.91943359375 -1041.181518554688 1474.798217773438 C -1041.460693359375 1475.119873046875 -1041.510620117188 1475.517700195313 -1041.174072265625 1475.984008789063 C -1040.271240234375 1477.234008789063 -1037.772338867188 1477.04248046875 -1036.623657226563 1476.263549804688 C -1035.957397460938 1475.811157226563 -1035.907104492188 1475.192138671875 -1036.256103515625 1474.699096679688 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bq3yef =
    '<svg viewBox="0.0 1.2 5.4 1.8" ><path transform="translate(1041.4, -1475.68)" d="M -1036.61865234375 1477.540649414063 C -1037.767211914063 1478.319580078125 -1040.265991210938 1478.511108398438 -1041.169067382813 1477.261352539063 C -1041.266967773438 1477.125610351563 -1041.328857421875 1476.9970703125 -1041.365234375 1476.873413085938 C -1041.447143554688 1477.1259765625 -1041.399536132813 1477.413452148438 -1041.169067382813 1477.732666015625 C -1040.265991210938 1478.982666015625 -1037.767211914063 1478.791137695313 -1036.61865234375 1478.012329101563 C -1036.118530273438 1477.67333984375 -1035.969482421875 1477.239379882813 -1036.069580078125 1476.835815429688 C -1036.137939453125 1477.087036132813 -1036.3115234375 1477.331787109375 -1036.61865234375 1477.540649414063 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v9ugro =
    '<svg viewBox="8.1 74.9 27.7 16.7" ><path transform="translate(1111.39, -1425.81)" d="M -1077.537475585938 1500.738159179688 C -1076.913452148438 1502.44970703125 -1076.567626953125 1504.212890625 -1076.567626953125 1505.882690429688 C -1076.567626953125 1512.700439453125 -1082.31005859375 1515.361328125 -1089.392944335938 1515.361328125 C -1096.475952148438 1515.361328125 -1102.2177734375 1512.700439453125 -1102.2177734375 1505.882690429688 C -1102.2177734375 1504.212890625 -1101.871704101563 1502.44970703125 -1101.24853515625 1500.738159179688 C -1102.527465820313 1503.053100585938 -1103.264892578125 1505.588500976563 -1103.264892578125 1507.936645507813 C -1103.264892578125 1514.755126953125 -1097.05419921875 1517.416259765625 -1089.392944335938 1517.416259765625 C -1081.731689453125 1517.416259765625 -1075.520263671875 1514.755126953125 -1075.520263671875 1507.936645507813 C -1075.520263671875 1505.588500976563 -1076.25830078125 1503.053100585938 -1077.537475585938 1500.738159179688 Z" fill="#b77965" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nn072b =
    '<svg viewBox="38.2 66.9 27.7 24.7" ><path transform="translate(975.73, -1389.69)" d="M -909.7796020507813 1471.81640625 C -909.7796020507813 1478.634399414063 -915.9901733398438 1481.296142578125 -923.6517944335938 1481.296142578125 C -931.31298828125 1481.296142578125 -937.5239868164063 1478.634399414063 -937.5239868164063 1471.81640625 C -937.5239868164063 1464.998901367188 -931.31298828125 1456.60595703125 -923.6517944335938 1456.60595703125 C -915.9901733398438 1456.60595703125 -909.7796020507813 1464.998901367188 -909.7796020507813 1471.81640625 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wdw3g6 =
    '<svg viewBox="0.0 4.7 20.1 15.1" ><path transform="translate(916.39, -1491.48)" d="M -896.3189086914063 1505.422973632813 C -896.3189086914063 1509.585571289063 -900.8117065429688 1511.21044921875 -906.3544311523438 1511.21044921875 C -911.8973999023438 1511.21044921875 -916.39013671875 1509.585571289063 -916.39013671875 1505.422973632813 C -916.39013671875 1501.259887695313 -911.8973999023438 1496.135009765625 -906.3544311523438 1496.135009765625 C -900.8117065429688 1496.135009765625 -896.3189086914063 1501.259887695313 -896.3189086914063 1505.422973632813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qsmwvx =
    '<svg viewBox="0.0 10.3 20.1 9.4" ><path transform="translate(916.39, -1516.92)" d="M -897.3306274414063 1527.22314453125 C -897.2520751953125 1527.651123046875 -897.2098388671875 1528.07568359375 -897.2098388671875 1528.491455078125 C -897.2098388671875 1532.654052734375 -901.3037719726563 1534.278930664063 -906.3544311523438 1534.278930664063 C -911.4048461914063 1534.278930664063 -915.499267578125 1532.654052734375 -915.499267578125 1528.491455078125 C -915.499267578125 1528.07568359375 -915.4569091796875 1527.651123046875 -915.3788452148438 1527.22314453125 C -916.026123046875 1528.421875 -916.39013671875 1529.683349609375 -916.39013671875 1530.867431640625 C -916.39013671875 1535.029663085938 -911.8973999023438 1536.655029296875 -906.3544311523438 1536.655029296875 C -900.8117065429688 1536.655029296875 -896.3189086914063 1535.029663085938 -896.3189086914063 1530.867431640625 C -896.3189086914063 1529.683349609375 -896.6830444335938 1528.421875 -897.3306274414063 1527.22314453125 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_aqtwo1 =
    '<svg viewBox="0.0 0.0 4.3 4.3" ><path transform="translate(911.45, -1480.83)" d="M -911.4336547851563 1484.044067382813 C -911.666015625 1485.73095703125 -909.6002807617188 1485.1552734375 -908.7626953125 1484.496459960938 C -908.072265625 1483.9541015625 -906.8534545898438 1482.7587890625 -907.22412109375 1481.736206054688 C -908.1522216796875 1479.171264648438 -911.250244140625 1482.71533203125 -911.4336547851563 1484.044067382813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lwscwp =
    '<svg viewBox="0.0 0.9 4.3 3.5" ><path transform="translate(911.45, -1484.76)" d="M -907.2393798828125 1485.63037109375 C -907.4901733398438 1486.393310546875 -908.2630615234375 1487.127685546875 -908.7626953125 1487.520263671875 C -909.4619140625 1488.070190429688 -911.0133056640625 1488.5576171875 -911.3724365234375 1487.722778320313 C -911.4015502929688 1487.813110351563 -911.4230346679688 1487.898315429688 -911.4336547851563 1487.97509765625 C -911.666015625 1489.66162109375 -909.6002807617188 1489.086181640625 -908.7626953125 1488.427124023438 C -908.072265625 1487.884521484375 -906.8534545898438 1486.689208984375 -907.22412109375 1485.666870117188 C -907.2289428710938 1485.654052734375 -907.2347412109375 1485.643188476563 -907.2393798828125 1485.63037109375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2mzqxp =
    '<svg viewBox="0.0 0.9 4.3 3.4" ><path transform="translate(911.43, -1484.82)" d="M -907.2025756835938 1485.725219726563 C -907.2057495117188 1485.716552734375 -907.2091064453125 1485.709228515625 -907.2124633789063 1485.701416015625 C -907.2280883789063 1486.613037109375 -908.2201538085938 1487.57275390625 -908.8179931640625 1488.042602539063 C -909.5158081054688 1488.591796875 -911.062255859375 1489.077880859375 -911.4251708984375 1488.25048828125 C -911.4496459960938 1489.660522460938 -909.5394287109375 1489.113159179688 -908.7411499023438 1488.485473632813 C -908.0506591796875 1487.943115234375 -906.83203125 1486.74755859375 -907.2025756835938 1485.725219726563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kr0fqb =
    '<svg viewBox="0.0 10.9 20.1 8.8" ><path transform="translate(916.39, -1519.79)" d="M -897.0182495117188 1530.728881835938 C -896.8798217773438 1531.263916015625 -896.8059692382813 1531.795043945313 -896.8059692382813 1532.311279296875 C -896.8059692382813 1536.272338867188 -901.0806274414063 1537.818481445313 -906.3544311523438 1537.818481445313 C -911.6281127929688 1537.818481445313 -915.9033813476563 1536.272338867188 -915.9033813476563 1532.311279296875 C -915.9033813476563 1531.795043945313 -915.8292236328125 1531.263916015625 -915.6910400390625 1530.728881835938 C -916.1410522460938 1531.732299804688 -916.39013671875 1532.760375976563 -916.39013671875 1533.736694335938 C -916.39013671875 1537.899169921875 -911.8973999023438 1539.524291992188 -906.3544311523438 1539.524291992188 C -900.8117065429688 1539.524291992188 -896.3189086914063 1537.899169921875 -896.3189086914063 1533.736694335938 C -896.3189086914063 1532.760375976563 -896.568115234375 1531.732299804688 -897.0182495117188 1530.728881835938 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ipuneu =
    '<svg viewBox="0.0 0.0 4.3 4.3" ><path transform="translate(833.26, -1480.83)" d="M -828.985595703125 1484.044067382813 C -828.7529296875 1485.73095703125 -830.819091796875 1485.1552734375 -831.6565551757813 1484.496459960938 C -832.3468017578125 1483.9541015625 -833.565673828125 1482.7587890625 -833.1956787109375 1481.736206054688 C -832.2664794921875 1479.171264648438 -829.1693115234375 1482.71533203125 -828.985595703125 1484.044067382813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wov1lr =
    '<svg viewBox="0.0 0.9 4.3 3.5" ><path transform="translate(833.26, -1484.76)" d="M -833.1798706054688 1485.63037109375 C -832.9293823242188 1486.393310546875 -832.1561889648438 1487.127685546875 -831.6565551757813 1487.520263671875 C -830.9570922851563 1488.070190429688 -829.4056396484375 1488.5576171875 -829.0470581054688 1487.722778320313 C -829.0179443359375 1487.813110351563 -828.9962158203125 1487.898315429688 -828.985595703125 1487.97509765625 C -828.7529296875 1489.66162109375 -830.819091796875 1489.086181640625 -831.6565551757813 1488.427124023438 C -832.3468017578125 1487.884521484375 -833.565673828125 1486.689208984375 -833.1956787109375 1485.666870117188 C -833.190673828125 1485.654052734375 -833.1845703125 1485.643188476563 -833.1798706054688 1485.63037109375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_933i4h =
    '<svg viewBox="0.0 0.9 4.3 3.4" ><path transform="translate(833.26, -1484.82)" d="M -833.1956787109375 1485.725219726563 C -833.192138671875 1485.716552734375 -833.1884155273438 1485.709228515625 -833.1849365234375 1485.701416015625 C -833.1697387695313 1486.613037109375 -832.177490234375 1487.57275390625 -831.5801391601563 1488.042602539063 C -830.8817138671875 1488.591796875 -829.3353881835938 1489.077880859375 -828.972412109375 1488.25048828125 C -828.9486083984375 1489.660522460938 -830.8583984375 1489.113159179688 -831.6565551757813 1488.485473632813 C -832.3468017578125 1487.943115234375 -833.565673828125 1486.74755859375 -833.1956787109375 1485.725219726563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dm6l6a =
    '<svg viewBox="0.0 0.0 5.4 2.9" ><path transform="translate(875.67, -1470.5)" d="M -870.8832397460938 1472.822875976563 C -870.0303955078125 1472.243774414063 -870.1766967773438 1471.387451171875 -870.8923950195313 1470.879638671875 C -871.47900390625 1470.463623046875 -873.3231201171875 1470.331176757813 -874.466796875 1470.755126953125 C -875.4150390625 1471.107421875 -876.0289916992188 1471.720092773438 -875.43359375 1472.543212890625 C -874.5308837890625 1473.79296875 -872.0319213867188 1473.6015625 -870.8832397460938 1472.822875976563 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7yya05 =
    '<svg viewBox="0.0 0.8 5.4 2.2" ><path transform="translate(875.67, -1473.94)" d="M -870.513916015625 1474.699096679688 C -870.5740966796875 1474.959228515625 -870.740966796875 1475.213623046875 -871.037109375 1475.431274414063 C -872.1082153320313 1476.21630859375 -874.4306030273438 1476.422241210938 -875.26171875 1475.177490234375 C -875.3502197265625 1475.045532226563 -875.4059448242188 1474.91943359375 -875.4396362304688 1474.798217773438 C -875.7186889648438 1475.119873046875 -875.7692260742188 1475.517700195313 -875.4326171875 1475.984008789063 C -874.5296630859375 1477.234008789063 -872.03076171875 1477.04248046875 -870.8822631835938 1476.263549804688 C -870.2156982421875 1475.811157226563 -870.1651000976563 1475.192138671875 -870.513916015625 1474.699096679688 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_q0w7ko =
    '<svg viewBox="0.0 1.2 5.4 1.8" ><path transform="translate(875.66, -1475.68)" d="M -870.8755493164063 1477.540649414063 C -872.0241088867188 1478.319580078125 -874.5230712890625 1478.511108398438 -875.4258422851563 1477.261352539063 C -875.5240478515625 1477.125610351563 -875.5858764648438 1476.9970703125 -875.6220092773438 1476.873413085938 C -875.7034912109375 1477.1259765625 -875.6567993164063 1477.413452148438 -875.4258422851563 1477.732666015625 C -874.5230712890625 1478.982666015625 -872.0241088867188 1478.791137695313 -870.8755493164063 1478.012329101563 C -870.3755493164063 1477.67333984375 -870.2263793945313 1477.239379882813 -870.3271484375 1476.835815429688 C -870.39501953125 1477.087036132813 -870.568359375 1477.331787109375 -870.8755493164063 1477.540649414063 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yjv02n =
    '<svg viewBox="38.2 74.9 27.7 16.7" ><path transform="translate(975.73, -1425.81)" d="M -911.7962036132813 1500.738159179688 C -911.1723022460938 1502.44970703125 -910.8265991210938 1504.212890625 -910.8265991210938 1505.882690429688 C -910.8265991210938 1512.700439453125 -916.5686645507813 1515.361328125 -923.6517944335938 1515.361328125 C -930.7349243164063 1515.361328125 -936.4771118164063 1512.700439453125 -936.4771118164063 1505.882690429688 C -936.4771118164063 1504.212890625 -936.130859375 1502.44970703125 -935.5071411132813 1500.738159179688 C -936.7863159179688 1503.053100585938 -937.5239868164063 1505.588500976563 -937.5239868164063 1507.936645507813 C -937.5239868164063 1514.755126953125 -931.31298828125 1517.416259765625 -923.6517944335938 1517.416259765625 C -915.9901733398438 1517.416259765625 -909.7796020507813 1514.755126953125 -909.7796020507813 1507.936645507813 C -909.7796020507813 1505.588500976563 -910.5169067382813 1503.053100585938 -911.7962036132813 1500.738159179688 Z" fill="#b77965" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3tarn4 =
    '<svg viewBox="37.9 42.1 1.0 1.0" ><path transform="translate(976.94, -1277.88)" d="M -939 1320" fill="none" stroke="#404041" stroke-width="8.48073959350586" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ya0115 =
    '<svg viewBox="0.0 0.0 15.2 6.9" ><path transform="translate(981.77, -1327.0)" d="M -981.1984252929688 1328.0751953125 C -981.635986328125 1328.223388671875 -981.8858032226563 1328.700561523438 -981.7156372070313 1329.131225585938 C -980.6939697265625 1331.715209960938 -977.7008666992188 1333.892578125 -974.186279296875 1333.892578125 C -970.67333984375 1333.892578125 -967.6793823242188 1331.715209960938 -966.6576538085938 1329.131225585938 C -966.4885864257813 1328.700561523438 -966.7376708984375 1328.223388671875 -967.1749877929688 1328.0751953125 C -971.41064453125 1326.642333984375 -976.9630126953125 1326.642333984375 -981.1984252929688 1328.0751953125 Z" fill="#000d20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gm9u09 =
    '<svg viewBox="0.0 0.0 7.5 2.1" ><path transform="translate(960.78, -1353.19)" d="M -960.775146484375 1354.440551757813 C -959.652587890625 1354.993774414063 -958.36865234375 1355.3251953125 -957.0032958984375 1355.3251953125 C -955.6396484375 1355.3251953125 -954.3556518554688 1354.993774414063 -953.2323608398438 1354.440551757813 C -954.2718505859375 1353.65771484375 -955.5789794921875 1353.187133789063 -957.0032958984375 1353.187133789063 C -958.4286499023438 1353.187133789063 -959.7363891601563 1353.65771484375 -960.775146484375 1354.440551757813 Z" fill="#cc342f" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_cibbx3 =
    '<svg viewBox="37.6 46.7 1.0 1.0" ><path transform="translate(978.58, -1298.34)" d="M -941 1345" fill="#ff0000" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_9kmzeu =
    '<svg viewBox="14.5 26.5 27.5 1.0" ><path transform="translate(14.5, 26.5)" d="M 0 0 L 27.5 0" fill="none" stroke="#000000" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_ateppm =
    '<svg viewBox="14.5 35.1 19.4 1.0" ><path transform="translate(14.5, 35.06)" d="M 0 0 L 19.3721923828125 0" fill="none" stroke="#000000" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_jlt6kn =
    '<svg viewBox="0.0 0.0 59.3 52.7" ><path transform="translate(-1398.27, -1925.7)" d="M 1398.26611328125 1958.194091796875 C 1398.26611328125 1972.761108398438 1411.535278320313 1978.446899414063 1427.904541015625 1978.446899414063 C 1444.272827148438 1978.446899414063 1457.54248046875 1972.761108398438 1457.54248046875 1958.194091796875 C 1457.54248046875 1943.627807617188 1444.272827148438 1925.697265625 1427.904541015625 1925.697265625 C 1411.535278320313 1925.697265625 1398.26611328125 1943.627807617188 1398.26611328125 1958.194091796875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ckdkn7 =
    '<svg viewBox="0.0 0.0 59.3 52.7" ><path transform="translate(-1398.27, -1925.77)" d="M 1426.4677734375 1925.818237304688 C 1411.725830078125 1926.821533203125 1400.00244140625 1943.078979492188 1400.00244140625 1956.363403320313 C 1400.00244140625 1970.077026367188 1412.494506835938 1975.429809570313 1427.904541015625 1975.429809570313 C 1443.314575195313 1975.429809570313 1455.80615234375 1970.077026367188 1455.80615234375 1956.363403320313 C 1455.80615234375 1943.078979492188 1444.083251953125 1926.821533203125 1429.34033203125 1925.818237304688 C 1445.0419921875 1926.824340820313 1457.54248046875 1944.128784179688 1457.54248046875 1958.266723632813 C 1457.54248046875 1972.833862304688 1444.272827148438 1978.519653320313 1427.904541015625 1978.519653320313 C 1411.535278320313 1978.519653320313 1398.26611328125 1972.833862304688 1398.26611328125 1958.266723632813 C 1398.26611328125 1944.128784179688 1410.766723632813 1926.824340820313 1426.4677734375 1925.818237304688 Z" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2apl4i =
    '<svg viewBox="0.0 0.0 28.8 21.4" ><path transform="translate(-1527.18, -1940.73)" d="M 1554.688720703125 1942.7158203125 C 1557.340942382813 1944.792602539063 1555.552490234375 1948.45947265625 1553.530883789063 1950.721923828125 C 1550.747924804688 1953.835083007813 1546.418090820313 1954.648071289063 1543.192260742188 1957.087158203125 C 1540.648315429688 1959.01025390625 1537.710693359375 1961.444458007813 1534.469848632813 1962.028198242188 C 1531.031005859375 1962.646850585938 1527.450317382813 1959.124755859375 1527.187377929688 1956.121459960938 C 1526.840209960938 1952.149291992188 1544.783813476563 1934.95947265625 1554.688720703125 1942.7158203125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_368ufy =
    '<svg viewBox="13.1 45.5 42.3 37.6" ><path transform="translate(-1409.94, -1895.14)" d="M 1423.06689453125 1963.846313476563 C 1423.06689453125 1974.24267578125 1432.537841796875 1978.300537109375 1444.220458984375 1978.300537109375 C 1455.9033203125 1978.300537109375 1465.37353515625 1974.24267578125 1465.37353515625 1963.846313476563 C 1465.37353515625 1953.44970703125 1455.9033203125 1940.65185546875 1444.220458984375 1940.65185546875 C 1432.537841796875 1940.65185546875 1423.06689453125 1953.44970703125 1423.06689453125 1963.846313476563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_y73cma =
    '<svg viewBox="22.3 0.0 3.2 2.6" ><path transform="translate(-1493.63, -1984.86)" d="M 1516.912841796875 1987.399047851563 C 1516.985107421875 1987.373901367188 1519.068725585938 1985.985473632813 1519.068725585938 1985.985473632813 L 1518.692260742188 1984.858032226563 L 1516.142211914063 1985.151489257813 C 1516.142211914063 1985.151489257813 1515.875732421875 1985.365600585938 1515.905517578125 1985.661254882813 C 1515.935424804688 1985.957397460938 1516.388793945313 1986.047241210938 1516.388793945313 1986.047241210938 L 1516.152099609375 1986.403930664063 C 1516.249389648438 1986.646118164063 1516.670776367188 1986.869262695313 1516.670776367188 1986.869262695313 L 1516.454833984375 1987.170532226563 C 1516.562744140625 1987.501098632813 1516.912841796875 1987.399047851563 1516.912841796875 1987.399047851563 Z" fill="#fcd695" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6rltg5 =
    '<svg viewBox="25.1 0.0 1.5 1.1" ><path transform="translate(-1497.84, -1984.86)" d="M 1523.279052734375 1985.986572265625 C 1523.322021484375 1985.960205078125 1524.448608398438 1985.186279296875 1524.392456054688 1985.0224609375 C 1524.336303710938 1984.858154296875 1522.901123046875 1984.860107421875 1522.901123046875 1984.860107421875 L 1523.279052734375 1985.986572265625 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1zoh63 =
    '<svg viewBox="3.9 6.3 1.3 2.8" ><path transform="translate(-1465.92, -1994.39)" d="M 1469.8701171875 2001.169067382813 L 1470.574096679688 2003.221557617188 C 1470.642822265625 2003.421752929688 1470.8212890625 2003.542602539063 1470.973022460938 2003.490356445313 L 1470.973022460938 2003.490356445313 C 1471.12451171875 2003.438598632813 1471.191650390625 2003.233764648438 1471.122924804688 2003.033081054688 L 1470.418701171875 2000.980834960938 C 1470.35009765625 2000.780395507813 1470.171264648438 2000.660034179688 1470.019775390625 2000.711791992188 L 1470.019775390625 2000.711791992188 C 1469.8681640625 2000.764038085938 1469.80126953125 2000.968872070313 1469.8701171875 2001.169067382813 Z" fill="#87867b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lj6hym =
    '<svg viewBox="2.0 7.0 1.3 2.8" ><path transform="translate(-1463.08, -1995.36)" d="M 1465.154174804688 2002.787231445313 L 1465.85791015625 2004.839477539063 C 1465.927001953125 2005.039916992188 1466.105224609375 2005.160522460938 1466.2568359375 2005.108276367188 L 1466.2568359375 2005.108276367188 C 1466.408325195313 2005.056762695313 1466.475708007813 2004.851684570313 1466.40673828125 2004.651489257813 L 1465.70263671875 2002.598754882813 C 1465.634033203125 2002.398315429688 1465.455200195313 2002.277954101563 1465.303833007813 2002.329956054688 L 1465.303833007813 2002.329956054688 C 1465.151977539063 2002.382202148438 1465.085083007813 2002.587036132813 1465.154174804688 2002.787231445313 Z" fill="#87867b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_o61imx =
    '<svg viewBox="4.5 7.4 1.0 1.6" ><path transform="translate(-1466.78, -1996.1)" d="M 1471.928588867188 2004.998046875 C 1471.92578125 2005.057861328125 1471.892700195313 2005.113525390625 1471.843872070313 2005.1103515625 C 1471.777221679688 2005.10595703125 1471.731811523438 2005.00927734375 1471.703491210938 2004.928466796875 C 1471.57080078125 2004.551513671875 1471.438232421875 2004.173828125 1471.3056640625 2003.796630859375 C 1471.27490234375 2003.70849609375 1471.250244140625 2003.589111328125 1471.310424804688 2003.55126953125 C 1471.3466796875 2003.528076171875 1471.398071289063 2003.551513671875 1471.4326171875 2003.591796875 C 1471.467407226563 2003.6318359375 1471.4892578125 2003.68505859375 1471.510375976563 2003.73681640625 C 1471.607055664063 2003.97705078125 1471.732666015625 2004.227294921875 1471.803344726563 2004.4765625 C 1471.842651367188 2004.6171875 1471.9345703125 2004.86328125 1471.928588867188 2004.998046875 Z" fill="#ffffff" fill-opacity="0.31" stroke="none" stroke-width="1" stroke-opacity="0.31" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5r3a72 =
    '<svg viewBox="2.6 7.9 1.0 1.6" ><path transform="translate(-1463.91, -1996.84)" d="M 1466.862426757813 2005.9375 C 1466.749877929688 2005.6064453125 1466.63720703125 2005.275390625 1466.524291992188 2004.9443359375 C 1466.512084960938 2004.908447265625 1466.499145507813 2004.87060546875 1466.501708984375 2004.83447265625 C 1466.504150390625 2004.79833984375 1466.526733398438 2004.765869140625 1466.556762695313 2004.772705078125 C 1466.589721679688 2004.77978515625 1466.61083984375 2004.82568359375 1466.625244140625 2004.86474609375 C 1466.777709960938 2005.271240234375 1466.982421875 2005.699462890625 1467.09912109375 2006.1162109375 C 1467.120727539063 2006.19189453125 1467.18603515625 2006.4189453125 1467.073974609375 2006.418701171875 C 1466.990844726563 2006.41845703125 1466.88818359375 2006.011962890625 1466.862426757813 2005.9375 Z" fill="#ffffff" fill-opacity="0.31" stroke="none" stroke-width="1" stroke-opacity="0.31" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tgnume =
    '<svg viewBox="0.7 9.0 1.7 1.0" ><path transform="translate(-1461.04, -1998.39)" d="M 1462.518676757813 2008.139892578125 C 1462.447021484375 2008.16455078125 1462.374145507813 2008.18896484375 1462.296875 2008.189697265625 C 1462.085693359375 2008.191650390625 1461.856201171875 2007.993408203125 1461.770263671875 2007.734130859375 C 1461.732421875 2007.620361328125 1461.721313476563 2007.4931640625 1461.760375976563 2007.396484375 C 1461.766967773438 2007.3798828125 1461.77587890625 2007.36328125 1461.790649414063 2007.35791015625 C 1461.80517578125 2007.3525390625 1461.822875976563 2007.359375 1461.83837890625 2007.367919921875 C 1461.952758789063 2007.431396484375 1462.027221679688 2007.59033203125 1462.140625 2007.657470703125 C 1462.228271484375 2007.709716796875 1462.323120117188 2007.697021484375 1462.410400390625 2007.680419921875 C 1462.657348632813 2007.632568359375 1462.89794921875 2007.560791015625 1463.129760742188 2007.465576171875 C 1463.157592773438 2007.454345703125 1463.186767578125 2007.4423828125 1463.2177734375 2007.450439453125 C 1463.241333007813 2007.4560546875 1463.263549804688 2007.47216796875 1463.283447265625 2007.491455078125 C 1463.551513671875 2007.7451171875 1463.348022460938 2007.85693359375 1463.17431640625 2007.916015625 C 1462.955688476563 2007.990478515625 1462.737426757813 2008.0654296875 1462.518676757813 2008.139892578125 Z" fill="#ffffff" fill-opacity="0.31" stroke="none" stroke-width="1" stroke-opacity="0.31" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tjmkbz =
    '<svg viewBox="13.1 60.8 42.3 22.4" ><path transform="translate(-1409.94, -1918.2)" d="M 1424.697021484375 1978.983154296875 C 1424.561889648438 1979.87255859375 1424.488891601563 1980.75390625 1424.488891601563 1981.61767578125 C 1424.488891601563 1991.3154296875 1433.3232421875 1995.100341796875 1444.220458984375 1995.100341796875 C 1455.117309570313 1995.100341796875 1463.952026367188 1991.3154296875 1463.952026367188 1981.61767578125 C 1463.952026367188 1980.75390625 1463.878295898438 1979.87255859375 1463.743286132813 1978.983154296875 C 1464.792236328125 1981.618896484375 1465.37353515625 1984.336669921875 1465.37353515625 1986.908935546875 C 1465.37353515625 1997.30517578125 1455.9033203125 2001.363037109375 1444.220458984375 2001.363037109375 C 1432.537841796875 2001.363037109375 1423.06689453125 1997.30517578125 1423.06689453125 1986.908935546875 C 1423.06689453125 1984.336669921875 1423.648193359375 1981.618896484375 1424.697021484375 1978.983154296875 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_d38tlg =
    '<svg viewBox="13.1 67.2 42.3 16.0" ><path transform="translate(-1409.94, -1927.88)" d="M 1444.220458984375 2008.076049804688 C 1455.341186523438 2008.076049804688 1464.450317382813 2004.394165039063 1465.302001953125 1995.073120117188 C 1465.344970703125 1995.582885742188 1465.37353515625 1996.089721679688 1465.37353515625 1996.589477539063 C 1465.37353515625 2006.986206054688 1455.9033203125 2011.043823242188 1444.220458984375 2011.043823242188 C 1432.537841796875 2011.043823242188 1423.06689453125 2006.986206054688 1423.06689453125 1996.589477539063 C 1423.06689453125 1996.089721679688 1423.095336914063 1995.582885742188 1423.138671875 1995.073120117188 C 1423.990356445313 2004.394165039063 1433.099365234375 2008.076049804688 1444.220458984375 2008.076049804688 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6xoqob =
    '<svg viewBox="44.2 0.0 16.3 16.2" ><path transform="translate(-1456.93, -1826.39)" d="M 1503.56689453125 1828.230346679688 C 1506.401245117188 1825.066162109375 1510.303466796875 1826.334838867188 1513.752563476563 1829.423950195313 C 1517.201049804688 1832.5126953125 1518.889892578125 1836.251342773438 1516.055541992188 1839.4169921875 C 1513.37890625 1842.404541015625 1507.6298828125 1843.807739257813 1504.09326171875 1841.355712890625 C 1507.256469726563 1843.481079101563 1512.337524414063 1842.223266601563 1514.710815429688 1839.573486328125 C 1517.24267578125 1836.747192382813 1515.734252929688 1833.408569335938 1512.654418945313 1830.649658203125 C 1509.574340820313 1827.8916015625 1506.08984375 1826.759033203125 1503.558471679688 1829.5849609375 C 1501.02685546875 1832.411010742188 1500.4072265625 1838.126098632813 1503.4873046875 1840.884887695313 C 1500.038818359375 1837.795776367188 1500.732299804688 1831.395385742188 1503.56689453125 1828.230346679688 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_xxqt0k =
    '<svg viewBox="44.0 0.0 16.3 16.2" ><path transform="translate(-1456.63, -1826.39)" d="M 1515.555541992188 1839.4169921875 C 1518.389892578125 1836.251342773438 1516.701049804688 1832.5126953125 1513.252563476563 1829.423950195313 C 1509.803588867188 1826.334838867188 1505.9013671875 1825.066162109375 1503.06689453125 1828.230346679688 C 1500.232421875 1831.395385742188 1499.538940429688 1837.795776367188 1502.9873046875 1840.884887695313 C 1506.435913085938 1843.9736328125 1512.720825195313 1842.581787109375 1515.555541992188 1839.4169921875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_y238e7 =
    '<svg viewBox="1.2 1.6 16.3 16.2" ><path transform="translate(-1391.96, -1828.8)" d="M 1394.603393554688 1843.416748046875 C 1391.768920898438 1840.251220703125 1393.457885742188 1836.512451171875 1396.90625 1833.42333984375 C 1400.355590820313 1830.334350585938 1404.257446289063 1829.066040039063 1407.092041015625 1832.230346679688 C 1409.926635742188 1835.395141601563 1410.6201171875 1841.795532226563 1407.171752929688 1844.884155273438 C 1403.722900390625 1847.973388671875 1397.43798828125 1846.5810546875 1394.603393554688 1843.416748046875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qwio74 =
    '<svg viewBox="0.0 3.5 65.8 58.5" ><path transform="translate(-1390.12, -1831.63)" d="M 1390.1201171875 1871.1484375 C 1390.1201171875 1887.31005859375 1404.842163085938 1893.618530273438 1423.00341796875 1893.618530273438 C 1441.164184570313 1893.618530273438 1455.886596679688 1887.31005859375 1455.886596679688 1871.1484375 C 1455.886596679688 1854.98681640625 1441.164184570313 1835.092163085938 1423.00341796875 1835.092163085938 C 1404.842163085938 1835.092163085938 1390.1201171875 1854.98681640625 1390.1201171875 1871.1484375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_l6hmw =
    '<svg viewBox="0.0 19.6 65.8 42.4" ><path transform="translate(-1390.12, -1855.93)" d="M 1396.6552734375 1875.490966796875 C 1394.575073242188 1880.3388671875 1393.401245117188 1885.479736328125 1393.401245117188 1890.288330078125 C 1393.401245117188 1906.449462890625 1406.654541015625 1912.757568359375 1423.00341796875 1912.757568359375 C 1439.352172851563 1912.757568359375 1452.605590820313 1906.449462890625 1452.605590820313 1890.288330078125 C 1452.605590820313 1885.479736328125 1451.43115234375 1880.3388671875 1449.35205078125 1875.490966796875 C 1453.45556640625 1881.705322265625 1455.886596679688 1888.888671875 1455.886596679688 1895.455078125 C 1455.886596679688 1911.61669921875 1441.164184570313 1917.925048828125 1423.00341796875 1917.925048828125 C 1404.842163085938 1917.925048828125 1390.1201171875 1911.61669921875 1390.1201171875 1895.455078125 C 1390.1201171875 1888.888671875 1392.550659179688 1881.705322265625 1396.6552734375 1875.490966796875 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_z6rbwv =
    '<svg viewBox="0.0 0.0 28.8 20.2" ><path transform="translate(-1396.75, -1965.99)" d="M 1424.63037109375 1984.8359375 C 1426.526123046875 1982.0517578125 1425.348999023438 1979.072021484375 1423.271362304688 1976.861328125 C 1420.411376953125 1973.81884765625 1416.062133789063 1973.115478515625 1412.775146484375 1970.7587890625 C 1410.184814453125 1968.900390625 1407.186279296875 1966.540283203125 1403.931762695313 1966.0390625 C 1400.478393554688 1965.506225585938 1397.263916015625 1969.1474609375 1396.800415039063 1972.126708984375 C 1395.469604492188 1980.67578125 1421.407470703125 1989.5703125 1424.63037109375 1984.8359375 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_oeva37 =
    '<svg viewBox="0.0 25.0 65.8 36.8" ><path transform="translate(-1390.12, -1864.1)" d="M 1393.52978515625 1889.065063476563 C 1392.00634765625 1893.090209960938 1391.163818359375 1897.233276367188 1391.163818359375 1901.1572265625 C 1391.163818359375 1917.318481445313 1405.418579101563 1923.627319335938 1423.00341796875 1923.627319335938 C 1440.587890625 1923.627319335938 1454.842895507813 1917.318481445313 1454.842895507813 1901.1572265625 C 1454.842895507813 1897.233276367188 1454.000854492188 1893.091186523438 1452.476440429688 1889.065063476563 C 1454.658081054688 1893.783203125 1455.886596679688 1898.758666992188 1455.886596679688 1903.422973632813 C 1455.886596679688 1919.58447265625 1441.164184570313 1925.89306640625 1423.00341796875 1925.89306640625 C 1404.842163085938 1925.89306640625 1390.1201171875 1919.58447265625 1390.1201171875 1903.422973632813 C 1390.1201171875 1898.758666992188 1391.3486328125 1893.783203125 1393.52978515625 1889.065063476563 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_iorshg =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1563.49, -1940.3)" d="M 1563.526123046875 1973.486938476563 C 1563.5078125 1973.486938476563 1563.4931640625 1973.471801757813 1563.4931640625 1973.453979492188 L 1563.4931640625 1940.333251953125 C 1563.4931640625 1940.31494140625 1563.5078125 1940.300170898438 1563.526123046875 1940.300170898438 C 1563.54443359375 1940.300170898438 1563.559326171875 1940.31494140625 1563.559326171875 1940.333251953125 L 1563.559326171875 1973.453979492188 C 1563.559326171875 1973.471801757813 1563.54443359375 1973.486938476563 1563.526123046875 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_xfiu3l =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1563.88, -1940.3)" d="M 1563.917114257813 1973.486938476563 C 1563.898803710938 1973.486938476563 1563.884155273438 1973.471801757813 1563.884155273438 1973.453979492188 L 1563.884155273438 1940.333251953125 C 1563.884155273438 1940.31494140625 1563.898803710938 1940.300170898438 1563.917114257813 1940.300170898438 C 1563.935180664063 1940.300170898438 1563.9501953125 1940.31494140625 1563.9501953125 1940.333251953125 L 1563.9501953125 1973.453979492188 C 1563.9501953125 1973.471801757813 1563.935180664063 1973.486938476563 1563.917114257813 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nwtkc7 =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1564.28, -1940.3)" d="M 1564.30810546875 1973.486938476563 C 1564.289794921875 1973.486938476563 1564.275146484375 1973.471801757813 1564.275146484375 1973.453979492188 L 1564.275146484375 1940.333251953125 C 1564.275146484375 1940.31494140625 1564.289794921875 1940.300170898438 1564.30810546875 1940.300170898438 C 1564.326416015625 1940.300170898438 1564.341186523438 1940.31494140625 1564.341186523438 1940.333251953125 L 1564.341186523438 1973.453979492188 C 1564.341186523438 1973.471801757813 1564.326416015625 1973.486938476563 1564.30810546875 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qlhb4i =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1564.67, -1940.3)" d="M 1564.69921875 1973.486938476563 C 1564.68115234375 1973.486938476563 1564.666015625 1973.471801757813 1564.666015625 1973.453979492188 L 1564.666015625 1940.333251953125 C 1564.666015625 1940.31494140625 1564.68115234375 1940.300170898438 1564.69921875 1940.300170898438 C 1564.717529296875 1940.300170898438 1564.732421875 1940.31494140625 1564.732421875 1940.333251953125 L 1564.732421875 1973.453979492188 C 1564.732421875 1973.471801757813 1564.717529296875 1973.486938476563 1564.69921875 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1r08hi =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1565.06, -1940.3)" d="M 1565.089965820313 1973.486938476563 C 1565.072143554688 1973.486938476563 1565.056762695313 1973.471801757813 1565.056762695313 1973.453979492188 L 1565.056762695313 1940.333251953125 C 1565.056762695313 1940.31494140625 1565.072143554688 1940.300170898438 1565.089965820313 1940.300170898438 C 1565.108276367188 1940.300170898438 1565.123413085938 1940.31494140625 1565.123413085938 1940.333251953125 L 1565.123413085938 1973.453979492188 C 1565.123413085938 1973.471801757813 1565.108276367188 1973.486938476563 1565.089965820313 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_u124r0 =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1565.45, -1940.3)" d="M 1565.482055664063 1973.486938476563 C 1565.4638671875 1973.486938476563 1565.448974609375 1973.471801757813 1565.448974609375 1973.453979492188 L 1565.448974609375 1940.333251953125 C 1565.448974609375 1940.31494140625 1565.4638671875 1940.300170898438 1565.482055664063 1940.300170898438 C 1565.5 1940.300170898438 1565.51513671875 1940.31494140625 1565.51513671875 1940.333251953125 L 1565.51513671875 1973.453979492188 C 1565.51513671875 1973.471801757813 1565.5 1973.486938476563 1565.482055664063 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_i813k4 =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1565.84, -1940.3)" d="M 1565.873046875 1973.486938476563 C 1565.8544921875 1973.486938476563 1565.83984375 1973.471801757813 1565.83984375 1973.453979492188 L 1565.83984375 1940.333251953125 C 1565.83984375 1940.31494140625 1565.8544921875 1940.300170898438 1565.873046875 1940.300170898438 C 1565.891357421875 1940.300170898438 1565.905883789063 1940.31494140625 1565.905883789063 1940.333251953125 L 1565.905883789063 1973.453979492188 C 1565.905883789063 1973.471801757813 1565.891357421875 1973.486938476563 1565.873046875 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kvt8nv =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1566.23, -1940.3)" d="M 1566.264038085938 1973.486938476563 C 1566.245727539063 1973.486938476563 1566.23095703125 1973.471801757813 1566.23095703125 1973.453979492188 L 1566.23095703125 1940.333251953125 C 1566.23095703125 1940.31494140625 1566.245727539063 1940.300170898438 1566.264038085938 1940.300170898438 C 1566.282470703125 1940.300170898438 1566.297119140625 1940.31494140625 1566.297119140625 1940.333251953125 L 1566.297119140625 1973.453979492188 C 1566.297119140625 1973.471801757813 1566.282470703125 1973.486938476563 1566.264038085938 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nt71ma =
    '<svg viewBox="0.0 0.0 1.0 33.2" ><path transform="translate(-1566.62, -1940.3)" d="M 1566.655029296875 1973.486938476563 C 1566.63671875 1973.486938476563 1566.621826171875 1973.471801757813 1566.621826171875 1973.453979492188 L 1566.621826171875 1940.333251953125 C 1566.621826171875 1940.31494140625 1566.63671875 1940.300170898438 1566.655029296875 1940.300170898438 C 1566.67333984375 1940.300170898438 1566.688110351563 1940.31494140625 1566.688110351563 1940.333251953125 L 1566.688110351563 1973.453979492188 C 1566.688110351563 1973.471801757813 1566.67333984375 1973.486938476563 1566.655029296875 1973.486938476563 Z" fill="#dd5757" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_prqv76 =
    '<svg viewBox="0.0 0.0 16.0 1.0" ><path  d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ne0012 =
    '<svg viewBox="0.0 2.6 16.0 1.0" ><path transform="translate(0.0, 2.62)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_j4d3l4 =
    '<svg viewBox="0.0 5.2 16.0 1.0" ><path transform="translate(0.0, 5.24)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yl9m7f =
    '<svg viewBox="0.0 7.9 16.0 1.0" ><path transform="translate(0.0, 7.86)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rw8tk1 =
    '<svg viewBox="0.0 10.5 16.0 1.0" ><path transform="translate(0.0, 10.48)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jer3eo =
    '<svg viewBox="0.0 13.1 16.0 1.0" ><path transform="translate(0.0, 13.1)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_isztro =
    '<svg viewBox="0.0 15.7 16.0 1.0" ><path transform="translate(0.0, 15.72)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_c9ijgw =
    '<svg viewBox="0.0 18.3 16.0 1.0" ><path transform="translate(0.0, 18.34)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_b322jk =
    '<svg viewBox="0.0 21.0 16.0 1.0" ><path transform="translate(0.0, 20.96)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lrftx =
    '<svg viewBox="0.0 23.6 16.0 1.0" ><path transform="translate(0.0, 23.58)" d="M 0 0 L 16.0382022857666 0" fill="none" stroke="#b3b3b3" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yu34pr =
    '<svg viewBox="37.7 22.0 22.1 21.7" ><path transform="translate(-1447.04, -1859.66)" d="M 1506.565063476563 1894.393920898438 C 1507.072631835938 1896.024536132813 1506.670654296875 1898.958618164063 1505.849731445313 1900.443115234375 C 1505.046264648438 1901.896240234375 1503.581665039063 1902.6669921875 1502.014526367188 1903.042724609375 C 1495.178588867188 1904.683471679688 1485.685546875 1900.136596679688 1484.820068359375 1892.64453125 C 1484.463134765625 1889.556396484375 1485.141479492188 1885.174682617188 1487.763427734375 1883.139892578125 C 1493.271850585938 1878.864990234375 1500.576049804688 1884.937622070313 1503.89404296875 1889.250854492188 C 1505.03271484375 1890.73193359375 1506.009399414063 1892.608642578125 1506.565063476563 1894.393920898438 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yt01cp =
    '<svg viewBox="43.9 27.8 7.4 7.6" ><path transform="translate(-1456.41, -1868.46)" d="M 1507.435913085938 1902.891235351563 C 1507.187255859375 1903.39697265625 1506.665893554688 1903.646484375 1506.134155273438 1903.77392578125 C 1505.2763671875 1903.97998046875 1504.295776367188 1903.898803710938 1503.38525390625 1903.586669921875 C 1501.832153320313 1903.053588867188 1500.623779296875 1901.947509765625 1500.352905273438 1900.356567382813 C 1500.104125976563 1898.896728515625 1500.730224609375 1897.505737304688 1501.61376953125 1896.871826171875 C 1504.943725585938 1894.483154296875 1508.726440429688 1900.262451171875 1507.435913085938 1902.891235351563 Z" fill="#fdfdff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_r32n5e =
    '<svg viewBox="5.7 22.0 22.1 21.7" ><path transform="translate(-1398.66, -1859.66)" d="M 1404.542236328125 1894.393920898438 C 1404.03466796875 1896.024536132813 1404.43701171875 1898.958618164063 1405.257934570313 1900.443115234375 C 1406.061401367188 1901.896240234375 1407.525512695313 1902.6669921875 1409.092651367188 1903.042724609375 C 1415.928833007813 1904.683471679688 1425.421630859375 1900.136596679688 1426.287475585938 1892.64453125 C 1426.64404296875 1889.556396484375 1425.965698242188 1885.174682617188 1423.344360351563 1883.139892578125 C 1417.835693359375 1878.864990234375 1410.531494140625 1884.937622070313 1407.214111328125 1889.250854492188 C 1406.074584960938 1890.73193359375 1405.097778320313 1892.608642578125 1404.542236328125 1894.393920898438 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_95ajb8 =
    '<svg viewBox="0.0 0.0 4.8 6.3" ><path transform="translate(-1500.28, -1896.87)" d="M 1500.283081054688 1899.99658203125 C 1500.283081054688 1901.724243164063 1501.365478515625 1903.125122070313 1502.700073242188 1903.125122070313 C 1504.035278320313 1903.125122070313 1505.11767578125 1901.724243164063 1505.11767578125 1899.99658203125 C 1505.11767578125 1898.268920898438 1504.035278320313 1896.868041992188 1502.700073242188 1896.868041992188 C 1501.365478515625 1896.868041992188 1500.283081054688 1898.268920898438 1500.283081054688 1899.99658203125 Z" fill="#00a7d5" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nio2n =
    '<svg viewBox="2.4 1.1 1.8 2.3" ><path transform="translate(-1503.93, -1898.5)" d="M 1506.350952148438 1900.737426757813 C 1506.350952148438 1901.380615234375 1506.754272460938 1901.901733398438 1507.250854492188 1901.901733398438 C 1507.748168945313 1901.901733398438 1508.150268554688 1901.380615234375 1508.150268554688 1900.737426757813 C 1508.150268554688 1900.094482421875 1507.748168945313 1899.573120117188 1507.250854492188 1899.573120117188 C 1506.754272460938 1899.573120117188 1506.350952148438 1900.094482421875 1506.350952148438 1900.737426757813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_p0mum5 =
    '<svg viewBox="0.0 0.0 4.8 6.3" ><path transform="translate(-1432.01, -1896.87)" d="M 1432.005981445313 1899.99658203125 C 1432.005981445313 1901.724243164063 1433.087890625 1903.125122070313 1434.422973632813 1903.125122070313 C 1435.75830078125 1903.125122070313 1436.84033203125 1901.724243164063 1436.84033203125 1899.99658203125 C 1436.84033203125 1898.268920898438 1435.75830078125 1896.868041992188 1434.422973632813 1896.868041992188 C 1433.087890625 1896.868041992188 1432.005981445313 1898.268920898438 1432.005981445313 1899.99658203125 Z" fill="#00a7d5" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nbpi6l =
    '<svg viewBox="2.4 1.1 1.8 2.3" ><path transform="translate(-1435.66, -1898.5)" d="M 1438.073974609375 1900.737426757813 C 1438.073974609375 1901.380615234375 1438.47705078125 1901.901733398438 1438.973388671875 1901.901733398438 C 1439.470947265625 1901.901733398438 1439.873413085938 1901.380615234375 1439.873413085938 1900.737426757813 C 1439.873413085938 1900.094482421875 1439.470947265625 1899.573120117188 1438.973388671875 1899.573120117188 C 1438.47705078125 1899.573120117188 1438.073974609375 1900.094482421875 1438.073974609375 1900.737426757813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_htv9o5 =
    '<svg viewBox="14.1 27.8 7.4 7.6" ><path transform="translate(-1411.44, -1868.46)" d="M 1425.81689453125 1902.891235351563 C 1426.065063476563 1903.39697265625 1426.5869140625 1903.646484375 1427.1181640625 1903.77392578125 C 1427.975830078125 1903.97998046875 1428.956420898438 1903.898803710938 1429.867065429688 1903.586669921875 C 1431.420654296875 1903.053588867188 1432.628295898438 1901.947509765625 1432.899536132813 1900.356567382813 C 1433.148559570313 1898.896728515625 1432.522216796875 1897.505737304688 1431.639282226563 1896.871826171875 C 1428.308471679688 1894.483154296875 1424.526245117188 1900.262451171875 1425.81689453125 1902.891235351563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_t5wvr6 =
    '<svg viewBox="45.9 35.7 7.8 2.6" ><path transform="translate(-1459.43, -1880.33)" d="M 1505.31298828125 1917.342895507813 C 1505.31298828125 1918.061279296875 1507.049682617188 1918.642456054688 1509.191528320313 1918.642456054688 C 1511.333740234375 1918.642456054688 1513.069580078125 1918.061279296875 1513.069580078125 1917.342895507813 C 1513.069580078125 1916.625366210938 1511.333740234375 1916.044067382813 1509.191528320313 1916.044067382813 C 1507.049682617188 1916.044067382813 1505.31298828125 1916.625366210938 1505.31298828125 1917.342895507813 Z" fill="#f398b8" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tvv275 =
    '<svg viewBox="0.0 0.0 11.0 7.7" ><path transform="translate(-1458.87, -1922.89)" d="M 1469.8662109375 1925.846923828125 C 1469.8662109375 1923.719482421875 1467.406616210938 1922.888916015625 1464.371337890625 1922.888916015625 C 1461.3359375 1922.888916015625 1458.874877929688 1923.719482421875 1458.874877929688 1925.846923828125 C 1458.874877929688 1927.975341796875 1461.3359375 1930.596069335938 1464.371337890625 1930.596069335938 C 1467.406616210938 1930.596069335938 1469.8662109375 1927.975341796875 1469.8662109375 1925.846923828125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vgsvnb =
    '<svg viewBox="0.0 1.5 11.0 6.2" ><path transform="translate(-1458.87, -1925.14)" d="M 1459.39794921875 1926.637084960938 C 1459.372924804688 1926.78173828125 1459.35693359375 1926.931762695313 1459.35693359375 1927.091186523438 C 1459.35693359375 1929.219848632813 1461.60205078125 1931.839111328125 1464.371337890625 1931.839111328125 C 1467.140014648438 1931.839111328125 1469.385498046875 1929.219848632813 1469.385498046875 1927.091186523438 C 1469.385498046875 1926.931762695313 1469.36865234375 1926.78173828125 1469.343872070313 1926.637084960938 C 1469.67626953125 1927.035400390625 1469.8662109375 1927.518188476563 1469.8662109375 1928.102172851563 C 1469.8662109375 1930.230346679688 1467.406616210938 1932.85107421875 1464.371337890625 1932.85107421875 C 1461.3359375 1932.85107421875 1458.874877929688 1930.230346679688 1458.874877929688 1928.102172851563 C 1458.874877929688 1927.518188476563 1459.065795898438 1927.035400390625 1459.39794921875 1926.637084960938 Z" fill="#704b32" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hc1m4g =
    '<svg viewBox="2.9 0.5 5.1 1.3" ><path transform="translate(-1463.31, -1923.7)" d="M 1466.241943359375 1924.892822265625 C 1466.241943359375 1925.250732421875 1467.389038085938 1925.5419921875 1468.80322265625 1925.5419921875 C 1470.2177734375 1925.5419921875 1471.364135742188 1925.250732421875 1471.364135742188 1924.892822265625 C 1471.364135742188 1924.532958984375 1470.2177734375 1924.242919921875 1468.80322265625 1924.242919921875 C 1467.389038085938 1924.242919921875 1466.241943359375 1924.532958984375 1466.241943359375 1924.892822265625 Z" fill="#fff5d4" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_92i1ud =
    '<svg viewBox="11.7 35.7 7.8 2.6" ><path transform="translate(-1407.86, -1880.33)" d="M 1419.60400390625 1917.342895507813 C 1419.60400390625 1918.061279296875 1421.339599609375 1918.642456054688 1423.481811523438 1918.642456054688 C 1425.623413085938 1918.642456054688 1427.359619140625 1918.061279296875 1427.359619140625 1917.342895507813 C 1427.359619140625 1916.625366210938 1425.623413085938 1916.044067382813 1423.481811523438 1916.044067382813 C 1421.339599609375 1916.044067382813 1419.60400390625 1916.625366210938 1419.60400390625 1917.342895507813 Z" fill="#f398b8" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ndlsna =
    '<svg viewBox="35.0 73.4 30.4 27.1" ><path transform="translate(-1442.94, -1937.27)" d="M 1477.9150390625 2027.366821289063 C 1477.9150390625 2034.846313476563 1484.728515625 2037.765747070313 1493.133056640625 2037.765747070313 C 1501.537475585938 2037.765747070313 1508.3505859375 2034.846313476563 1508.3505859375 2027.366821289063 C 1508.3505859375 2019.888061523438 1501.537475585938 2010.681030273438 1493.133056640625 2010.681030273438 C 1484.728515625 2010.681030273438 1477.9150390625 2019.888061523438 1477.9150390625 2027.366821289063 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6xl297 =
    '<svg viewBox="0.0 5.1 22.0 16.5" ><path transform="translate(-1488.48, -2025.34)" d="M 1488.48095703125 2040.6328125 C 1488.48095703125 2045.19921875 1493.40966796875 2046.982177734375 1499.490234375 2046.982177734375 C 1505.5703125 2046.982177734375 1510.49951171875 2045.19921875 1510.49951171875 2040.6328125 C 1510.49951171875 2036.066162109375 1505.5703125 2030.444091796875 1499.490234375 2030.444091796875 C 1493.40966796875 2030.444091796875 1488.48095703125 2036.066162109375 1488.48095703125 2040.6328125 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wzokan =
    '<svg viewBox="0.0 11.3 22.0 10.3" ><path transform="translate(-1488.48, -2034.69)" d="M 1489.5908203125 2045.987182617188 C 1489.504638671875 2046.456909179688 1489.4580078125 2046.922485351563 1489.4580078125 2047.378295898438 C 1489.4580078125 2051.94482421875 1493.94970703125 2053.7275390625 1499.490234375 2053.7275390625 C 1505.031005859375 2053.7275390625 1509.522216796875 2051.94482421875 1509.522216796875 2047.378295898438 C 1509.522216796875 2046.922485351563 1509.4755859375 2046.456909179688 1509.3896484375 2045.987182617188 C 1510.099853515625 2047.302612304688 1510.49951171875 2048.685791015625 1510.49951171875 2049.98486328125 C 1510.49951171875 2054.55078125 1505.5703125 2056.333740234375 1499.490234375 2056.333740234375 C 1493.40966796875 2056.333740234375 1488.48095703125 2054.55078125 1488.48095703125 2049.98486328125 C 1488.48095703125 2048.685791015625 1488.880126953125 2047.302612304688 1489.5908203125 2045.987182617188 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2qg4qf =
    '<svg viewBox="0.0 0.0 4.7 4.7" ><path transform="translate(-1529.46, -2022.79)" d="M 1534.14892578125 2026.3193359375 C 1534.404418945313 2028.169921875 1532.137817382813 2027.538818359375 1531.21875 2026.815673828125 C 1530.4619140625 2026.220703125 1529.125 2024.909423828125 1529.53076171875 2023.78759765625 C 1530.549560546875 2020.973876953125 1533.947875976563 2024.862060546875 1534.14892578125 2026.3193359375 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_woet0i =
    '<svg viewBox="0.0 1.0 4.7 3.8" ><path transform="translate(-1529.46, -2024.24)" d="M 1529.5478515625 2025.192016601563 C 1529.823120117188 2026.029174804688 1530.670654296875 2026.835083007813 1531.21875 2027.265502929688 C 1531.986450195313 2027.869018554688 1533.688720703125 2028.403198242188 1534.081665039063 2027.487426757813 C 1534.113525390625 2027.586303710938 1534.137084960938 2027.679809570313 1534.14892578125 2027.764038085938 C 1534.404418945313 2029.614379882813 1532.137817382813 2028.983276367188 1531.21875 2028.260375976563 C 1530.4619140625 2027.665161132813 1529.125 2026.353881835938 1529.53076171875 2025.232299804688 C 1529.536254882813 2025.217895507813 1529.542602539063 2025.205932617188 1529.5478515625 2025.192016601563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3tjpob =
    '<svg viewBox="0.0 1.0 4.7 3.8" ><path transform="translate(-1529.46, -2024.26)" d="M 1529.53076171875 2025.253173828125 C 1529.534301757813 2025.244384765625 1529.538696289063 2025.236328125 1529.542236328125 2025.227294921875 C 1529.558959960938 2026.227783203125 1530.647705078125 2027.280029296875 1531.302978515625 2027.795654296875 C 1532.068481445313 2028.398193359375 1533.765014648438 2028.931396484375 1534.163330078125 2028.02392578125 C 1534.189575195313 2029.57080078125 1532.0947265625 2028.97021484375 1531.21875 2028.281494140625 C 1530.4619140625 2027.6865234375 1529.125 2026.375 1529.53076171875 2025.253173828125 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ero5i4 =
    '<svg viewBox="0.0 12.0 22.0 9.6" ><path transform="translate(-1488.48, -2035.74)" d="M 1489.247802734375 2047.739990234375 C 1489.096923828125 2048.326416015625 1489.015380859375 2048.90966796875 1489.015380859375 2049.47607421875 C 1489.015380859375 2053.821044921875 1493.704833984375 2055.51708984375 1499.490234375 2055.51708984375 C 1505.276123046875 2055.51708984375 1509.965087890625 2053.821044921875 1509.965087890625 2049.47607421875 C 1509.965087890625 2048.90966796875 1509.884033203125 2048.326416015625 1509.732421875 2047.739990234375 C 1510.225341796875 2048.840576171875 1510.49951171875 2049.96875 1510.49951171875 2051.039306640625 C 1510.49951171875 2055.60546875 1505.5703125 2057.388427734375 1499.490234375 2057.388427734375 C 1493.40966796875 2057.388427734375 1488.48095703125 2055.60546875 1488.48095703125 2051.039306640625 C 1488.48095703125 2049.96875 1488.75537109375 2048.840576171875 1489.247802734375 2047.739990234375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yvttf3 =
    '<svg viewBox="0.0 0.0 4.7 4.7" ><path transform="translate(-1490.36, -2022.79)" d="M 1490.384033203125 2026.3193359375 C 1490.129272460938 2028.169921875 1492.395629882813 2027.538818359375 1493.314575195313 2026.815673828125 C 1494.071411132813 2026.220703125 1495.408935546875 2024.909423828125 1495.00244140625 2023.78759765625 C 1493.983764648438 2020.973876953125 1490.585571289063 2024.862060546875 1490.384033203125 2026.3193359375 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vgg2dm =
    '<svg viewBox="0.0 1.0 4.7 3.8" ><path transform="translate(-1490.36, -2024.24)" d="M 1494.984741210938 2025.192016601563 C 1494.710815429688 2026.029174804688 1493.8623046875 2026.835083007813 1493.314575195313 2027.265502929688 C 1492.546997070313 2027.869018554688 1490.845336914063 2028.403198242188 1490.451049804688 2027.487426757813 C 1490.419677734375 2027.586303710938 1490.395629882813 2027.679809570313 1490.384033203125 2027.764038085938 C 1490.129272460938 2029.614379882813 1492.395629882813 2028.983276367188 1493.314575195313 2028.260375976563 C 1494.071411132813 2027.665161132813 1495.408935546875 2026.353881835938 1495.00244140625 2025.232299804688 C 1494.996704101563 2025.217895507813 1494.990844726563 2025.205932617188 1494.984741210938 2025.192016601563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_byliqx =
    '<svg viewBox="0.0 1.0 4.7 3.8" ><path transform="translate(-1490.37, -2024.26)" d="M 1495.010375976563 2025.253173828125 C 1495.0068359375 2025.244384765625 1495.002685546875 2025.236328125 1494.999633789063 2025.227294921875 C 1494.982055664063 2026.227783203125 1493.893920898438 2027.280029296875 1493.238037109375 2027.795654296875 C 1492.472900390625 2028.398193359375 1490.776123046875 2028.931396484375 1490.377807617188 2028.02392578125 C 1490.35107421875 2029.57080078125 1492.446655273438 2028.97021484375 1493.322509765625 2028.281494140625 C 1494.07958984375 2027.6865234375 1495.417114257813 2026.375 1495.010375976563 2025.253173828125 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ev0bwv =
    '<svg viewBox="0.0 0.0 5.9 3.2" ><path transform="translate(-1508.61, -2017.62)" d="M 1509.249755859375 2020.178344726563 C 1508.314208984375 2019.543334960938 1508.47509765625 2018.603637695313 1509.26025390625 2018.046752929688 C 1509.9033203125 2017.590209960938 1511.926635742188 2017.444702148438 1513.180541992188 2017.910034179688 C 1514.220947265625 2018.296508789063 1514.894653320313 2018.968627929688 1514.241333007813 2019.871459960938 C 1513.251098632813 2021.242553710938 1510.509765625 2021.032592773438 1509.249755859375 2020.178344726563 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nexcqh =
    '<svg viewBox="0.0 0.8 5.9 2.4" ><path transform="translate(-1508.61, -2018.89)" d="M 1508.8525390625 2019.727172851563 C 1508.918212890625 2020.012329101563 1509.10107421875 2020.291625976563 1509.42626953125 2020.530395507813 C 1510.600830078125 2021.391479492188 1513.14892578125 2021.617309570313 1514.06005859375 2020.251831054688 C 1514.1572265625 2020.107055664063 1514.21923828125 2019.968627929688 1514.255859375 2019.835571289063 C 1514.561767578125 2020.188842773438 1514.616943359375 2020.624877929688 1514.247802734375 2021.136352539063 C 1513.25732421875 2022.507446289063 1510.51611328125 2022.297729492188 1509.255859375 2021.443237304688 C 1508.524658203125 2020.946899414063 1508.4697265625 2020.267700195313 1508.8525390625 2019.727172851563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_h2tkra =
    '<svg viewBox="0.0 1.3 5.9 2.0" ><path transform="translate(-1508.62, -2019.53)" d="M 1509.260620117188 2021.568115234375 C 1510.5205078125 2022.4228515625 1513.261962890625 2022.632568359375 1514.252075195313 2021.261474609375 C 1514.35986328125 2021.11279296875 1514.427856445313 2020.971923828125 1514.467651367188 2020.8359375 C 1514.557739257813 2021.11328125 1514.505615234375 2021.428466796875 1514.252075195313 2021.779052734375 C 1513.261962890625 2023.14990234375 1510.5205078125 2022.940185546875 1509.260620117188 2022.08544921875 C 1508.712158203125 2021.713623046875 1508.54833984375 2021.23779296875 1508.658325195313 2020.794921875 C 1508.733154296875 2021.0703125 1508.923706054688 2021.339111328125 1509.260620117188 2021.568115234375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_d4r7ah =
    '<svg viewBox="35.0 82.2 30.4 18.3" ><path transform="translate(-1442.94, -1950.55)" d="M 1480.127685546875 2032.744995117188 C 1479.442993164063 2034.622924804688 1479.0634765625 2036.557006835938 1479.0634765625 2038.388061523438 C 1479.0634765625 2045.867797851563 1485.363159179688 2048.787109375 1493.133056640625 2048.787109375 C 1500.9033203125 2048.787109375 1507.202026367188 2045.867797851563 1507.202026367188 2038.388061523438 C 1507.202026367188 2036.557006835938 1506.822631835938 2034.622924804688 1506.138671875 2032.744995117188 C 1507.541870117188 2035.284301757813 1508.3505859375 2038.066040039063 1508.3505859375 2040.641967773438 C 1508.3505859375 2048.121337890625 1501.537475585938 2051.041015625 1493.133056640625 2051.041015625 C 1484.728515625 2051.041015625 1477.9150390625 2048.121337890625 1477.9150390625 2040.641967773438 C 1477.9150390625 2038.066040039063 1478.723999023438 2035.284301757813 1480.127685546875 2032.744995117188 Z" fill="#b77965" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_euk5vh =
    '<svg viewBox="2.0 73.4 30.4 27.1" ><path transform="translate(-1393.09, -1937.27)" d="M 1395.051147460938 2027.366821289063 C 1395.051147460938 2034.846313476563 1401.86474609375 2037.765747070313 1410.269165039063 2037.765747070313 C 1418.673583984375 2037.765747070313 1425.487060546875 2034.846313476563 1425.487060546875 2027.366821289063 C 1425.487060546875 2019.888061523438 1418.673583984375 2010.681030273438 1410.269165039063 2010.681030273438 C 1401.86474609375 2010.681030273438 1395.051147460938 2019.888061523438 1395.051147460938 2027.366821289063 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2hj4jj =
    '<svg viewBox="0.0 5.1 22.0 16.5" ><path transform="translate(-1405.62, -2025.34)" d="M 1405.616943359375 2040.6328125 C 1405.616943359375 2045.19921875 1410.546020507813 2046.982177734375 1416.626220703125 2046.982177734375 C 1422.706787109375 2046.982177734375 1427.635375976563 2045.19921875 1427.635375976563 2040.6328125 C 1427.635375976563 2036.066162109375 1422.706787109375 2030.444091796875 1416.626220703125 2030.444091796875 C 1410.546020507813 2030.444091796875 1405.616943359375 2036.066162109375 1405.616943359375 2040.6328125 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_h1ah1j =
    '<svg viewBox="0.0 11.3 22.0 10.3" ><path transform="translate(-1405.62, -2034.69)" d="M 1406.726806640625 2045.987182617188 C 1406.640747070313 2046.456909179688 1406.594482421875 2046.922485351563 1406.594482421875 2047.378295898438 C 1406.594482421875 2051.94482421875 1411.085693359375 2053.7275390625 1416.626220703125 2053.7275390625 C 1422.16650390625 2053.7275390625 1426.658081054688 2051.94482421875 1426.658081054688 2047.378295898438 C 1426.658081054688 2046.922485351563 1426.611572265625 2046.456909179688 1426.526000976563 2045.987182617188 C 1427.23583984375 2047.302612304688 1427.635375976563 2048.685791015625 1427.635375976563 2049.98486328125 C 1427.635375976563 2054.55078125 1422.706787109375 2056.333740234375 1416.626220703125 2056.333740234375 C 1410.546020507813 2056.333740234375 1405.616943359375 2054.55078125 1405.616943359375 2049.98486328125 C 1405.616943359375 2048.685791015625 1406.016479492188 2047.302612304688 1406.726806640625 2045.987182617188 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_fhjafw =
    '<svg viewBox="0.0 0.0 4.7 4.7" ><path transform="translate(-1446.59, -2022.79)" d="M 1451.28515625 2026.3193359375 C 1451.5400390625 2028.169921875 1449.274047851563 2027.538818359375 1448.35498046875 2026.815673828125 C 1447.59765625 2026.220703125 1446.260620117188 2024.909423828125 1446.667236328125 2023.78759765625 C 1447.685424804688 2020.973876953125 1451.084106445313 2024.862060546875 1451.28515625 2026.3193359375 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mpvlpb =
    '<svg viewBox="0.0 1.0 4.7 3.8" ><path transform="translate(-1446.59, -2024.24)" d="M 1446.684326171875 2025.192016601563 C 1446.958740234375 2026.029174804688 1447.807250976563 2026.835083007813 1448.35498046875 2027.265502929688 C 1449.122192382813 2027.869018554688 1450.824340820313 2028.403198242188 1451.218383789063 2027.487426757813 C 1451.250244140625 2027.586303710938 1451.273681640625 2027.679809570313 1451.28515625 2027.764038085938 C 1451.5400390625 2029.614379882813 1449.274047851563 2028.983276367188 1448.35498046875 2028.260375976563 C 1447.59765625 2027.665161132813 1446.260620117188 2026.353881835938 1446.667236328125 2025.232299804688 C 1446.6728515625 2025.217895507813 1446.678833007813 2025.205932617188 1446.684326171875 2025.192016601563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2t0m25 =
    '<svg viewBox="0.0 1.0 4.7 3.8" ><path transform="translate(-1446.59, -2024.26)" d="M 1446.667236328125 2025.253173828125 C 1446.671020507813 2025.244384765625 1446.674438476563 2025.236328125 1446.678100585938 2025.227294921875 C 1446.6953125 2026.227783203125 1447.783447265625 2027.280029296875 1448.439575195313 2027.795654296875 C 1449.204711914063 2028.398193359375 1450.901611328125 2028.931396484375 1451.299560546875 2028.02392578125 C 1451.32666015625 2029.57080078125 1449.23095703125 2028.97021484375 1448.35498046875 2028.281494140625 C 1447.59765625 2027.6865234375 1446.260620117188 2026.375 1446.667236328125 2025.253173828125 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bri5v =
    '<svg viewBox="0.0 12.0 22.0 9.6" ><path transform="translate(-1405.62, -2035.74)" d="M 1406.384155273438 2047.739990234375 C 1406.232421875 2048.326416015625 1406.151123046875 2048.90966796875 1406.151123046875 2049.47607421875 C 1406.151123046875 2053.821044921875 1410.8408203125 2055.51708984375 1416.626220703125 2055.51708984375 C 1422.411499023438 2055.51708984375 1427.1015625 2053.821044921875 1427.1015625 2049.47607421875 C 1427.1015625 2048.90966796875 1427.019897460938 2048.326416015625 1426.868286132813 2047.739990234375 C 1427.362060546875 2048.840576171875 1427.635375976563 2049.96875 1427.635375976563 2051.039306640625 C 1427.635375976563 2055.60546875 1422.706787109375 2057.388427734375 1416.626220703125 2057.388427734375 C 1410.546020507813 2057.388427734375 1405.616943359375 2055.60546875 1405.616943359375 2051.039306640625 C 1405.616943359375 2049.96875 1405.890258789063 2048.840576171875 1406.384155273438 2047.739990234375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8f88tc =
    '<svg viewBox="0.0 0.0 4.7 4.7" ><path transform="translate(-1407.5, -2022.79)" d="M 1407.520141601563 2026.3193359375 C 1407.265258789063 2028.169921875 1409.53173828125 2027.538818359375 1410.450317382813 2026.815673828125 C 1411.20751953125 2026.220703125 1412.544677734375 2024.909423828125 1412.138916015625 2023.78759765625 C 1411.119506835938 2020.973876953125 1407.7216796875 2024.862060546875 1407.520141601563 2026.3193359375 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yug8tc =
    '<svg viewBox="0.0 1.0 4.7 3.8" ><path transform="translate(-1407.5, -2024.24)" d="M 1412.121215820313 2025.192016601563 C 1411.846557617188 2026.029174804688 1410.998413085938 2026.835083007813 1410.450317382813 2027.265502929688 C 1409.68310546875 2027.869018554688 1407.981079101563 2028.403198242188 1407.587768554688 2027.487426757813 C 1407.555908203125 2027.586303710938 1407.5322265625 2027.679809570313 1407.520141601563 2027.764038085938 C 1407.265258789063 2029.614379882813 1409.53173828125 2028.983276367188 1410.450317382813 2028.260375976563 C 1411.20751953125 2027.665161132813 1412.544677734375 2026.353881835938 1412.138916015625 2025.232299804688 C 1412.133178710938 2025.217895507813 1412.12646484375 2025.205932617188 1412.121215820313 2025.192016601563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ekdajq =
    '<svg viewBox="0.0 1.0 4.7 3.8" ><path transform="translate(-1407.51, -2024.26)" d="M 1412.146850585938 2025.253173828125 C 1412.142700195313 2025.244384765625 1412.138793945313 2025.236328125 1412.134765625 2025.227294921875 C 1412.118530273438 2026.227783203125 1411.02978515625 2027.280029296875 1410.374633789063 2027.795654296875 C 1409.608032226563 2028.398193359375 1407.912109375 2028.931396484375 1407.513793945313 2028.02392578125 C 1407.487426757813 2029.57080078125 1409.582641601563 2028.97021484375 1410.458251953125 2028.281494140625 C 1411.215576171875 2027.6865234375 1412.552734375 2026.375 1412.146850585938 2025.253173828125 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qquw2x =
    '<svg viewBox="0.0 0.0 5.9 3.2" ><path transform="translate(-1425.74, -2017.62)" d="M 1426.385375976563 2020.178344726563 C 1425.44970703125 2019.543334960938 1425.610229492188 2018.603637695313 1426.395263671875 2018.046752929688 C 1427.038696289063 2017.590209960938 1429.061889648438 2017.444702148438 1430.316528320313 2017.910034179688 C 1431.356567382813 2018.296508789063 1432.0302734375 2018.968627929688 1431.377319335938 2019.871459960938 C 1430.38671875 2021.242553710938 1427.645263671875 2021.032592773438 1426.385375976563 2020.178344726563 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nbp0iw =
    '<svg viewBox="0.0 0.8 5.9 2.4" ><path transform="translate(-1425.75, -2018.89)" d="M 1425.988037109375 2019.727172851563 C 1426.054077148438 2020.012329101563 1426.236938476563 2020.291625976563 1426.56201171875 2020.530395507813 C 1427.736694335938 2021.391479492188 1430.284423828125 2021.617309570313 1431.196166992188 2020.251831054688 C 1431.29345703125 2020.107055664063 1431.354858398438 2019.968627929688 1431.391479492188 2019.835571289063 C 1431.697265625 2020.188842773438 1431.753051757813 2020.624877929688 1431.383911132813 2021.136352539063 C 1430.393188476563 2022.507446289063 1427.65185546875 2022.297729492188 1426.391845703125 2021.443237304688 C 1425.661010742188 2020.946899414063 1425.605224609375 2020.267700195313 1425.988037109375 2019.727172851563 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_iw5198 =
    '<svg viewBox="0.0 1.3 5.9 2.0" ><path transform="translate(-1425.76, -2019.53)" d="M 1426.397216796875 2021.568115234375 C 1427.6572265625 2022.4228515625 1430.398559570313 2022.632568359375 1431.38916015625 2021.261474609375 C 1431.496704101563 2021.11279296875 1431.564331054688 2020.971923828125 1431.604125976563 2020.8359375 C 1431.693481445313 2021.11328125 1431.64208984375 2021.428466796875 1431.38916015625 2021.779052734375 C 1430.398559570313 2023.14990234375 1427.6572265625 2022.940185546875 1426.397216796875 2022.08544921875 C 1425.8486328125 2021.713623046875 1425.684936523438 2021.23779296875 1425.795776367188 2020.794921875 C 1425.869750976563 2021.0703125 1426.060302734375 2021.339111328125 1426.397216796875 2021.568115234375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6qppf2 =
    '<svg viewBox="2.0 82.2 30.4 18.3" ><path transform="translate(-1393.09, -1950.55)" d="M 1397.263549804688 2032.744995117188 C 1396.5791015625 2034.622924804688 1396.200073242188 2036.557006835938 1396.200073242188 2038.388061523438 C 1396.200073242188 2045.867797851563 1402.498779296875 2048.787109375 1410.269165039063 2048.787109375 C 1418.039428710938 2048.787109375 1424.338745117188 2045.867797851563 1424.338745117188 2038.388061523438 C 1424.338745117188 2036.557006835938 1423.958618164063 2034.622924804688 1423.2744140625 2032.744995117188 C 1424.677734375 2035.284301757813 1425.487060546875 2038.066040039063 1425.487060546875 2040.641967773438 C 1425.487060546875 2048.121337890625 1418.673583984375 2051.041015625 1410.269165039063 2051.041015625 C 1401.86474609375 2051.041015625 1395.051147460938 2048.121337890625 1395.051147460938 2040.641967773438 C 1395.051147460938 2038.066040039063 1395.860229492188 2035.284301757813 1397.263549804688 2032.744995117188 Z" fill="#b77965" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x6jum1 =
    '<svg viewBox="32.7 46.2 1.0 1.0" ><path transform="translate(-1439.5, -1896.18)" d="M 1472.197021484375 1942.384033203125" fill="none" stroke="#404041" stroke-width="8.48073959350586" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_k6j1xi =
    '<svg viewBox="0.0 0.0 16.6 7.6" ><path transform="translate(-1451.82, -1945.88)" d="M 1467.824951171875 1947.06298828125 C 1468.305053710938 1947.225463867188 1468.579223632813 1947.74853515625 1468.392822265625 1948.220947265625 C 1467.27197265625 1951.055908203125 1463.988403320313 1953.444213867188 1460.133056640625 1953.444213867188 C 1456.279174804688 1953.444213867188 1452.994750976563 1951.055908203125 1451.8740234375 1948.220947265625 C 1451.688842773438 1947.74853515625 1451.961791992188 1947.225463867188 1452.441772460938 1947.06298828125 C 1457.088012695313 1945.49072265625 1463.178955078125 1945.49072265625 1467.824951171875 1947.06298828125 Z" fill="#000d20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_t6eg13 =
    '<svg viewBox="0.0 0.0 8.3 2.3" ><path transform="translate(-1462.31, -1958.98)" d="M 1470.585083007813 1960.35107421875 C 1469.353881835938 1960.957763671875 1467.9453125 1961.321533203125 1466.447875976563 1961.321533203125 C 1464.951538085938 1961.321533203125 1463.543090820313 1960.957763671875 1462.31103515625 1960.35107421875 C 1463.451416015625 1959.492309570313 1464.884887695313 1958.97607421875 1466.447875976563 1958.97607421875 C 1468.01123046875 1958.97607421875 1469.445434570313 1959.492309570313 1470.585083007813 1960.35107421875 Z" fill="#cc342f" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_etrppy =
    '<svg viewBox="33.1 51.2 1.0 1.0" ><path transform="translate(-1440.1, -1903.7)" d="M 1473.197021484375 1954.883056640625" fill="#ff0000" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_o254qw =
    '<svg viewBox="7.5 18.0 21.0 1.0" ><path  d="M 7.5 18 L 28.5 18" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_h7dv3b =
    '<svg viewBox="18.0 7.5 10.5 21.0" ><path  d="M 18 7.5 L 28.5 18 L 18 28.5" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_sohujk =
    '<svg viewBox="353.0 579.0 28.1 240.7" ><path transform="translate(345.13, 567.7)" d="M 25.81575965881348 11.61090755462646 C 25.31740570068359 12.09949016571045 25.31740570068359 12.91053676605225 25.80598640441895 13.40889263153076 L 31.74715232849121 19.35982894897461 L 9.135542869567871 19.35982894897461 C 8.441755294799805 19.35982894897461 7.875000476837158 19.92658424377441 7.875000476837158 20.6301441192627 C 7.875000476837158 21.33370399475098 8.441755294799805 21.90045928955078 9.135542869567871 21.90045928955078 L 31.73738288879395 21.90045928955078 L 25.79621696472168 27.85139846801758 C 25.30763244628906 28.34975242614746 25.31740188598633 29.15102767944336 25.80598640441895 29.64938545227051 C 26.30434036254883 30.13796424865723 27.09584426879883 30.13796424865723 27.59419822692871 29.63961601257324 L 35.64604187011719 21.52913856506348 C 35.64604187011719 21.52913856506348 35.64604187011719 21.52913856506348 35.64604187011719 21.52913856506348 C 35.7535285949707 21.41187858581543 35.84147262573242 21.28484725952148 35.90987396240234 21.12850189208984 C 35.97827911376953 20.9721565246582 36.00759506225586 20.80603981018066 36.00759506225586 20.63991928100586 C 36.00759506225586 20.30768394470215 35.88056182861328 19.99499320983887 35.64604187011719 19.75069999694824 L 27.59419822692871 11.64022827148438 C 27.11539268493652 11.13209533691406 26.31411361694336 11.12232494354248 25.81575965881348 11.61090755462646 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(345.13, 789.63)" d="M 25.81575965881348 11.61090755462646 C 25.31740570068359 12.09949016571045 25.31740570068359 12.91053676605225 25.80598640441895 13.40889263153076 L 31.74715232849121 19.35982894897461 L 9.135542869567871 19.35982894897461 C 8.441755294799805 19.35982894897461 7.875000476837158 19.92658424377441 7.875000476837158 20.6301441192627 C 7.875000476837158 21.33370399475098 8.441755294799805 21.90045928955078 9.135542869567871 21.90045928955078 L 31.73738288879395 21.90045928955078 L 25.79621696472168 27.85139846801758 C 25.30763244628906 28.34975242614746 25.31740188598633 29.15102767944336 25.80598640441895 29.64938545227051 C 26.30434036254883 30.13796424865723 27.09584426879883 30.13796424865723 27.59419822692871 29.63961601257324 L 35.64604187011719 21.52913856506348 C 35.64604187011719 21.52913856506348 35.64604187011719 21.52913856506348 35.64604187011719 21.52913856506348 C 35.7535285949707 21.41187858581543 35.84147262573242 21.28484725952148 35.90987396240234 21.12850189208984 C 35.97827911376953 20.9721565246582 36.00759506225586 20.80603981018066 36.00759506225586 20.63991928100586 C 36.00759506225586 20.30768394470215 35.88056182861328 19.99499320983887 35.64604187011719 19.75069999694824 L 27.59419822692871 11.64022827148438 C 27.11539268493652 11.13209533691406 26.31411361694336 11.12232494354248 25.81575965881348 11.61090755462646 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uidsii =
    '<svg viewBox="0.2 0.0 56.8 7.2" ><path transform="translate(-1326.85, -1095.58)" d="M 1383.851440429688 1100.046020507813 C 1383.851440429688 1102.03857421875 1371.141967773438 1102.816284179688 1355.464233398438 1102.816284179688 C 1339.786376953125 1102.816284179688 1327.076904296875 1102.03857421875 1327.076904296875 1100.046020507813 C 1327.076904296875 1098.053588867188 1339.786376953125 1095.600952148438 1355.464233398438 1095.600952148438 C 1371.141967773438 1095.600952148438 1383.851440429688 1098.053588867188 1383.851440429688 1100.046020507813 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yiwjk6 =
    '<svg viewBox="0.0 0.0 56.8 7.2" ><path transform="translate(-1325.08, -1094.01)" d="M 1354.840087890625 1094.012939453125 C 1368.960205078125 1094.150146484375 1380.1884765625 1096.373901367188 1380.1884765625 1098.191040039063 C 1380.1884765625 1100.06689453125 1368.2236328125 1100.798950195313 1353.46435546875 1100.798950195313 C 1338.704956054688 1100.798950195313 1326.740356445313 1100.06689453125 1326.740356445313 1098.191040039063 C 1326.740356445313 1096.373901367188 1337.96826171875 1094.150146484375 1352.088623046875 1094.012939453125 C 1337.049682617188 1094.150512695313 1325.0771484375 1096.517578125 1325.0771484375 1098.451416015625 C 1325.0771484375 1100.44384765625 1337.78662109375 1101.2216796875 1353.46435546875 1101.2216796875 C 1369.142333984375 1101.2216796875 1381.851684570313 1100.44384765625 1381.851684570313 1098.451416015625 C 1381.851684570313 1096.517578125 1369.878662109375 1094.150512695313 1354.840087890625 1094.012939453125 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hvvgg2 =
    '<svg viewBox="0.0 0.0 20.2 4.0" ><path transform="translate(-1218.99, -1212.42)" d="M 1221.019775390625 1216.220947265625 C 1223.06201171875 1216.577514648438 1226.536865234375 1216.322387695313 1228.66259765625 1216.039428710938 C 1231.587646484375 1215.649780273438 1232.278564453125 1215.055297851563 1234.548706054688 1214.607177734375 C 1236.338623046875 1214.253784179688 1238.6103515625 1213.844970703125 1239.103759765625 1213.400024414063 C 1239.626342773438 1212.928100585938 1236.181884765625 1212.448608398438 1233.30029296875 1212.421264648438 C 1229.489624023438 1212.38525390625 1213.39208984375 1214.888671875 1221.019775390625 1216.220947265625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_fqgdzx =
    '<svg viewBox="0.0 0.0 20.2 4.0" ><path transform="translate(-1734.34, -1214.11)" d="M 1752.472534179688 1217.911254882813 C 1750.430297851563 1218.267944335938 1746.955444335938 1218.0126953125 1744.82958984375 1217.729736328125 C 1741.90478515625 1217.340209960938 1741.213745117188 1216.745727539063 1738.943481445313 1216.297485351563 C 1737.154052734375 1215.944091796875 1734.881958007813 1215.535278320313 1734.388305664063 1215.09033203125 C 1733.865844726563 1214.618408203125 1737.310791015625 1214.138793945313 1740.191772460938 1214.111694335938 C 1744.002563476563 1214.07568359375 1760.10009765625 1216.578979492188 1752.472534179688 1217.911254882813 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3ppp3 =
    '<svg viewBox="0.0 0.0 15.5 2.2" ><path transform="translate(-1260.34, -1212.11)" d="M 1260.338989257813 1213.330932617188 C 1265.041015625 1213.35400390625 1269.128784179688 1213.72216796875 1271.398681640625 1214.263671875 C 1273.164428710938 1213.916870117188 1275.327514648438 1213.518188476563 1275.807250976563 1213.085327148438 C 1276.331176757813 1212.613403320313 1272.885864257813 1212.1337890625 1270.004638671875 1212.1064453125 C 1268.232177734375 1212.089721679688 1263.802368164063 1212.622314453125 1260.338989257813 1213.330932617188 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_k6bvsj =
    '<svg viewBox="0.0 0.0 15.5 2.2" ><path transform="translate(-1263.34, -1208.11)" d="M 1263.338989257813 1209.330688476563 C 1268.040893554688 1209.353637695313 1272.12890625 1209.721923828125 1274.39892578125 1210.263305664063 C 1276.164672851563 1209.91650390625 1278.32763671875 1209.517822265625 1278.807373046875 1209.085205078125 C 1279.3310546875 1208.613037109375 1275.885620117188 1208.133544921875 1273.004760742188 1208.106201171875 C 1271.232421875 1208.08935546875 1266.802490234375 1208.621948242188 1263.338989257813 1209.330688476563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vz3c9a =
    '<svg viewBox="0.0 0.0 15.5 2.2" ><path transform="translate(-1734.34, -1212.11)" d="M 1749.860107421875 1213.330932617188 C 1745.158081054688 1213.35400390625 1741.070190429688 1213.72216796875 1738.800048828125 1214.263671875 C 1737.034545898438 1213.916870117188 1734.871826171875 1213.518188476563 1734.391967773438 1213.085327148438 C 1733.867919921875 1212.613403320313 1737.3134765625 1212.1337890625 1740.1943359375 1212.1064453125 C 1741.966796875 1212.089721679688 1746.396606445313 1212.622314453125 1749.860107421875 1213.330932617188 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rq28xl =
    '<svg viewBox="0.0 0.0 15.5 2.2" ><path transform="translate(-1731.34, -1208.11)" d="M 1746.860107421875 1209.330688476563 C 1742.157958984375 1209.353637695313 1738.070190429688 1209.721923828125 1735.800170898438 1210.263305664063 C 1734.034545898438 1209.91650390625 1731.87158203125 1209.517822265625 1731.391845703125 1209.085205078125 C 1730.867919921875 1208.613037109375 1734.313354492188 1208.133544921875 1737.1943359375 1208.106201171875 C 1738.966796875 1208.08935546875 1743.396728515625 1208.621948242188 1746.860107421875 1209.330688476563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7izzq =
    '<svg viewBox="12.1 6.7 20.5 6.9" ><path transform="translate(-1313.99, -1100.68)" d="M 1346.616943359375 1107.420166015625 L 1346.616943359375 1107.419799804688 C 1343.667236328125 1107.576904296875 1340.9150390625 1107.816162109375 1338.44384765625 1108.112548828125 C 1338.363525390625 1108.121948242188 1338.28466796875 1108.131713867188 1338.20556640625 1108.141357421875 C 1338.126708984375 1108.151000976563 1338.04736328125 1108.160888671875 1337.968505859375 1108.170532226563 C 1337.49658203125 1108.229125976563 1337.034912109375 1108.289916992188 1336.5869140625 1108.352783203125 C 1336.512451171875 1108.36328125 1336.437744140625 1108.3740234375 1336.363525390625 1108.384399414063 C 1335.6826171875 1108.48095703125 1335.0302734375 1108.581909179688 1334.408203125 1108.686401367188 C 1334.291748046875 1108.7060546875 1334.175537109375 1108.725708007813 1334.060302734375 1108.745483398438 C 1333.830078125 1108.785522460938 1333.604248046875 1108.825561523438 1333.38427734375 1108.866088867188 C 1333.2724609375 1108.88671875 1333.1630859375 1108.906982421875 1333.054443359375 1108.927490234375 C 1332.982177734375 1108.941284179688 1332.909912109375 1108.954956054688 1332.8388671875 1108.968872070313 C 1332.696533203125 1108.996459960938 1332.5556640625 1109.024291992188 1332.416748046875 1109.05224609375 C 1332.3466796875 1109.066162109375 1332.277587890625 1109.080322265625 1332.208984375 1109.094360351563 C 1332.14013671875 1109.108520507813 1332.072265625 1109.122680664063 1332.004638671875 1109.136840820313 C 1331.93798828125 1109.151000976563 1331.8701171875 1109.165283203125 1331.803466796875 1109.179321289063 C 1331.737060546875 1109.193725585938 1331.671630859375 1109.2080078125 1331.605712890625 1109.222290039063 C 1331.54052734375 1109.236694335938 1331.47509765625 1109.251220703125 1331.41064453125 1109.265502929688 C 1331.346435546875 1109.280029296875 1331.281982421875 1109.294311523438 1331.218994140625 1109.308837890625 C 1331.155517578125 1109.323364257813 1331.092529296875 1109.337890625 1331.029052734375 1109.352661132813 C 1330.967041015625 1109.366943359375 1330.9052734375 1109.381713867188 1330.84423828125 1109.396484375 C 1330.781982421875 1109.4111328125 1330.720947265625 1109.42578125 1330.6611328125 1109.4404296875 C 1330.601318359375 1109.455078125 1330.541259765625 1109.469848632813 1330.481689453125 1109.484619140625 C 1330.422119140625 1109.499389648438 1330.36328125 1109.514282226563 1330.305419921875 1109.529174804688 C 1330.23779296875 1109.546630859375 1330.170166015625 1109.563720703125 1330.103515625 1109.581176757813 C 1330.05615234375 1109.593505859375 1330.0087890625 1109.606201171875 1329.962158203125 1109.618530273438 C 1329.906005859375 1109.633544921875 1329.850830078125 1109.648559570313 1329.795166015625 1109.663696289063 C 1329.741455078125 1109.6787109375 1329.685791015625 1109.693725585938 1329.632568359375 1109.708862304688 C 1329.4541015625 1109.7587890625 1329.28173828125 1109.808959960938 1329.11669921875 1109.859375 C 1329.031005859375 1109.88525390625 1328.947265625 1109.9111328125 1328.8662109375 1109.936889648438 C 1328.50244140625 1110.052368164063 1328.171630859375 1110.1689453125 1327.876220703125 1110.286010742188 C 1327.85107421875 1110.295776367188 1327.826416015625 1110.305419921875 1327.802734375 1110.315185546875 C 1327.73095703125 1110.344116210938 1327.66162109375 1110.372924804688 1327.59521484375 1110.401611328125 C 1327.557861328125 1110.417358398438 1327.522705078125 1110.432861328125 1327.487548828125 1110.448486328125 C 1327.451416015625 1110.464111328125 1327.41796875 1110.479858398438 1327.384033203125 1110.49560546875 C 1327.35791015625 1110.50732421875 1327.33203125 1110.519409179688 1327.30712890625 1110.531372070313 C 1327.283447265625 1110.542724609375 1327.259765625 1110.553955078125 1327.236083984375 1110.565307617188 C 1327.210205078125 1110.578002929688 1327.185302734375 1110.590576171875 1327.160400390625 1110.603271484375 C 1327.120849609375 1110.623413085938 1327.082763671875 1110.643188476563 1327.045166015625 1110.663208007813 C 1327.0205078125 1110.676025390625 1326.99658203125 1110.688720703125 1326.97412109375 1110.701416015625 C 1326.93798828125 1110.721313476563 1326.904296875 1110.741088867188 1326.87158203125 1110.7607421875 C 1326.85107421875 1110.77197265625 1326.831787109375 1110.783203125 1326.81396484375 1110.794677734375 C 1326.79345703125 1110.806762695313 1326.773193359375 1110.818969726563 1326.75537109375 1110.8310546875 C 1326.733642578125 1110.844482421875 1326.71337890625 1110.857666015625 1326.693115234375 1110.87109375 C 1326.651611328125 1110.898071289063 1326.61279296875 1110.92529296875 1326.57666015625 1110.952270507813 C 1326.5576171875 1110.965576171875 1326.540771484375 1110.978637695313 1326.52392578125 1110.991821289063 C 1326.5078125 1111.003662109375 1326.4931640625 1111.015380859375 1326.478759765625 1111.027221679688 C 1326.468505859375 1111.035766601563 1326.45849609375 1111.044067382813 1326.447998046875 1111.052490234375 C 1326.4345703125 1111.064575195313 1326.419677734375 1111.07666015625 1326.407470703125 1111.088623046875 C 1326.3916015625 1111.1015625 1326.378173828125 1111.114868164063 1326.36474609375 1111.128051757813 C 1326.343994140625 1111.147094726563 1326.324951171875 1111.166137695313 1326.306884765625 1111.18505859375 C 1326.296630859375 1111.1962890625 1326.28662109375 1111.20751953125 1326.277587890625 1111.218872070313 C 1326.268798828125 1111.2275390625 1326.261962890625 1111.236328125 1326.255126953125 1111.244995117188 C 1326.244873046875 1111.2568359375 1326.23583984375 1111.268432617188 1326.22705078125 1111.280151367188 C 1326.21435546875 1111.296020507813 1326.203125 1111.311889648438 1326.193115234375 1111.327880859375 C 1326.18603515625 1111.336547851563 1326.1806640625 1111.34521484375 1326.176025390625 1111.35400390625 C 1326.17041015625 1111.363403320313 1326.164794921875 1111.372802734375 1326.1591796875 1111.382202148438 C 1326.131103515625 1111.431274414063 1326.110595703125 1111.480346679688 1326.09814453125 1111.528930664063 C 1326.09375 1111.5419921875 1326.09130859375 1111.5546875 1326.089111328125 1111.5673828125 C 1326.08349609375 1111.597900390625 1326.080078125 1111.628173828125 1326.080078125 1111.658325195313 C 1326.080078125 1113.304809570313 1334.7578125 1114.121826171875 1346.616943359375 1114.35595703125 L 1346.616943359375 1113.928100585938 C 1345.77685546875 1113.163940429688 1345.141357421875 1112.31005859375 1344.923828125 1111.379150390625 C 1344.5732421875 1109.878173828125 1345.396484375 1108.546020507813 1346.616943359375 1107.43310546875 L 1346.616943359375 1107.420166015625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2s2ygp =
    '<svg viewBox="47.4 6.7 21.4 7.0" ><path transform="translate(-1591.59, -1097.9)" d="M 1638.999877929688 1104.60986328125 L 1638.999877929688 1111.17138671875 L 1638.999877929688 1111.597900390625 C 1651.322875976563 1111.38818359375 1660.447875976563 1110.572021484375 1660.447875976563 1108.883666992188 C 1660.447875976563 1108.853515625 1660.44482421875 1108.8232421875 1660.43896484375 1108.792846679688 C 1660.436645507813 1108.780029296875 1660.43310546875 1108.767333984375 1660.429809570313 1108.75439453125 C 1660.417358398438 1108.705688476563 1660.396728515625 1108.65673828125 1660.369140625 1108.607543945313 C 1660.363159179688 1108.59814453125 1660.357543945313 1108.588745117188 1660.351806640625 1108.579345703125 C 1660.34765625 1108.570678710938 1660.341796875 1108.561889648438 1660.334838867188 1108.55322265625 C 1660.324829101563 1108.537231445313 1660.313354492188 1108.521240234375 1660.301025390625 1108.505493164063 C 1660.292114257813 1108.493774414063 1660.283203125 1108.482177734375 1660.272827148438 1108.470336914063 C 1660.266479492188 1108.461669921875 1660.259033203125 1108.452880859375 1660.25048828125 1108.444213867188 C 1660.241333007813 1108.432861328125 1660.231201171875 1108.421752929688 1660.220947265625 1108.410400390625 C 1660.203125 1108.3916015625 1660.183349609375 1108.372436523438 1660.163452148438 1108.353393554688 C 1660.149780273438 1108.340209960938 1660.136474609375 1108.326904296875 1660.12060546875 1108.31396484375 C 1660.108276367188 1108.302001953125 1660.093505859375 1108.289916992188 1660.079956054688 1108.27783203125 C 1660.069580078125 1108.269409179688 1660.059448242188 1108.261108398438 1660.049438476563 1108.252563476563 C 1660.03466796875 1108.24072265625 1660.02001953125 1108.22900390625 1660.004150390625 1108.217163085938 C 1659.987426757813 1108.203979492188 1659.970336914063 1108.191040039063 1659.951049804688 1108.177734375 C 1659.903930664063 1108.142700195313 1659.853271484375 1108.107421875 1659.79736328125 1108.072265625 C 1659.775024414063 1108.057250976563 1659.751586914063 1108.04248046875 1659.726806640625 1108.027465820313 C 1659.72314453125 1108.025024414063 1659.718505859375 1108.0224609375 1659.713989257813 1108.02001953125 C 1659.695922851563 1108.008544921875 1659.6767578125 1107.997314453125 1659.65771484375 1107.985961914063 C 1659.6240234375 1107.96630859375 1659.590087890625 1107.946655273438 1659.553955078125 1107.926879882813 C 1659.5302734375 1107.9140625 1659.507690429688 1107.9013671875 1659.482788085938 1107.888549804688 C 1659.4453125 1107.86865234375 1659.408203125 1107.848999023438 1659.36865234375 1107.8291015625 C 1659.3056640625 1107.797241210938 1659.239990234375 1107.765502929688 1659.171264648438 1107.733642578125 C 1659.153076171875 1107.72509765625 1659.135009765625 1107.716430664063 1659.115844726563 1107.707885742188 C 1659.090942382813 1107.696533203125 1659.066040039063 1107.685180664063 1659.040405273438 1107.673950195313 C 1659.005004882813 1107.658325195313 1658.970336914063 1107.642578125 1658.932983398438 1107.627075195313 C 1658.866333007813 1107.598266601563 1658.79736328125 1107.569458007813 1658.725341796875 1107.54052734375 C 1658.701538085938 1107.53076171875 1658.676635742188 1107.521118164063 1658.65185546875 1107.511352539063 C 1658.5546875 1107.473022460938 1658.454345703125 1107.434692382813 1658.349487304688 1107.396362304688 C 1658.306396484375 1107.380493164063 1658.262451171875 1107.364501953125 1658.21728515625 1107.3486328125 C 1657.983642578125 1107.265502929688 1657.731689453125 1107.182983398438 1657.464233398438 1107.100952148438 C 1657.424682617188 1107.088500976563 1657.383056640625 1107.076049804688 1657.342651367188 1107.063720703125 C 1657.290161132813 1107.048095703125 1657.2373046875 1107.0322265625 1657.183349609375 1107.0166015625 C 1657.063232421875 1106.981323242188 1656.939208984375 1106.946166992188 1656.8115234375 1106.9111328125 C 1656.770874023438 1106.899658203125 1656.729248046875 1106.888061523438 1656.686401367188 1106.876586914063 C 1656.630004882813 1106.861206054688 1656.572509765625 1106.845703125 1656.513916015625 1106.830322265625 C 1656.455932617188 1106.81494140625 1656.397583007813 1106.799438476563 1656.337524414063 1106.7841796875 C 1656.275512695313 1106.767822265625 1656.212158203125 1106.751708984375 1656.14697265625 1106.7353515625 C 1656.095947265625 1106.722412109375 1656.044067382813 1106.70947265625 1655.992065429688 1106.696655273438 C 1655.77197265625 1106.64208984375 1655.543823242188 1106.588012695313 1655.309204101563 1106.5341796875 C 1655.24609375 1106.519653320313 1655.181640625 1106.50537109375 1655.117065429688 1106.490966796875 C 1655.058471679688 1106.4775390625 1654.998779296875 1106.464477539063 1654.937622070313 1106.451293945313 C 1654.857543945313 1106.433715820313 1654.776123046875 1106.416015625 1654.693969726563 1106.3984375 C 1654.637329101563 1106.386352539063 1654.580932617188 1106.374267578125 1654.523559570313 1106.362182617188 C 1654.45556640625 1106.348022460938 1654.387939453125 1106.333862304688 1654.319091796875 1106.31982421875 C 1654.250366210938 1106.3056640625 1654.181518554688 1106.291625976563 1654.111450195313 1106.277587890625 C 1654.042724609375 1106.263793945313 1653.972534179688 1106.249633789063 1653.901611328125 1106.23583984375 C 1653.830322265625 1106.2216796875 1653.757934570313 1106.207397460938 1653.684692382813 1106.193481445313 C 1653.614624023438 1106.179809570313 1653.54443359375 1106.166381835938 1653.473510742188 1106.152954101563 C 1653.256713867188 1106.11181640625 1653.035522460938 1106.071044921875 1652.808471679688 1106.030883789063 C 1652.69677734375 1106.0107421875 1652.582885742188 1105.990966796875 1652.468872070313 1105.971069335938 C 1652.468872070313 1105.971069335938 1652.467651367188 1105.971069335938 1652.467651367188 1105.970947265625 C 1652.352416992188 1105.951171875 1652.237426757813 1105.931396484375 1652.119995117188 1105.911743164063 C 1651.497924804688 1105.807250976563 1650.845458984375 1105.706420898438 1650.164428710938 1105.609741210938 C 1650.090209960938 1105.599365234375 1650.015625 1105.588623046875 1649.941162109375 1105.578247070313 C 1649.4931640625 1105.515258789063 1649.031127929688 1105.45458984375 1648.5595703125 1105.395874023438 C 1648.480712890625 1105.386108398438 1648.4013671875 1105.376342773438 1648.32275390625 1105.36669921875 C 1648.148681640625 1105.345458984375 1647.973510742188 1105.324462890625 1647.79638671875 1105.3037109375 C 1647.6201171875 1105.282958984375 1647.441772460938 1105.2626953125 1647.26220703125 1105.242553710938 C 1647.082763671875 1105.222290039063 1646.902221679688 1105.202758789063 1646.71923828125 1105.183227539063 L 1646.445068359375 1105.154174804688 C 1644.151123046875 1104.914306640625 1641.649291992188 1104.723754882813 1638.999877929688 1104.599731445313 L 1638.999877929688 1104.60009765625 L 1638.999877929688 1104.60986328125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_onogjg =
    '<svg viewBox="12.1 6.7 20.5 6.9" ><path transform="translate(-1313.99, -1100.7)" d="M 1346.616943359375 1107.439819335938 C 1343.667236328125 1107.597045898438 1340.9150390625 1107.836181640625 1338.44384765625 1108.132080078125 C 1338.363525390625 1108.141723632813 1338.28466796875 1108.1513671875 1338.20556640625 1108.161010742188 C 1338.126708984375 1108.170654296875 1338.04736328125 1108.180419921875 1337.968505859375 1108.190185546875 C 1337.497802734375 1108.2490234375 1337.037353515625 1108.309814453125 1336.5869140625 1108.37255859375 C 1336.512451171875 1108.382934570313 1336.437744140625 1108.393676757813 1336.363525390625 1108.404052734375 C 1335.684814453125 1108.500610351563 1335.032470703125 1108.6015625 1334.408203125 1108.7060546875 C 1334.291748046875 1108.725708007813 1334.175537109375 1108.745483398438 1334.060302734375 1108.765258789063 C 1333.8310546875 1108.804931640625 1333.60546875 1108.84521484375 1333.38427734375 1108.885864257813 C 1333.2724609375 1108.906372070313 1333.1630859375 1108.926513671875 1333.054443359375 1108.947265625 C 1332.982177734375 1108.9609375 1332.909912109375 1108.974609375 1332.8388671875 1108.988525390625 C 1332.696533203125 1109.01611328125 1332.5556640625 1109.0439453125 1332.416748046875 1109.07177734375 C 1332.3466796875 1109.0859375 1332.277587890625 1109.099975585938 1332.208984375 1109.114013671875 C 1332.14013671875 1109.128173828125 1332.072265625 1109.142333984375 1332.004638671875 1109.156494140625 C 1331.93798828125 1109.170776367188 1331.8701171875 1109.184936523438 1331.803466796875 1109.198974609375 C 1331.737060546875 1109.21337890625 1331.671630859375 1109.227661132813 1331.605712890625 1109.241943359375 C 1331.54052734375 1109.25634765625 1331.47509765625 1109.270874023438 1331.41064453125 1109.285278320313 C 1331.346435546875 1109.299560546875 1331.281982421875 1109.31396484375 1331.218994140625 1109.328491210938 C 1331.155517578125 1109.343017578125 1331.092529296875 1109.357666015625 1331.029052734375 1109.372192382813 C 1330.967041015625 1109.38671875 1330.9052734375 1109.4013671875 1330.84423828125 1109.416015625 C 1330.781982421875 1109.430786132813 1330.720947265625 1109.445556640625 1330.6611328125 1109.460083007813 C 1330.601318359375 1109.474731445313 1330.541259765625 1109.489624023438 1330.481689453125 1109.504272460938 C 1330.422119140625 1109.519165039063 1330.36328125 1109.533935546875 1330.305419921875 1109.548828125 C 1330.23779296875 1109.566162109375 1330.170166015625 1109.583374023438 1330.103515625 1109.600830078125 C 1330.05615234375 1109.61328125 1330.0087890625 1109.625854492188 1329.962158203125 1109.63818359375 C 1329.906005859375 1109.653198242188 1329.850830078125 1109.668212890625 1329.795166015625 1109.683349609375 C 1329.741455078125 1109.698364257813 1329.685791015625 1109.71337890625 1329.632568359375 1109.728515625 C 1329.4541015625 1109.7783203125 1329.28173828125 1109.82861328125 1329.11669921875 1109.879028320313 C 1329.031005859375 1109.904907226563 1328.947265625 1109.9306640625 1328.8662109375 1109.956665039063 C 1328.50244140625 1110.072143554688 1328.171630859375 1110.188720703125 1327.876220703125 1110.3056640625 C 1327.85107421875 1110.315307617188 1327.826416015625 1110.325073242188 1327.802734375 1110.334838867188 C 1327.73095703125 1110.36376953125 1327.66162109375 1110.392578125 1327.59521484375 1110.421264648438 C 1327.557861328125 1110.43701171875 1327.522705078125 1110.45263671875 1327.487548828125 1110.46826171875 C 1327.451416015625 1110.48388671875 1327.41796875 1110.49951171875 1327.384033203125 1110.51513671875 C 1327.35791015625 1110.527099609375 1327.33203125 1110.539184570313 1327.30712890625 1110.551025390625 L 1327.236083984375 1110.584838867188 C 1327.210205078125 1110.59765625 1327.185302734375 1110.6103515625 1327.160400390625 1110.623046875 C 1327.120849609375 1110.642944335938 1327.082763671875 1110.662841796875 1327.045166015625 1110.682861328125 C 1327.0205078125 1110.695678710938 1326.99658203125 1110.708374023438 1326.97412109375 1110.72119140625 C 1326.93798828125 1110.741088867188 1326.904296875 1110.760620117188 1326.87158203125 1110.7802734375 C 1326.85107421875 1110.79150390625 1326.831787109375 1110.802856445313 1326.81396484375 1110.814331054688 C 1326.79345703125 1110.826416015625 1326.773193359375 1110.838745117188 1326.75537109375 1110.850830078125 C 1326.733642578125 1110.864135742188 1326.71337890625 1110.87744140625 1326.693115234375 1110.890747070313 C 1326.651611328125 1110.917846679688 1326.61279296875 1110.944946289063 1326.57666015625 1110.972045898438 C 1326.5576171875 1110.985229492188 1326.540771484375 1110.998291015625 1326.52392578125 1111.011474609375 C 1326.5078125 1111.023315429688 1326.4931640625 1111.035034179688 1326.478759765625 1111.046875 C 1326.468505859375 1111.055297851563 1326.45849609375 1111.063720703125 1326.447998046875 1111.072143554688 C 1326.4345703125 1111.084228515625 1326.419677734375 1111.096313476563 1326.407470703125 1111.108276367188 C 1326.3916015625 1111.121337890625 1326.378173828125 1111.134643554688 1326.36474609375 1111.147827148438 C 1326.343994140625 1111.166748046875 1326.324951171875 1111.185913085938 1326.306884765625 1111.204711914063 C 1326.296630859375 1111.215942382813 1326.28662109375 1111.227172851563 1326.277587890625 1111.238525390625 C 1326.268798828125 1111.247314453125 1326.261962890625 1111.255981445313 1326.255126953125 1111.264526367188 C 1326.244873046875 1111.2763671875 1326.23583984375 1111.2880859375 1326.22705078125 1111.2998046875 C 1326.21435546875 1111.315551757813 1326.203125 1111.331665039063 1326.193115234375 1111.347534179688 C 1326.18603515625 1111.356201171875 1326.1806640625 1111.364990234375 1326.176025390625 1111.37353515625 C 1326.17041015625 1111.383056640625 1326.164794921875 1111.392578125 1326.1591796875 1111.40185546875 C 1326.131103515625 1111.451049804688 1326.110595703125 1111.5 1326.09814453125 1111.548706054688 C 1326.09375 1111.5615234375 1326.09130859375 1111.574340820313 1326.089111328125 1111.587036132813 C 1326.08349609375 1111.617553710938 1326.080078125 1111.647827148438 1326.080078125 1111.678100585938 C 1326.080078125 1113.324462890625 1334.7578125 1114.141479492188 1346.616943359375 1114.37548828125 L 1346.616943359375 1113.947631835938 C 1335.688232421875 1113.71533203125 1327.742919921875 1112.9462890625 1327.742919921875 1111.417602539063 C 1327.742919921875 1109.88916015625 1335.688232421875 1108.072631835938 1346.616943359375 1107.45263671875 L 1346.616943359375 1107.439819335938 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_u969pm =
    '<svg viewBox="47.4 6.7 21.4 7.0" ><path transform="translate(-1591.59, -1097.92)" d="M 1638.999877929688 1104.629638671875 C 1650.395141601563 1105.19775390625 1658.78515625 1107.072387695313 1658.78515625 1108.64306640625 C 1658.78515625 1110.2138671875 1650.396240234375 1110.982543945313 1638.999877929688 1111.191162109375 L 1638.999877929688 1111.61767578125 C 1651.322875976563 1111.407958984375 1660.447875976563 1110.591918945313 1660.447875976563 1108.903564453125 C 1660.447875976563 1108.873413085938 1660.44482421875 1108.843017578125 1660.43896484375 1108.812622070313 C 1660.436645507813 1108.799926757813 1660.434448242188 1108.787109375 1660.429809570313 1108.774169921875 C 1660.417358398438 1108.725463867188 1660.396728515625 1108.676513671875 1660.369140625 1108.627319335938 C 1660.363159179688 1108.618041992188 1660.357543945313 1108.6083984375 1660.351806640625 1108.598999023438 C 1660.34765625 1108.59033203125 1660.341796875 1108.581787109375 1660.334838867188 1108.572998046875 C 1660.324829101563 1108.557006835938 1660.313354492188 1108.541015625 1660.301025390625 1108.525268554688 C 1660.292114257813 1108.513671875 1660.283203125 1108.501831054688 1660.272827148438 1108.490112304688 C 1660.266479492188 1108.4814453125 1660.259033203125 1108.472778320313 1660.25048828125 1108.463989257813 C 1660.241333007813 1108.452758789063 1660.231201171875 1108.44140625 1660.220947265625 1108.43017578125 C 1660.203125 1108.411254882813 1660.183349609375 1108.392211914063 1660.163452148438 1108.373291015625 C 1660.149780273438 1108.360107421875 1660.136474609375 1108.346801757813 1660.12060546875 1108.333740234375 C 1660.108276367188 1108.32177734375 1660.093505859375 1108.309692382813 1660.079956054688 1108.297607421875 C 1660.069580078125 1108.289184570313 1660.059448242188 1108.28076171875 1660.049438476563 1108.272338867188 C 1660.03466796875 1108.260620117188 1660.02001953125 1108.248779296875 1660.004150390625 1108.237060546875 C 1659.987426757813 1108.223876953125 1659.970336914063 1108.210693359375 1659.951049804688 1108.197509765625 C 1659.903930664063 1108.162353515625 1659.853271484375 1108.127197265625 1659.79736328125 1108.092041015625 C 1659.775024414063 1108.077026367188 1659.751586914063 1108.062255859375 1659.726806640625 1108.047241210938 C 1659.72314453125 1108.044921875 1659.718505859375 1108.042236328125 1659.713989257813 1108.039794921875 C 1659.695922851563 1108.0283203125 1659.6767578125 1108.01708984375 1659.65771484375 1108.005859375 C 1659.6240234375 1107.986083984375 1659.590087890625 1107.966430664063 1659.553955078125 1107.946655273438 C 1659.5302734375 1107.933837890625 1659.507690429688 1107.921142578125 1659.482788085938 1107.908325195313 C 1659.4453125 1107.888427734375 1659.408203125 1107.86865234375 1659.36865234375 1107.848999023438 C 1659.3056640625 1107.817016601563 1659.239990234375 1107.785278320313 1659.171264648438 1107.753295898438 C 1659.153076171875 1107.744873046875 1659.135009765625 1107.736328125 1659.115844726563 1107.727783203125 C 1659.090942382813 1107.716430664063 1659.066040039063 1107.704833984375 1659.040405273438 1107.693725585938 C 1659.005004882813 1107.678100585938 1658.970336914063 1107.662353515625 1658.932983398438 1107.646728515625 C 1658.866333007813 1107.618041992188 1658.79736328125 1107.589233398438 1658.725341796875 1107.560424804688 C 1658.701538085938 1107.550537109375 1658.676635742188 1107.540771484375 1658.65185546875 1107.531127929688 C 1658.5546875 1107.492919921875 1658.454345703125 1107.454467773438 1658.349487304688 1107.416137695313 C 1658.306396484375 1107.400268554688 1658.262451171875 1107.384399414063 1658.21728515625 1107.368286132813 C 1657.983642578125 1107.285278320313 1657.731689453125 1107.202758789063 1657.464233398438 1107.120727539063 C 1657.424682617188 1107.1083984375 1657.383056640625 1107.095947265625 1657.342651367188 1107.083374023438 C 1657.290161132813 1107.067749023438 1657.2373046875 1107.052001953125 1657.183349609375 1107.036376953125 C 1657.063232421875 1107.0009765625 1656.939208984375 1106.965942382813 1656.8115234375 1106.930908203125 C 1656.770874023438 1106.919311523438 1656.729248046875 1106.907958984375 1656.686401367188 1106.896484375 C 1656.630004882813 1106.880981445313 1656.572509765625 1106.865600585938 1656.513916015625 1106.85009765625 C 1656.455932617188 1106.834716796875 1656.397583007813 1106.819213867188 1656.337524414063 1106.803833007813 C 1656.275512695313 1106.78759765625 1656.212158203125 1106.771606445313 1656.14697265625 1106.755249023438 C 1656.095947265625 1106.7421875 1656.044067382813 1106.729248046875 1655.992065429688 1106.71630859375 C 1655.77197265625 1106.661865234375 1655.543823242188 1106.607788085938 1655.309204101563 1106.554077148438 C 1655.24609375 1106.53955078125 1655.181640625 1106.525146484375 1655.117065429688 1106.5107421875 C 1655.058471679688 1106.497436523438 1654.998779296875 1106.484252929688 1654.937622070313 1106.470947265625 C 1654.857543945313 1106.453491210938 1654.776123046875 1106.435913085938 1654.693969726563 1106.418212890625 C 1654.637329101563 1106.40625 1654.580932617188 1106.39404296875 1654.523559570313 1106.381958007813 C 1654.45556640625 1106.367797851563 1654.387939453125 1106.353637695313 1654.319091796875 1106.339599609375 C 1654.250366210938 1106.325317382813 1654.181518554688 1106.311401367188 1654.111450195313 1106.29736328125 C 1654.042724609375 1106.283447265625 1653.972534179688 1106.269409179688 1653.901611328125 1106.255615234375 C 1653.830322265625 1106.241455078125 1653.757934570313 1106.227172851563 1653.684692382813 1106.213134765625 C 1653.614624023438 1106.19970703125 1653.54443359375 1106.186157226563 1653.473510742188 1106.172729492188 C 1653.255493164063 1106.131713867188 1653.034423828125 1106.090942382813 1652.808471679688 1106.050659179688 C 1652.69580078125 1106.030639648438 1652.582885742188 1106.0107421875 1652.468872070313 1105.990844726563 C 1652.468872070313 1105.990844726563 1652.467651367188 1105.990844726563 1652.467651367188 1105.99072265625 C 1652.352416992188 1105.970947265625 1652.237426757813 1105.951171875 1652.119995117188 1105.931640625 C 1651.49560546875 1105.827026367188 1650.843383789063 1105.726196289063 1650.164428710938 1105.629638671875 C 1650.090209960938 1105.619140625 1650.015625 1105.608520507813 1649.941162109375 1105.598022460938 C 1649.490844726563 1105.535278320313 1649.0302734375 1105.474487304688 1648.5595703125 1105.415649414063 C 1648.480712890625 1105.406005859375 1648.4013671875 1105.396118164063 1648.32275390625 1105.386474609375 C 1648.148681640625 1105.365234375 1647.973510742188 1105.34423828125 1647.79638671875 1105.323608398438 C 1647.6201171875 1105.302734375 1647.441772460938 1105.282348632813 1647.26220703125 1105.262329101563 C 1647.082763671875 1105.242309570313 1646.902221679688 1105.222534179688 1646.71923828125 1105.203002929688 L 1646.445068359375 1105.173950195313 C 1644.151123046875 1104.934448242188 1641.649291992188 1104.743896484375 1638.999877929688 1104.619873046875 L 1638.999877929688 1104.629638671875 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_e1y8hx =
    '<svg viewBox="32.3 9.0 14.7 2.7" ><path transform="translate(-1472.67, -1236.04)" d="M 1509.983520507813 1245.086547851563 L 1504.9580078125 1245.336547851563 L 1504.95263671875 1247.740356445313 L 1519.626953125 1247.740966796875 L 1519.633544921875 1245.337158203125 L 1514.890625 1245.000244140625 L 1509.983520507813 1245.086547851563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jdeuaq =
    '<svg viewBox="38.8 10.0 1.7 1.1" ><path transform="translate(-1524.02, -1296.75)" d="M 1563.297241210938 1306.708862304688 L 1562.834716796875 1307.63720703125 L 1563.67529296875 1307.847290039063 L 1564.544311523438 1307.646484375 L 1563.9833984375 1306.708862304688 L 1563.297241210938 1306.708862304688 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jc720k =
    '<svg viewBox="19.1 8.9 20.5 2.9" ><path transform="translate(-1368.72, -1232.1)" d="M 1408.232055664063 1242.843017578125 L 1408.232055664063 1243.800170898438 C 1400.507934570313 1243.815551757813 1399.630859375 1243.954345703125 1396.830078125 1243.799194335938 C 1396.510375976563 1243.781494140625 1389.15576171875 1243.349853515625 1387.9384765625 1242.256958007813 C 1387.283935546875 1241.6689453125 1388.737915039063 1241.187866210938 1389.390625 1240.999877929688 C 1391.878540039063 1241.235595703125 1397.24755859375 1241.683471679688 1404.646484375 1241.823120117188 C 1404.733520507813 1241.82470703125 1404.820434570313 1241.826293945313 1404.9072265625 1241.827758789063 L 1408.232055664063 1242.843017578125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4y8q9v =
    '<svg viewBox="39.5 9.0 20.4 2.7" ><path transform="translate(-1529.49, -1240.8)" d="M 1589.227661132813 1250.954345703125 C 1588.067016601563 1252.010009765625 1581.029418945313 1252.438232421875 1580.627563476563 1252.46142578125 C 1578.043579101563 1252.610595703125 1577.303100585938 1252.490600585938 1569.789916992188 1252.49658203125 C 1569.519165039063 1252.496704101563 1569.256103515625 1252.4970703125 1569 1252.497680664063 L 1569 1251.526489257813 L 1572.187744140625 1250.552856445313 C 1572.3525390625 1250.551513671875 1572.517578125 1250.549682617188 1572.68017578125 1250.5478515625 C 1580.016845703125 1250.465209960938 1585.469360351563 1250.06787109375 1588.16064453125 1249.83984375 C 1588.737548828125 1250.031127929688 1589.782836914063 1250.449096679688 1589.227661132813 1250.954345703125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_an63bc =
    '<svg viewBox="0.0 0.0 5.2 1.0" ><path transform="translate(-1455.94, -1342.72)" d="M 1460.300537109375 1343.356323242188 C 1459.871215820313 1343.395141601563 1459.287231445313 1343.428955078125 1459.005737304688 1343.414672851563 C 1458.8330078125 1343.409423828125 1458.512939453125 1343.361938476563 1458.208740234375 1343.28857421875 C 1457.583984375 1343.142944335938 1456.906005859375 1342.904907226563 1456.31982421875 1342.721069335938 L 1455.942016601563 1342.745483398438 C 1456.524780273438 1342.928100585938 1457.200073242188 1343.16650390625 1457.853149414063 1343.319458007813 C 1458.189453125 1343.395874023438 1458.490600585938 1343.453247070313 1458.88818359375 1343.4716796875 C 1459.442260742188 1343.492431640625 1460.047729492188 1343.446533203125 1460.517211914063 1343.406982421875 C 1460.896118164063 1343.373779296875 1461.17333984375 1343.341552734375 1461.17724609375 1343.340942382813 L 1460.914794921875 1343.295166015625 C 1460.914794921875 1343.295166015625 1460.654174804688 1343.325561523438 1460.300537109375 1343.356323242188 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kia21s =
    '<svg viewBox="0.0 0.0 1.0 1.0" ><path transform="translate(-1494.92, -1376.85)" d="M 1495.18212890625 1376.867431640625 C 1494.949584960938 1376.891479492188 1494.852172851563 1376.9287109375 1494.963500976563 1376.951049804688 C 1495.075561523438 1376.97314453125 1495.35400390625 1376.9716796875 1495.587890625 1376.94775390625 C 1495.81982421875 1376.923706054688 1495.917602539063 1376.886474609375 1495.805908203125 1376.8642578125 C 1495.694213867188 1376.842041015625 1495.414916992188 1376.843383789063 1495.18212890625 1376.867431640625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kuenwy =
    '<svg viewBox="0.0 0.0 3.5 1.0" ><path transform="translate(-1501.7, -1314.52)" d="M 1502.025268554688 1314.515747070313 L 1501.700073242188 1314.552612304688 C 1502.57958984375 1314.711059570313 1503.751342773438 1314.905883789063 1504.375 1315.051513671875 C 1504.69189453125 1315.123779296875 1504.843383789063 1315.18603515625 1504.798461914063 1315.21044921875 C 1504.7578125 1315.252563476563 1504.281860351563 1315.311645507813 1503.8427734375 1315.348388671875 C 1503.490356445313 1315.379272460938 1503.181884765625 1315.398193359375 1503.181518554688 1315.3984375 L 1503.348388671875 1315.452758789063 C 1503.353515625 1315.452514648438 1503.68017578125 1315.432006835938 1504.059936523438 1315.399047851563 C 1504.520629882813 1315.357421875 1505.084106445313 1315.30126953125 1505.206909179688 1315.221435546875 C 1505.2724609375 1315.162475585938 1505.053344726563 1315.09814453125 1504.7294921875 1315.020629882813 C 1504.07470703125 1314.867797851563 1502.897705078125 1314.673217773438 1502.025268554688 1314.515747070313 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rmik5f =
    '<svg viewBox="0.0 0.0 1.0 1.0" ><path transform="translate(-1512.87, -1365.98)" d="M 1513.202026367188 1365.99365234375 C 1512.94580078125 1366.012329101563 1512.809448242188 1366.047119140625 1512.896362304688 1366.071533203125 C 1512.983520507813 1366.095703125 1513.261108398438 1366.100341796875 1513.5166015625 1366.081787109375 C 1513.772583007813 1366.063110351563 1513.908447265625 1366.028198242188 1513.821899414063 1366.00390625 C 1513.735107421875 1365.979614257813 1513.456665039063 1365.97509765625 1513.202026367188 1365.99365234375 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qzpqqb =
    '<svg viewBox="0.0 0.0 6.4 1.0" ><path transform="translate(-1449.69, -1295.56)" d="M 1451.047729492188 1295.618530273438 C 1449.454345703125 1295.760375976563 1449.26806640625 1296.101318359375 1450.46337890625 1296.381591796875 L 1450.926391601563 1296.341186523438 L 1450.925537109375 1296.341186523438 C 1450.381469726563 1296.2138671875 1450.1650390625 1296.0751953125 1450.248413085938 1295.956298828125 C 1450.333251953125 1295.8369140625 1450.706298828125 1295.739013671875 1451.330200195313 1295.6845703125 C 1451.9541015625 1295.630126953125 1452.733764648438 1295.62744140625 1453.515991210938 1295.671142578125 C 1454.294921875 1295.714721679688 1455.061279296875 1295.805419921875 1455.605224609375 1295.9326171875 L 1456.068725585938 1295.892333984375 C 1454.8671875 1295.612670898438 1452.658081054688 1295.480712890625 1451.047729492188 1295.618530273438 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mf5ggd =
    '<svg viewBox="0.0 0.0 2.9 1.3" ><path transform="translate(-1439.11, -1223.75)" d="M 1439.285766601563 1224.004150390625 C 1439.090576171875 1224.1181640625 1439.030883789063 1224.252319335938 1439.234985351563 1224.377563476563 C 1439.316040039063 1224.427001953125 1439.436889648438 1224.475341796875 1439.578247070313 1224.52099609375 C 1440.146240234375 1224.704223632813 1441.572265625 1225.030151367188 1441.581665039063 1225.03173828125 L 1441.99609375 1224.98193359375 L 1441.994995117188 1224.98193359375 C 1441.99462890625 1224.981811523438 1441.864501953125 1224.9443359375 1441.584716796875 1224.888549804688 C 1441.304809570313 1224.832641601563 1440.316284179688 1224.576171875 1440.054077148438 1224.491088867188 C 1439.922485351563 1224.44873046875 1439.812744140625 1224.404541015625 1439.740356445313 1224.360473632813 C 1439.558715820313 1224.250366210938 1439.610229492188 1224.126220703125 1439.790283203125 1224.021850585938 C 1439.964233398438 1223.917724609375 1440.289916992188 1223.833129882813 1440.54443359375 1223.806396484375 L 1440.225708007813 1223.747924804688 C 1439.802978515625 1223.796264648438 1439.488037109375 1223.890014648438 1439.285766601563 1224.004150390625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_zgfxw8 =
    '<svg viewBox="13.2 1.3 15.6 2.2" ><path transform="translate(-1322.56, -766.73)" d="M 1349.07177734375 768.2511596679688 C 1346.356811523438 767.818359375 1342.619262695313 767.9918212890625 1339.315795898438 768.4143676757813 C 1336.01318359375 768.8368530273438 1334.395263671875 769.3482666015625 1337.110107421875 769.78125 C 1339.673828125 770.1898803710938 1345.180419921875 770.3818359375 1348.567626953125 770.04638671875 C 1345.537841796875 770.337158203125 1340.671264648438 770.1651611328125 1338.39794921875 769.802734375 C 1335.972900390625 769.4161376953125 1337.418090820313 768.9594116210938 1340.367919921875 768.5819702148438 C 1343.317749023438 768.204833984375 1346.655151367188 768.0498046875 1349.079833984375 768.4364013671875 C 1351.504272460938 768.8229370117188 1352.097778320313 769.6046752929688 1349.14794921875 769.9820556640625 C 1352.451049804688 769.5595092773438 1351.786865234375 768.68408203125 1349.07177734375 768.2511596679688 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_i7i9fa =
    '<svg viewBox="0.0 0.0 2.9 1.5" ><path transform="translate(-1646.18, -1256.65)" d="M 1648.662353515625 1256.921020507813 C 1648.3583984375 1256.795776367188 1647.940673828125 1256.695068359375 1647.43408203125 1256.646850585938 L 1647.11669921875 1256.716918945313 C 1647.419921875 1256.743408203125 1647.84326171875 1256.833740234375 1648.109375 1256.947998046875 C 1648.38232421875 1257.062255859375 1648.525390625 1257.200805664063 1648.397583007813 1257.326782226563 C 1648.346435546875 1257.376220703125 1648.229248046875 1257.437744140625 1648.071655273438 1257.503662109375 C 1647.440185546875 1257.768676757813 1646.17822265625 1258.098876953125 1646.1767578125 1258.099487304688 L 1646.690063476563 1258.139770507813 L 1646.6904296875 1258.1396484375 C 1646.693237304688 1258.138549804688 1647.965576171875 1257.806274414063 1648.625244140625 1257.530639648438 C 1648.78955078125 1257.461669921875 1648.916870117188 1257.396240234375 1648.97607421875 1257.338745117188 C 1649.1181640625 1257.195678710938 1648.96044921875 1257.046142578125 1648.662353515625 1256.921020507813 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wgzoqh =
    '<svg viewBox="13.4 1.3 15.6 2.2" ><path transform="translate(-1324.06, -766.73)" d="M 1338.7998046875 769.78125 C 1336.085205078125 769.3482666015625 1337.702880859375 768.8368530273438 1341.00537109375 768.4143676757813 C 1344.30908203125 767.9918212890625 1348.046508789063 767.818359375 1350.761596679688 768.2511596679688 C 1353.476196289063 768.68408203125 1354.140747070313 769.5595092773438 1350.837524414063 769.9820556640625 C 1347.53466796875 770.4046020507813 1341.515014648438 770.2141723632813 1338.7998046875 769.78125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rbkr4v =
    '<svg viewBox="0.0 0.0 4.2 1.0" ><path transform="translate(-1619.23, -1343.44)" d="M 1622.01025390625 1343.455688476563 C 1620.90966796875 1343.402099609375 1619.71435546875 1343.486083984375 1619.3388671875 1343.643188476563 C 1618.96435546875 1343.800170898438 1619.551513671875 1343.970947265625 1620.651977539063 1344.024536132813 C 1621.751220703125 1344.078125 1622.947265625 1343.994140625 1623.322143554688 1343.837158203125 C 1623.697509765625 1343.680053710938 1623.109130859375 1343.509155273438 1622.01025390625 1343.455688476563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8nbt2 =
    '<svg viewBox="1.1 0.2 2.0 1.0" ><path transform="translate(-1627.8, -1352.95)" d="M 1630.229248046875 1353.11669921875 C 1629.699462890625 1353.0908203125 1629.12255859375 1353.131225585938 1628.9423828125 1353.206909179688 C 1628.76171875 1353.282348632813 1629.04541015625 1353.364868164063 1629.5751953125 1353.390625 C 1630.103759765625 1353.41650390625 1630.680419921875 1353.375854492188 1630.86083984375 1353.30029296875 C 1631.04150390625 1353.224609375 1630.7578125 1353.142456054688 1630.229248046875 1353.11669921875 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_eka0h6 =
    '<svg viewBox="0.0 0.0 3.9 1.0" ><path transform="translate(-1535.47, -1274.23)" d="M 1535.4697265625 1274.515991210938 L 1537.230102539063 1274.86328125 L 1539.369140625 1274.5625 L 1535.792358398438 1274.229370117188 L 1535.4697265625 1274.515991210938 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_chid4v =
    '<svg viewBox="3.8 0.0 3.7 1.0" ><path transform="translate(-1565.11, -1274.25)" d="M 1568.87646484375 1274.585083007813 L 1571.014892578125 1274.886108398438 L 1572.61572265625 1274.56201171875 L 1572.454956054688 1274.25244140625 L 1568.87646484375 1274.585083007813 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_srswfq =
    '<svg viewBox="54.4 1.5 15.6 2.2" ><path transform="translate(-1646.32, -780.03)" d="M 1714.96630859375 783.29833984375 C 1717.681274414063 782.8654174804688 1716.063232421875 782.35400390625 1712.760864257813 781.9315185546875 C 1709.457397460938 781.5089111328125 1705.719848632813 781.33544921875 1703.0048828125 781.768310546875 C 1700.290161132813 782.201171875 1699.625366210938 783.07666015625 1702.9287109375 783.4991455078125 C 1706.231811523438 783.9217529296875 1712.2509765625 783.7312622070313 1714.96630859375 783.29833984375 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wvo7cp =
    '<svg viewBox="35.6 9.7 4.1 1.1" ><path transform="translate(-1498.4, -1282.34)" d="M 1534.591064453125 1292.064453125 L 1537.915649414063 1293.079833984375 L 1538.099731445313 1293.136108398438 L 1537.915649414063 1293.107299804688 L 1534.688110351563 1292.601196289063 L 1534.907104492188 1292.504150390625 L 1533.959838867188 1292.411376953125 L 1534.096313476563 1292.105102539063 L 1534.330200195313 1292.059814453125 L 1534.591064453125 1292.064453125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nqgor1 =
    '<svg viewBox="39.3 9.7 4.1 1.0" ><path transform="translate(-1527.68, -1282.04)" d="M 1570.152099609375 1292.166870117188 L 1570.369995117188 1292.263916015625 L 1567.234008789063 1292.756103515625 L 1567.18994140625 1292.762817382813 L 1567.166259765625 1292.766357421875 L 1566.959716796875 1292.798950195313 L 1567.100708007813 1292.756103515625 L 1567.167358398438 1292.735717773438 L 1567.167358398438 1292.735595703125 L 1567.18994140625 1292.728637695313 L 1570.3779296875 1291.755004882813 C 1570.542724609375 1291.753540039063 1570.707763671875 1291.751831054688 1570.869995117188 1291.749877929688 L 1570.963012695313 1291.767944335938 L 1571.099609375 1292.07421875 L 1570.152099609375 1292.166870117188 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_s5qzua =
    '<svg viewBox="8.2 1.7 63.0 8.0" ><path transform="translate(-1283.35, -795.65)" d="M 1354.533081054688 802.3280639648438 C 1354.533081054688 804.5386352539063 1340.432250976563 805.4015502929688 1323.037841796875 805.4015502929688 C 1305.643310546875 805.4015502929688 1291.542114257813 804.5386352539063 1291.542114257813 802.3280639648438 C 1291.542114257813 800.1173706054688 1305.643310546875 797.3961181640625 1323.037841796875 797.3961181640625 C 1340.432250976563 797.3961181640625 1354.533081054688 800.1173706054688 1354.533081054688 802.3280639648438 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_93ehgi =
    '<svg viewBox="14.0 4.3 21.1 3.0" ><path transform="translate(-1328.68, -950.57)" d="M 1342.848022460938 956.591064453125 C 1342.362426757813 956.8140258789063 1342.747192382813 957.2153930664063 1343.533569335938 957.41845703125 C 1344.303100585938 957.6171875 1345.7060546875 957.72265625 1347.207153320313 957.7740478515625 C 1353.75439453125 957.99853515625 1362.846801757813 957.3765258789063 1363.67578125 956.351806640625 C 1364.017456054688 955.9293212890625 1363.367797851563 955.3300170898438 1360.856689453125 955.0516967773438 C 1355.58056640625 954.4669189453125 1348.584838867188 955.297607421875 1345.4072265625 955.8875122070313 C 1344.31591796875 956.090087890625 1343.380859375 956.3468627929688 1342.848022460938 956.591064453125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ziets8 =
    '<svg viewBox="22.1 5.1 7.1 1.0" ><path transform="translate(-1392.35, -999.19)" d="M 1414.662841796875 1005.174011230469 C 1414.900634765625 1005.243225097656 1415.400268554688 1005.277282714844 1415.909545898438 1005.294860839844 C 1416.73095703125 1005.322937011719 1417.670166015625 1005.311950683594 1418.542602539063 1005.269226074219 C 1420.0302734375 1005.196350097656 1421.186889648438 1005.044982910156 1421.446411132813 1004.827331542969 C 1421.685302734375 1004.627746582031 1421.08544921875 1004.437438964844 1420.2392578125 1004.350769042969 C 1417.049438476563 1004.023986816406 1413.4267578125 1004.814514160156 1414.662841796875 1005.174011230469 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_oqalb3 =
    '<svg viewBox="44.6 4.3 21.1 3.0" ><path transform="translate(-1569.76, -950.57)" d="M 1635.308837890625 956.591064453125 C 1635.794921875 956.8140258789063 1635.409790039063 957.2153930664063 1634.623413085938 957.41845703125 C 1633.853881835938 957.6171875 1632.451293945313 957.72265625 1630.950439453125 957.7740478515625 C 1624.402954101563 957.99853515625 1615.310546875 957.3765258789063 1614.481079101563 956.351806640625 C 1614.1396484375 955.9293212890625 1614.78955078125 955.3300170898438 1617.300537109375 955.0516967773438 C 1622.57666015625 954.4669189453125 1629.572509765625 955.297607421875 1632.749877929688 955.8875122070313 C 1633.841064453125 956.090087890625 1634.776611328125 956.3468627929688 1635.308837890625 956.591064453125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_520nqs =
    '<svg viewBox="50.6 5.1 7.1 1.0" ><path transform="translate(-1616.43, -999.19)" d="M 1673.841186523438 1005.174011230469 C 1673.603393554688 1005.243225097656 1673.103759765625 1005.277282714844 1672.594360351563 1005.294860839844 C 1671.773315429688 1005.322937011719 1670.834106445313 1005.311950683594 1669.9619140625 1005.269226074219 C 1668.473999023438 1005.196350097656 1667.317138671875 1005.044982910156 1667.057495117188 1004.827331542969 C 1666.81884765625 1004.627746582031 1667.418579101563 1004.437438964844 1668.264404296875 1004.350769042969 C 1671.454345703125 1004.023986816406 1675.077026367188 1004.814514160156 1673.841186523438 1005.174011230469 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ftk4ry =
    '<svg viewBox="8.2 3.9 63.0 5.8" ><path transform="translate(-1283.35, -929.98)" d="M 1348.273803710938 933.9279174804688 C 1350.26611328125 934.5910034179688 1351.390380859375 935.294189453125 1351.390380859375 935.9519653320313 C 1351.390380859375 938.1624755859375 1338.696533203125 939.025390625 1323.037841796875 939.025390625 C 1307.379150390625 939.025390625 1294.684814453125 938.1624755859375 1294.684814453125 935.9519653320313 C 1294.684814453125 935.294189453125 1295.809692382813 934.5910034179688 1297.801147460938 933.9279174804688 C 1293.870361328125 934.7778930664063 1291.542114257813 935.7604370117188 1291.542114257813 936.65869140625 C 1291.542114257813 938.8693237304688 1305.643310546875 939.7322387695313 1323.037841796875 939.7322387695313 C 1340.432250976563 939.7322387695313 1354.533081054688 938.8693237304688 1354.533081054688 936.65869140625 C 1354.533081054688 935.7604370117188 1352.204956054688 934.7778930664063 1348.273803710938 933.9279174804688 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yy36qc =
    '<svg viewBox="0.0 0.0 4.6 1.0" ><path transform="translate(-1436.2, -1006.17)" d="M 1440.834350585938 1006.599853515625 C 1440.834350585938 1006.836181640625 1439.797729492188 1007.027709960938 1438.51953125 1007.027709960938 C 1437.240356445313 1007.027709960938 1436.204223632813 1006.836181640625 1436.204223632813 1006.599853515625 C 1436.204223632813 1006.363525390625 1437.240356445313 1006.171875 1438.51953125 1006.171875 C 1439.797729492188 1006.171875 1440.834350585938 1006.363525390625 1440.834350585938 1006.599853515625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tn0uoe =
    '<svg viewBox="0.6 0.1 1.7 1.0" ><path transform="translate(-1440.86, -1015.17)" d="M 1443.17236328125 1015.474365234375 C 1443.17236328125 1015.562255859375 1442.786254882813 1015.633544921875 1442.310546875 1015.633544921875 C 1441.834350585938 1015.633544921875 1441.449096679688 1015.562255859375 1441.449096679688 1015.474365234375 C 1441.449096679688 1015.386352539063 1441.834350585938 1015.31494140625 1442.310546875 1015.31494140625 C 1442.786254882813 1015.31494140625 1443.17236328125 1015.386352539063 1443.17236328125 1015.474365234375 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_r98va4 =
    '<svg viewBox="0.0 0.0 4.6 1.0" ><path transform="translate(-1666.95, -1006.17)" d="M 1671.583129882813 1006.599853515625 C 1671.583129882813 1006.836181640625 1670.546997070313 1007.027709960938 1669.26806640625 1007.027709960938 C 1667.989135742188 1007.027709960938 1666.953247070313 1006.836181640625 1666.953247070313 1006.599853515625 C 1666.953247070313 1006.363525390625 1667.989135742188 1006.171875 1669.26806640625 1006.171875 C 1670.546997070313 1006.171875 1671.583129882813 1006.363525390625 1671.583129882813 1006.599853515625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8xw8r3 =
    '<svg viewBox="0.6 0.1 1.7 1.0" ><path transform="translate(-1671.6, -1015.17)" d="M 1673.918090820313 1015.474365234375 C 1673.918090820313 1015.562255859375 1673.531982421875 1015.633544921875 1673.056762695313 1015.633544921875 C 1672.580200195313 1015.633544921875 1672.194702148438 1015.562255859375 1672.194702148438 1015.474365234375 C 1672.194702148438 1015.386352539063 1672.580200195313 1015.31494140625 1673.056762695313 1015.31494140625 C 1673.531982421875 1015.31494140625 1673.918090820313 1015.386352539063 1673.918090820313 1015.474365234375 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_m4f7uu =
    '<svg viewBox="8.2 4.7 63.0 5.0" ><path transform="translate(-1283.35, -975.12)" d="M 1351.26708984375 979.8010864257813 C 1352.726684570313 980.3516845703125 1353.533325195313 980.9183959960938 1353.533325195313 981.4551391601563 C 1353.533325195313 983.665771484375 1339.880249023438 984.5286865234375 1323.037841796875 984.5286865234375 C 1306.195190429688 984.5286865234375 1292.541748046875 983.665771484375 1292.541748046875 981.4551391601563 C 1292.541748046875 980.9183959960938 1293.348388671875 980.3517456054688 1294.808227539063 979.8011474609375 C 1292.718627929688 980.446533203125 1291.542114257813 981.1270141601563 1291.542114257813 981.7650756835938 C 1291.542114257813 983.9755859375 1305.643310546875 984.838623046875 1323.037841796875 984.838623046875 C 1340.432250976563 984.838623046875 1354.533081054688 983.9755859375 1354.533081054688 981.7650756835938 C 1354.533081054688 981.1270141601563 1353.356567382813 980.446533203125 1351.26708984375 979.8010864257813 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_m1b0jo =
    '<svg viewBox="19.8 6.2 7.4 1.0" ><path transform="translate(-1374.61, -1064.83)" d="M 1401.84033203125 1071.15869140625 C 1401.84033203125 1071.2568359375 1400.177001953125 1071.33642578125 1398.125244140625 1071.33642578125 C 1396.073974609375 1071.33642578125 1394.410888671875 1071.2568359375 1394.410888671875 1071.15869140625 C 1394.410888671875 1071.060424804688 1396.073974609375 1070.98095703125 1398.125244140625 1070.98095703125 C 1400.177001953125 1070.98095703125 1401.84033203125 1071.060424804688 1401.84033203125 1071.15869140625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jy26o9 =
    '<svg viewBox="0.0 0.0 10.5 1.1" ><path transform="translate(-1523.91, -1094.11)" d="M 1523.908935546875 1094.515502929688 C 1523.908935546875 1094.224487304688 1526.2646484375 1094.110961914063 1529.172241210938 1094.110961914063 C 1532.078735351563 1094.110961914063 1534.436645507813 1094.224487304688 1534.436645507813 1094.515502929688 C 1534.436645507813 1094.806640625 1532.078735351563 1095.1650390625 1529.172241210938 1095.1650390625 C 1526.2646484375 1095.1650390625 1523.908935546875 1094.806640625 1523.908935546875 1094.515502929688 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_12txvc =
    '<svg viewBox="0.0 0.2 10.5 1.0" ><path transform="translate(-1523.91, -1106.57)" d="M 1533.935546875 1106.778076171875 C 1533.959106445313 1106.7978515625 1533.974365234375 1106.818359375 1533.974365234375 1106.840209960938 C 1533.974365234375 1107.13134765625 1531.824584960938 1107.489624023438 1529.172241210938 1107.489624023438 C 1526.520385742188 1107.489624023438 1524.36962890625 1107.13134765625 1524.36962890625 1106.840209960938 C 1524.36962890625 1106.818359375 1524.385375976563 1106.7978515625 1524.409057617188 1106.778076171875 C 1524.091186523438 1106.832641601563 1523.908935546875 1106.898559570313 1523.908935546875 1106.978515625 C 1523.908935546875 1107.269653320313 1526.2646484375 1107.628051757813 1529.172241210938 1107.628051757813 C 1532.078735351563 1107.628051757813 1534.436645507813 1107.269653320313 1534.436645507813 1106.978515625 C 1534.436645507813 1106.898559570313 1534.25341796875 1106.832641601563 1533.935546875 1106.778076171875 Z" fill="#000000" fill-opacity="0.06" stroke="none" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1x9nmr =
    '<svg viewBox="2.8 0.1 4.9 1.0" ><path transform="translate(-1546.0, -1098.61)" d="M 1553.712890625 1098.776733398438 C 1553.712890625 1098.82568359375 1552.6142578125 1098.865478515625 1551.259887695313 1098.865478515625 C 1549.904663085938 1098.865478515625 1548.806884765625 1098.82568359375 1548.806884765625 1098.776733398438 C 1548.806884765625 1098.7275390625 1549.904663085938 1098.687866210938 1551.259887695313 1098.687866210938 C 1552.6142578125 1098.687866210938 1553.712890625 1098.7275390625 1553.712890625 1098.776733398438 Z" fill="#000000" fill-opacity="0.05" stroke="none" stroke-width="1" stroke-opacity="0.05" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_571p0r =
    '<svg viewBox="52.5 6.2 7.4 1.0" ><path transform="translate(-1631.58, -1064.83)" d="M 1691.51025390625 1071.15869140625 C 1691.51025390625 1071.2568359375 1689.84765625 1071.33642578125 1687.796142578125 1071.33642578125 C 1685.744995117188 1071.33642578125 1684.081909179688 1071.2568359375 1684.081909179688 1071.15869140625 C 1684.081909179688 1071.060424804688 1685.744995117188 1070.98095703125 1687.796142578125 1070.98095703125 C 1689.84765625 1070.98095703125 1691.51025390625 1071.060424804688 1691.51025390625 1071.15869140625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_xwo2l7 =
    '<svg viewBox="8.5 11.3 29.2 3.7" ><path transform="translate(-1286.06, -1379.5)" d="M 1323.742065429688 1393.095336914063 C 1323.742065429688 1394.118408203125 1317.216186523438 1394.517700195313 1309.166381835938 1394.517700195313 C 1301.116455078125 1394.517700195313 1294.5908203125 1394.118408203125 1294.5908203125 1393.095336914063 C 1294.5908203125 1392.072265625 1301.116455078125 1390.81298828125 1309.166381835938 1390.81298828125 C 1317.216186523438 1390.81298828125 1323.742065429688 1392.072265625 1323.742065429688 1393.095336914063 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8n9j4c =
    '<svg viewBox="0.0 0.7 21.1 2.3" ><path transform="translate(-1330.3, -1456.9)" d="M 1351.3857421875 1458.996826171875 C 1351.3857421875 1459.621459960938 1346.66552734375 1459.865234375 1340.841552734375 1459.865234375 C 1335.017822265625 1459.865234375 1330.296875 1459.621459960938 1330.296875 1458.996826171875 C 1330.296875 1458.372192382813 1335.017822265625 1457.603149414063 1340.841552734375 1457.603149414063 C 1346.66552734375 1457.603149414063 1351.3857421875 1458.372192382813 1351.3857421875 1458.996826171875 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_f5cce5 =
    '<svg viewBox="0.0 1.5 21.1 1.4" ><path transform="translate(-1330.3, -1508.59)" d="M 1350.3232421875 1510.131103515625 C 1350.4052734375 1510.195190429688 1350.449951171875 1510.258911132813 1350.449951171875 1510.3212890625 C 1350.449951171875 1510.946044921875 1346.14794921875 1511.189819335938 1340.841552734375 1511.189819335938 C 1335.534423828125 1511.189819335938 1331.23291015625 1510.946044921875 1331.23291015625 1510.3212890625 C 1331.23291015625 1510.258911132813 1331.27734375 1510.195190429688 1331.35986328125 1510.131103515625 C 1330.6796875 1510.310913085938 1330.296875 1510.500244140625 1330.296875 1510.677734375 C 1330.296875 1511.302368164063 1335.017822265625 1511.54638671875 1340.841552734375 1511.54638671875 C 1346.66552734375 1511.54638671875 1351.3857421875 1511.302368164063 1351.3857421875 1510.677734375 C 1351.3857421875 1510.500244140625 1351.003662109375 1510.310913085938 1350.3232421875 1510.131103515625 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8sx03x =
    '<svg viewBox="0.0 0.0 4.5 1.0" ><path transform="translate(-1338.64, -1431.74)" d="M 1338.661865234375 1432.221313476563 C 1338.417358398438 1432.474365234375 1340.587768554688 1432.388061523438 1341.46826171875 1432.289184570313 C 1342.192993164063 1432.207763671875 1343.473876953125 1432.0283203125 1343.084838867188 1431.874877929688 C 1342.109008789063 1431.489990234375 1338.8544921875 1432.02197265625 1338.661865234375 1432.221313476563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_33h4zn =
    '<svg viewBox="0.0 0.1 4.5 1.0" ><path transform="translate(-1338.64, -1439.72)" d="M 1343.068725585938 1439.853149414063 C 1342.804931640625 1439.967651367188 1341.993041992188 1440.077758789063 1341.46826171875 1440.136596679688 C 1340.732788085938 1440.21923828125 1339.102783203125 1440.292358398438 1338.72607421875 1440.1669921875 C 1338.695556640625 1440.180541992188 1338.672973632813 1440.193359375 1338.661865234375 1440.204956054688 C 1338.417358398438 1440.4580078125 1340.587768554688 1440.371704101563 1341.46826171875 1440.272705078125 C 1342.192993164063 1440.191284179688 1343.473876953125 1440.011962890625 1343.084838867188 1439.858642578125 C 1343.07958984375 1439.856689453125 1343.073974609375 1439.85498046875 1343.068725585938 1439.853149414063 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6vcqak =
    '<svg viewBox="0.0 0.1 4.5 1.0" ><path transform="translate(-1338.68, -1439.84)" d="M 1343.124755859375 1439.976806640625 C 1343.121704101563 1439.9755859375 1343.117309570313 1439.974365234375 1343.11376953125 1439.973266601563 C 1343.09765625 1440.110107421875 1342.055053710938 1440.254028320313 1341.427612304688 1440.324584960938 C 1340.693969726563 1440.406982421875 1339.0693359375 1440.479858398438 1338.688110351563 1440.355712890625 C 1338.662231445313 1440.5673828125 1340.6689453125 1440.485229492188 1341.50830078125 1440.390991210938 C 1342.23291015625 1440.309692382813 1343.513671875 1440.130249023438 1343.124755859375 1439.976806640625 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_i99f5n =
    '<svg viewBox="0.0 1.6 21.1 1.3" ><path transform="translate(-1330.3, -1514.41)" d="M 1350.651611328125 1516.055053710938 C 1350.796142578125 1516.13525390625 1350.87451171875 1516.214965820313 1350.87451171875 1516.29248046875 C 1350.87451171875 1516.886840820313 1346.38232421875 1517.118774414063 1340.841552734375 1517.118774414063 C 1335.2998046875 1517.118774414063 1330.808837890625 1516.886840820313 1330.808837890625 1516.29248046875 C 1330.808837890625 1516.214965820313 1330.886474609375 1516.13525390625 1331.031494140625 1516.055053710938 C 1330.559326171875 1516.20556640625 1330.296875 1516.35986328125 1330.296875 1516.506225585938 C 1330.296875 1517.130859375 1335.017822265625 1517.374755859375 1340.841552734375 1517.374755859375 C 1346.66552734375 1517.374755859375 1351.3857421875 1517.130859375 1351.3857421875 1516.506225585938 C 1351.3857421875 1516.35986328125 1351.12353515625 1516.20556640625 1350.651611328125 1516.055053710938 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_l9fsn =
    '<svg viewBox="0.0 0.0 4.5 1.0" ><path transform="translate(-1470.75, -1431.74)" d="M 1475.248413085938 1432.221313476563 C 1475.492553710938 1432.474365234375 1473.321655273438 1432.388061523438 1472.441772460938 1432.289184570313 C 1471.716552734375 1432.207763671875 1470.435546875 1432.0283203125 1470.8251953125 1431.874877929688 C 1471.800537109375 1431.489990234375 1475.055541992188 1432.02197265625 1475.248413085938 1432.221313476563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_pmmlto =
    '<svg viewBox="0.0 0.1 4.5 1.0" ><path transform="translate(-1470.75, -1439.72)" d="M 1470.841674804688 1439.853149414063 C 1471.1044921875 1439.967651367188 1471.9169921875 1440.077758789063 1472.441772460938 1440.136596679688 C 1473.1767578125 1440.21923828125 1474.806762695313 1440.292358398438 1475.184326171875 1440.1669921875 C 1475.21435546875 1440.180541992188 1475.237182617188 1440.193359375 1475.248413085938 1440.204956054688 C 1475.492553710938 1440.4580078125 1473.321655273438 1440.371704101563 1472.441772460938 1440.272705078125 C 1471.716552734375 1440.191284179688 1470.435546875 1440.011962890625 1470.8251953125 1439.858642578125 C 1470.830322265625 1439.856689453125 1470.836181640625 1439.85498046875 1470.841674804688 1439.853149414063 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_zewhbh =
    '<svg viewBox="0.0 0.1 4.5 1.0" ><path transform="translate(-1470.75, -1439.84)" d="M 1470.8251953125 1439.976806640625 C 1470.82861328125 1439.9755859375 1470.832275390625 1439.974365234375 1470.83544921875 1439.973266601563 C 1470.852172851563 1440.110107421875 1471.894409179688 1440.254028320313 1472.5224609375 1440.324584960938 C 1473.255615234375 1440.406982421875 1474.880493164063 1440.479858398438 1475.262084960938 1440.355712890625 C 1475.287475585938 1440.5673828125 1473.280517578125 1440.485229492188 1472.441772460938 1440.390991210938 C 1471.716552734375 1440.309692382813 1470.435546875 1440.130249023438 1470.8251953125 1439.976806640625 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_91ggfn =
    '<svg viewBox="0.0 0.0 5.6 1.0" ><path transform="translate(-1399.1, -1414.28)" d="M 1404.131713867188 1414.629028320313 C 1405.028198242188 1414.542114257813 1404.873779296875 1414.413696289063 1404.121826171875 1414.337524414063 C 1403.505859375 1414.275024414063 1401.567993164063 1414.255249023438 1400.366821289063 1414.31884765625 C 1399.370483398438 1414.37158203125 1398.725341796875 1414.463500976563 1399.350830078125 1414.587036132813 C 1400.299194335938 1414.774658203125 1402.925170898438 1414.745971679688 1404.131713867188 1414.629028320313 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jz575h =
    '<svg viewBox="0.0 0.1 5.6 1.0" ><path transform="translate(-1399.11, -1421.27)" d="M 1404.519775390625 1421.384033203125 C 1404.456909179688 1421.423095703125 1404.281616210938 1421.461303710938 1403.970336914063 1421.493896484375 C 1402.84521484375 1421.611694335938 1400.404663085938 1421.642578125 1399.531982421875 1421.455932617188 C 1399.43896484375 1421.43603515625 1399.37939453125 1421.417114257813 1399.344360351563 1421.39892578125 C 1399.051025390625 1421.447265625 1398.99853515625 1421.506958007813 1399.352294921875 1421.576904296875 C 1400.300415039063 1421.764404296875 1402.926635742188 1421.735717773438 1404.13330078125 1421.618896484375 C 1404.833374023438 1421.550903320313 1404.886108398438 1421.457885742188 1404.519775390625 1421.384033203125 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4dla9p =
    '<svg viewBox="0.0 0.2 5.6 1.0" ><path transform="translate(-1399.11, -1424.82)" d="M 1404.142456054688 1425.099609375 C 1402.935668945313 1425.216552734375 1400.309692382813 1425.2451171875 1399.361083984375 1425.057861328125 C 1399.258422851563 1425.037353515625 1399.193237304688 1425.018188476563 1399.155029296875 1424.99951171875 C 1399.06884765625 1425.037475585938 1399.118896484375 1425.08056640625 1399.361083984375 1425.12841796875 C 1400.309692382813 1425.316040039063 1402.935668945313 1425.287231445313 1404.142456054688 1425.170532226563 C 1404.667724609375 1425.11962890625 1404.82421875 1425.054565429688 1404.718994140625 1424.994018554688 C 1404.647583007813 1425.031616210938 1404.465209960938 1425.068237304688 1404.142456054688 1425.099609375 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_67jlkc =
    '<svg viewBox="8.5 12.5 29.2 2.5" ><path transform="translate(-1286.06, -1452.87)" d="M 1321.622436523438 1465.3798828125 C 1322.27880859375 1465.636596679688 1322.64208984375 1465.901245117188 1322.64208984375 1466.151733398438 C 1322.64208984375 1467.1748046875 1316.6083984375 1467.573974609375 1309.166381835938 1467.573974609375 C 1301.723999023438 1467.573974609375 1295.691040039063 1467.1748046875 1295.691040039063 1466.151733398438 C 1295.691040039063 1465.901245117188 1296.054809570313 1465.636596679688 1296.709350585938 1465.3798828125 C 1295.36572265625 1465.727172851563 1294.5908203125 1466.107666015625 1294.5908203125 1466.4599609375 C 1294.5908203125 1467.483032226563 1301.116455078125 1467.882446289063 1309.166381835938 1467.882446289063 C 1317.216186523438 1467.882446289063 1323.742065429688 1467.483032226563 1323.742065429688 1466.4599609375 C 1323.742065429688 1466.107666015625 1322.967041015625 1465.727172851563 1321.622436523438 1465.3798828125 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mz4mev =
    '<svg viewBox="40.1 11.3 29.2 3.7" ><path transform="translate(-1534.49, -1379.5)" d="M 1603.785278320313 1393.095336914063 C 1603.785278320313 1394.118408203125 1597.259643554688 1394.517700195313 1589.209838867188 1394.517700195313 C 1581.16015625 1394.517700195313 1574.634155273438 1394.118408203125 1574.634155273438 1393.095336914063 C 1574.634155273438 1392.072265625 1581.16015625 1390.81298828125 1589.209838867188 1390.81298828125 C 1597.259643554688 1390.81298828125 1603.785278320313 1392.072265625 1603.785278320313 1393.095336914063 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rveex3 =
    '<svg viewBox="0.0 0.7 21.1 2.3" ><path transform="translate(-1610.34, -1456.9)" d="M 1631.431762695313 1458.996826171875 C 1631.431762695313 1459.621459960938 1626.711059570313 1459.865234375 1620.8876953125 1459.865234375 C 1615.063354492188 1459.865234375 1610.343139648438 1459.621459960938 1610.343139648438 1458.996826171875 C 1610.343139648438 1458.372192382813 1615.063354492188 1457.603149414063 1620.8876953125 1457.603149414063 C 1626.711059570313 1457.603149414063 1631.431762695313 1458.372192382813 1631.431762695313 1458.996826171875 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_33bbik =
    '<svg viewBox="0.0 1.5 21.1 1.4" ><path transform="translate(-1610.34, -1508.59)" d="M 1630.368774414063 1510.131103515625 C 1630.451171875 1510.195190429688 1630.495483398438 1510.258911132813 1630.495483398438 1510.3212890625 C 1630.495483398438 1510.946044921875 1626.194091796875 1511.189819335938 1620.8876953125 1511.189819335938 C 1615.5810546875 1511.189819335938 1611.278686523438 1510.946044921875 1611.278686523438 1510.3212890625 C 1611.278686523438 1510.258911132813 1611.323486328125 1510.195190429688 1611.405639648438 1510.131103515625 C 1610.7255859375 1510.310913085938 1610.343139648438 1510.500244140625 1610.343139648438 1510.677734375 C 1610.343139648438 1511.302368164063 1615.063354492188 1511.54638671875 1620.8876953125 1511.54638671875 C 1626.711059570313 1511.54638671875 1631.431762695313 1511.302368164063 1631.431762695313 1510.677734375 C 1631.431762695313 1510.500244140625 1631.048950195313 1510.310913085938 1630.368774414063 1510.131103515625 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_t119t =
    '<svg viewBox="0.0 0.0 4.5 1.0" ><path transform="translate(-1618.69, -1431.74)" d="M 1618.704711914063 1432.221313476563 C 1618.460815429688 1432.474365234375 1620.631103515625 1432.388061523438 1621.511108398438 1432.289184570313 C 1622.236694335938 1432.207763671875 1623.517211914063 1432.0283203125 1623.127563476563 1431.874877929688 C 1622.152587890625 1431.489990234375 1618.897216796875 1432.02197265625 1618.704711914063 1432.221313476563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5uenkv =
    '<svg viewBox="0.0 0.1 4.5 1.0" ><path transform="translate(-1618.69, -1439.72)" d="M 1623.111694335938 1439.853149414063 C 1622.848266601563 1439.967651367188 1622.036010742188 1440.077758789063 1621.511108398438 1440.136596679688 C 1620.776733398438 1440.21923828125 1619.14599609375 1440.292358398438 1618.76904296875 1440.1669921875 C 1618.738403320313 1440.180541992188 1618.715698242188 1440.193359375 1618.704711914063 1440.204956054688 C 1618.460815429688 1440.4580078125 1620.631103515625 1440.371704101563 1621.511108398438 1440.272705078125 C 1622.236694335938 1440.191284179688 1623.517211914063 1440.011962890625 1623.127563476563 1439.858642578125 C 1623.122680664063 1439.856689453125 1623.116455078125 1439.85498046875 1623.111694335938 1439.853149414063 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ggt2s =
    '<svg viewBox="0.0 0.1 4.5 1.0" ><path transform="translate(-1618.73, -1439.84)" d="M 1623.167602539063 1439.976806640625 C 1623.164306640625 1439.9755859375 1623.161010742188 1439.974365234375 1623.157104492188 1439.973266601563 C 1623.140991210938 1440.110107421875 1622.0986328125 1440.254028320313 1621.470458984375 1440.324584960938 C 1620.737182617188 1440.406982421875 1619.112182617188 1440.479858398438 1618.730834960938 1440.355712890625 C 1618.705078125 1440.5673828125 1620.712158203125 1440.485229492188 1621.55126953125 1440.390991210938 C 1622.276611328125 1440.309692382813 1623.557006835938 1440.130249023438 1623.167602539063 1439.976806640625 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tvq9h3 =
    '<svg viewBox="0.0 1.6 21.1 1.3" ><path transform="translate(-1610.34, -1514.41)" d="M 1630.697143554688 1516.055053710938 C 1630.842407226563 1516.13525390625 1630.920043945313 1516.214965820313 1630.920043945313 1516.29248046875 C 1630.920043945313 1516.886840820313 1626.428588867188 1517.118774414063 1620.8876953125 1517.118774414063 C 1615.346313476563 1517.118774414063 1610.854370117188 1516.886840820313 1610.854370117188 1516.29248046875 C 1610.854370117188 1516.214965820313 1610.932006835938 1516.13525390625 1611.07763671875 1516.055053710938 C 1610.6044921875 1516.20556640625 1610.343139648438 1516.35986328125 1610.343139648438 1516.506225585938 C 1610.343139648438 1517.130859375 1615.063354492188 1517.374755859375 1620.8876953125 1517.374755859375 C 1626.711059570313 1517.374755859375 1631.431762695313 1517.130859375 1631.431762695313 1516.506225585938 C 1631.431762695313 1516.35986328125 1631.169921875 1516.20556640625 1630.697143554688 1516.055053710938 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_g0fbg6 =
    '<svg viewBox="0.0 0.0 4.5 1.0" ><path transform="translate(-1750.8, -1431.74)" d="M 1755.291870117188 1432.221313476563 C 1755.536376953125 1432.474365234375 1753.36572265625 1432.388061523438 1752.486083984375 1432.289184570313 C 1751.760620117188 1432.207763671875 1750.480224609375 1432.0283203125 1750.86865234375 1431.874877929688 C 1751.8447265625 1431.489990234375 1755.09912109375 1432.02197265625 1755.291870117188 1432.221313476563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_irpin2 =
    '<svg viewBox="0.0 0.1 4.5 1.0" ><path transform="translate(-1750.8, -1439.72)" d="M 1750.88525390625 1439.853149414063 C 1751.148559570313 1439.967651367188 1751.961059570313 1440.077758789063 1752.486083984375 1440.136596679688 C 1753.220947265625 1440.21923828125 1754.850830078125 1440.292358398438 1755.227783203125 1440.1669921875 C 1755.25830078125 1440.180541992188 1755.281005859375 1440.193359375 1755.291870117188 1440.204956054688 C 1755.536376953125 1440.4580078125 1753.36572265625 1440.371704101563 1752.486083984375 1440.272705078125 C 1751.760620117188 1440.191284179688 1750.480224609375 1440.011962890625 1750.86865234375 1439.858642578125 C 1750.874267578125 1439.856689453125 1750.88037109375 1439.85498046875 1750.88525390625 1439.853149414063 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wkui4p =
    '<svg viewBox="0.0 0.1 4.5 1.0" ><path transform="translate(-1750.8, -1439.84)" d="M 1750.86865234375 1439.976806640625 C 1750.872314453125 1439.9755859375 1750.876342773438 1439.974365234375 1750.8798828125 1439.973266601563 C 1750.895874023438 1440.110107421875 1751.938842773438 1440.254028320313 1752.566162109375 1440.324584960938 C 1753.300048828125 1440.406982421875 1754.9248046875 1440.479858398438 1755.30615234375 1440.355712890625 C 1755.3310546875 1440.5673828125 1753.32470703125 1440.485229492188 1752.486083984375 1440.390991210938 C 1751.760620117188 1440.309692382813 1750.480224609375 1440.130249023438 1750.86865234375 1439.976806640625 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_whfvj5 =
    '<svg viewBox="0.0 0.0 5.6 1.0" ><path transform="translate(-1679.15, -1414.28)" d="M 1684.176147460938 1414.629028320313 C 1685.072021484375 1414.542114257813 1684.918701171875 1414.413696289063 1684.16650390625 1414.337524414063 C 1683.550170898438 1414.275024414063 1681.612670898438 1414.255249023438 1680.41064453125 1414.31884765625 C 1679.414428710938 1414.37158203125 1678.76953125 1414.463500976563 1679.39501953125 1414.587036132813 C 1680.343627929688 1414.774658203125 1682.96923828125 1414.745971679688 1684.176147460938 1414.629028320313 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8crsv6 =
    '<svg viewBox="0.0 0.1 5.6 1.0" ><path transform="translate(-1679.15, -1421.27)" d="M 1684.564086914063 1421.384033203125 C 1684.500732421875 1421.423095703125 1684.32568359375 1421.461303710938 1684.014526367188 1421.493896484375 C 1682.889282226563 1421.611694335938 1680.448974609375 1421.642578125 1679.575927734375 1421.455932617188 C 1679.482543945313 1421.43603515625 1679.424438476563 1421.417114257813 1679.388671875 1421.39892578125 C 1679.095581054688 1421.447265625 1679.042358398438 1421.506958007813 1679.396118164063 1421.576904296875 C 1680.344848632813 1421.764404296875 1682.970336914063 1421.735717773438 1684.17724609375 1421.618896484375 C 1684.87744140625 1421.550903320313 1684.930786132813 1421.457885742188 1684.564086914063 1421.384033203125 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x5j930 =
    '<svg viewBox="0.0 0.2 5.6 1.0" ><path transform="translate(-1679.16, -1424.82)" d="M 1684.189086914063 1425.099609375 C 1682.982299804688 1425.216552734375 1680.356811523438 1425.2451171875 1679.408203125 1425.057861328125 C 1679.305419921875 1425.037353515625 1679.240112304688 1425.018188476563 1679.202026367188 1424.99951171875 C 1679.116577148438 1425.037475585938 1679.165771484375 1425.08056640625 1679.408203125 1425.12841796875 C 1680.356811523438 1425.316040039063 1682.982299804688 1425.287231445313 1684.189086914063 1425.170532226563 C 1684.714599609375 1425.11962890625 1684.871459960938 1425.054565429688 1684.765502929688 1424.994018554688 C 1684.6943359375 1425.031616210938 1684.512084960938 1425.068237304688 1684.189086914063 1425.099609375 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_us7w0z =
    '<svg viewBox="40.1 12.5 29.2 2.5" ><path transform="translate(-1534.49, -1452.87)" d="M 1601.666259765625 1465.3798828125 C 1602.32177734375 1465.636596679688 1602.685180664063 1465.901245117188 1602.685180664063 1466.151733398438 C 1602.685180664063 1467.1748046875 1596.651733398438 1467.573974609375 1589.209838867188 1467.573974609375 C 1581.767211914063 1467.573974609375 1575.73388671875 1467.1748046875 1575.73388671875 1466.151733398438 C 1575.73388671875 1465.901245117188 1576.097534179688 1465.636596679688 1576.753295898438 1465.3798828125 C 1575.409057617188 1465.727172851563 1574.634155273438 1466.107666015625 1574.634155273438 1466.4599609375 C 1574.634155273438 1467.483032226563 1581.16015625 1467.882446289063 1589.209838867188 1467.882446289063 C 1597.259643554688 1467.882446289063 1603.785278320313 1467.483032226563 1603.785278320313 1466.4599609375 C 1603.785278320313 1466.107666015625 1603.010498046875 1465.727172851563 1601.666259765625 1465.3798828125 Z" fill="#000000" fill-opacity="0.04" stroke="none" stroke-width="1" stroke-opacity="0.04" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rcd6kp =
    '<svg viewBox="39.9 7.6 1.0 1.0" ><path transform="translate(-1532.27, -1152.41)" d="M 1572.140014648438 1159.998046875" fill="#000000" fill-opacity="0.13" stroke="#404041" stroke-width="8.48073959350586" stroke-opacity="0.13" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_nc1ekn =
    '<svg viewBox="0.0 0.0 15.9 1.0" ><path transform="translate(-1499.87, -1171.83)" d="M 1500.474365234375 1171.986450195313 C 1500.014526367188 1172.0087890625 1499.752075195313 1172.080322265625 1499.9306640625 1172.14501953125 C 1501.00439453125 1172.53271484375 1504.1494140625 1172.859375 1507.842041015625 1172.859375 C 1511.532958984375 1172.859375 1514.678833007813 1172.53271484375 1515.752319335938 1172.14501953125 C 1515.929931640625 1172.080322265625 1515.668090820313 1172.0087890625 1515.20849609375 1171.986450195313 C 1510.758178710938 1171.771606445313 1504.92431640625 1171.771606445313 1500.474365234375 1171.986450195313 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wr01te =
    '<svg viewBox="0.0 0.0 7.9 1.0" ><path transform="translate(-1535.35, -1216.07)" d="M 1535.34765625 1216.260009765625 C 1536.527465820313 1216.343139648438 1537.876342773438 1216.392822265625 1539.310668945313 1216.392822265625 C 1540.743896484375 1216.392822265625 1542.092895507813 1216.343139648438 1543.273193359375 1216.260009765625 C 1542.1806640625 1216.142578125 1540.807495117188 1216.072021484375 1539.310668945313 1216.072021484375 C 1537.8134765625 1216.072021484375 1536.439208984375 1216.142578125 1535.34765625 1216.260009765625 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_byce7v =
    '<svg viewBox="39.5 8.3 1.0 1.0" ><path transform="translate(-1529.28, -1193.97)" d="M 1568.760986328125 1202.239013671875" fill="#000000" fill-opacity="0.13" stroke="#000000" stroke-width="2" stroke-opacity="0.13" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_f1ny4x =
    '<svg viewBox="38.7 9.7 1.9 1.0" ><path transform="translate(-1522.87, -1283.81)" d="M 1562.481079101563 1293.548095703125 C 1562.481079101563 1293.548095703125 1561.795776367188 1293.549926757813 1561.62890625 1293.593994140625 C 1561.259521484375 1293.69091796875 1562.147827148438 1293.774047851563 1562.147827148438 1293.774047851563 L 1562.833129882813 1293.774047851563 C 1562.833129882813 1293.774047851563 1563.56787109375 1293.69873046875 1563.360229492188 1293.625732421875 C 1563.192749023438 1293.567016601563 1562.481079101563 1293.548095703125 1562.481079101563 1293.548095703125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4h6wgr =
    '<svg viewBox="12.3 3.2 55.0 1.3" ><path transform="translate(-1315.44, -883.6)" d="M 1327.715576171875 888.06298828125 C 1332.946044921875 887.7275390625 1342.760009765625 887.2149658203125 1355.51904296875 887.236328125 C 1368.015869140625 887.2572631835938 1377.57861328125 887.7808227539063 1382.742431640625 888.12646484375 L 1380.14501953125 887.4945678710938 C 1374.8212890625 887.1963500976563 1366.33349609375 886.8248901367188 1355.6318359375 886.784912109375 C 1345.016357421875 886.7453002929688 1336.464599609375 887.0476684570313 1331.0537109375 887.3031005859375 L 1327.715576171875 888.06298828125 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_eeqmgj =
    '<svg viewBox="54.1 11.0 9.4 1.0" ><path transform="translate(-1644.34, -1359.04)" d="M 1698.469116210938 1370.192016601563 L 1707.744873046875 1370.310791015625 L 1707.854248046875 1370.136352539063 L 1698.578247070313 1370.017333984375 L 1698.469116210938 1370.192016601563 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v28tix =
    '<svg viewBox="15.9 11.0 9.4 1.0" ><path transform="translate(-1343.63, -1359.34)" d="M 1359.59814453125 1370.60888671875 L 1368.839111328125 1370.489501953125 L 1368.728759765625 1370.315673828125 L 1359.487548828125 1370.434814453125 L 1359.59814453125 1370.60888671875 Z" fill="#000000" fill-opacity="0.13" stroke="none" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ea4r83 =
    '<svg viewBox="0.2 0.2 56.8 50.5" ><path transform="translate(-1326.85, -1095.42)" d="M 1383.851440429688 1126.726440429688 C 1383.851440429688 1140.678833007813 1371.141967773438 1146.125 1355.464233398438 1146.125 C 1339.786376953125 1146.125 1327.076904296875 1140.678833007813 1327.076904296875 1126.726440429688 C 1327.076904296875 1112.77490234375 1339.786376953125 1095.600952148438 1355.464233398438 1095.600952148438 C 1371.141967773438 1095.600952148438 1383.851440429688 1112.77490234375 1383.851440429688 1126.726440429688 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3p3sz4 =
    '<svg viewBox="0.0 0.0 56.8 50.5" ><path transform="translate(-1325.08, -1094.01)" d="M 1354.840087890625 1094.012939453125 C 1368.960205078125 1094.973754882813 1380.1884765625 1110.545166015625 1380.1884765625 1123.269165039063 C 1380.1884765625 1136.403930664063 1368.2236328125 1141.53076171875 1353.46435546875 1141.53076171875 C 1338.704956054688 1141.53076171875 1326.740356445313 1136.403930664063 1326.740356445313 1123.269165039063 C 1326.740356445313 1110.545166015625 1337.96826171875 1094.973754882813 1352.088623046875 1094.012939453125 C 1337.049682617188 1094.976684570313 1325.0771484375 1111.551025390625 1325.0771484375 1125.091918945313 C 1325.0771484375 1139.044189453125 1337.78662109375 1144.490478515625 1353.46435546875 1144.490478515625 C 1369.142333984375 1144.490478515625 1381.851684570313 1139.044189453125 1381.851684570313 1125.091918945313 C 1381.851684570313 1111.551025390625 1369.878662109375 1094.976684570313 1354.840087890625 1094.012939453125 Z" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jccfo6 =
    '<svg viewBox="0.0 0.0 20.2 27.8" ><path transform="translate(-1218.99, -1212.42)" d="M 1221.019775390625 1239.029907226563 C 1223.06201171875 1241.52734375 1226.536865234375 1239.74072265625 1228.66259765625 1237.7587890625 C 1231.587646484375 1235.031494140625 1232.278564453125 1230.868530273438 1234.548706054688 1227.730102539063 C 1236.338623046875 1225.25537109375 1238.6103515625 1222.392822265625 1239.103759765625 1219.277709960938 C 1239.626342773438 1215.972412109375 1236.181884765625 1212.614624023438 1233.30029296875 1212.423461914063 C 1229.489624023438 1212.171508789063 1213.39208984375 1229.701904296875 1221.019775390625 1239.029907226563 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_h4m65q =
    '<svg viewBox="0.0 0.0 20.2 27.8" ><path transform="translate(-1734.34, -1214.11)" d="M 1752.472534179688 1240.719970703125 C 1750.430297851563 1243.217529296875 1746.955444335938 1241.4306640625 1744.82958984375 1239.448852539063 C 1741.90478515625 1236.721557617188 1741.213745117188 1232.558715820313 1738.943481445313 1229.420288085938 C 1737.154052734375 1226.945190429688 1734.881958007813 1224.083129882813 1734.388305664063 1220.967895507813 C 1733.865844726563 1217.66259765625 1737.310791015625 1214.304443359375 1740.191772460938 1214.113891601563 C 1744.002563476563 1213.86181640625 1760.10009765625 1231.391723632813 1752.472534179688 1240.719970703125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_fyuqnh =
    '<svg viewBox="0.0 0.0 15.5 15.1" ><path transform="translate(-1260.34, -1212.11)" d="M 1260.338989257813 1220.682861328125 C 1265.041015625 1220.844360351563 1269.128784179688 1223.4228515625 1271.398681640625 1227.213623046875 C 1273.164428710938 1224.785400390625 1275.327514648438 1221.993530273438 1275.807250976563 1218.96337890625 C 1276.331176757813 1215.658203125 1272.885864257813 1212.30078125 1270.004638671875 1212.108764648438 C 1268.232177734375 1211.991455078125 1263.802368164063 1215.72021484375 1260.338989257813 1220.682861328125 Z" fill="#d0d2d3" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v3t3p6 =
    '<svg viewBox="0.0 0.0 15.5 15.1" ><path transform="translate(-1263.34, -1208.11)" d="M 1263.338989257813 1216.6826171875 C 1268.040893554688 1216.844116210938 1272.12890625 1219.422607421875 1274.39892578125 1223.213256835938 C 1276.164672851563 1220.785034179688 1278.32763671875 1217.993286132813 1278.807373046875 1214.963256835938 C 1279.3310546875 1211.657836914063 1275.885620117188 1208.300415039063 1273.004760742188 1208.108520507813 C 1271.232421875 1207.991333007813 1266.802490234375 1211.719970703125 1263.338989257813 1216.6826171875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_cv654 =
    '<svg viewBox="0.0 0.0 15.5 15.1" ><path transform="translate(-1734.34, -1212.11)" d="M 1749.860107421875 1220.682861328125 C 1745.158081054688 1220.844360351563 1741.070190429688 1223.4228515625 1738.800048828125 1227.213623046875 C 1737.034545898438 1224.785400390625 1734.871826171875 1221.993530273438 1734.391967773438 1218.96337890625 C 1733.867919921875 1215.658203125 1737.3134765625 1212.30078125 1740.1943359375 1212.108764648438 C 1741.966796875 1211.991455078125 1746.396606445313 1215.72021484375 1749.860107421875 1220.682861328125 Z" fill="#d0d2d3" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7lnvzo =
    '<svg viewBox="0.0 0.0 15.5 15.1" ><path transform="translate(-1731.34, -1208.11)" d="M 1746.860107421875 1216.6826171875 C 1742.157958984375 1216.844116210938 1738.070190429688 1219.422607421875 1735.800170898438 1223.213256835938 C 1734.034545898438 1220.785034179688 1731.87158203125 1217.993286132813 1731.391845703125 1214.963256835938 C 1730.867919921875 1211.657836914063 1734.313354492188 1208.300415039063 1737.1943359375 1208.108520507813 C 1738.966796875 1207.991333007813 1743.396728515625 1211.719970703125 1746.860107421875 1216.6826171875 Z" fill="#f0f1f1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ozy4hc =
    '<svg viewBox="12.1 43.6 20.5 48.6" ><path transform="translate(-1313.99, -1063.86)" d="M 1346.616943359375 1107.422119140625 L 1346.616943359375 1107.419799804688 C 1343.667236328125 1108.51953125 1340.9150390625 1110.194702148438 1338.44384765625 1112.269897460938 C 1338.363525390625 1112.336181640625 1338.28466796875 1112.404052734375 1338.20556640625 1112.4716796875 C 1338.126708984375 1112.53955078125 1338.04736328125 1112.608154296875 1337.968505859375 1112.676147460938 C 1337.49658203125 1113.0869140625 1337.034912109375 1113.512573242188 1336.5869140625 1113.952880859375 C 1336.512451171875 1114.026245117188 1336.437744140625 1114.100830078125 1336.363525390625 1114.174072265625 C 1335.6826171875 1114.850463867188 1335.0302734375 1115.55712890625 1334.408203125 1116.28857421875 C 1334.291748046875 1116.42626953125 1334.175537109375 1116.564086914063 1334.060302734375 1116.702758789063 C 1333.830078125 1116.981811523438 1333.604248046875 1117.2626953125 1333.38427734375 1117.54736328125 C 1333.2724609375 1117.690795898438 1333.1630859375 1117.832885742188 1333.054443359375 1117.977416992188 C 1332.982177734375 1118.073486328125 1332.909912109375 1118.169067382813 1332.8388671875 1118.266479492188 C 1332.696533203125 1118.45947265625 1332.5556640625 1118.654663085938 1332.416748046875 1118.849975585938 C 1332.3466796875 1118.948120117188 1332.277587890625 1119.046508789063 1332.208984375 1119.145874023438 C 1332.14013671875 1119.244018554688 1332.072265625 1119.343383789063 1332.004638671875 1119.442749023438 C 1331.93798828125 1119.542114257813 1331.8701171875 1119.641479492188 1331.803466796875 1119.740844726563 C 1331.737060546875 1119.841186523438 1331.671630859375 1119.940673828125 1331.605712890625 1120.041015625 C 1331.54052734375 1120.141723632813 1331.47509765625 1120.243286132813 1331.41064453125 1120.343505859375 C 1331.346435546875 1120.4453125 1331.281982421875 1120.545532226563 1331.218994140625 1120.647216796875 C 1331.155517578125 1120.7490234375 1331.092529296875 1120.8505859375 1331.029052734375 1120.953369140625 C 1330.967041015625 1121.0546875 1330.9052734375 1121.157592773438 1330.84423828125 1121.260375976563 C 1330.781982421875 1121.363037109375 1330.720947265625 1121.466064453125 1330.6611328125 1121.568359375 C 1330.601318359375 1121.671264648438 1330.541259765625 1121.775146484375 1330.481689453125 1121.877685546875 C 1330.422119140625 1121.981689453125 1330.36328125 1122.085571289063 1330.305419921875 1122.189331054688 C 1330.23779296875 1122.311279296875 1330.170166015625 1122.432250976563 1330.103515625 1122.553955078125 C 1330.05615234375 1122.640747070313 1330.0087890625 1122.729125976563 1329.962158203125 1122.81591796875 C 1329.906005859375 1122.921142578125 1329.850830078125 1123.026000976563 1329.795166015625 1123.132080078125 C 1329.741455078125 1123.237060546875 1329.685791015625 1123.342041015625 1329.632568359375 1123.448120117188 C 1329.4541015625 1123.796875 1329.28173828125 1124.149291992188 1329.11669921875 1124.50146484375 C 1329.031005859375 1124.683227539063 1328.947265625 1124.86376953125 1328.8662109375 1125.04541015625 C 1328.50244140625 1125.853881835938 1328.171630859375 1126.669921875 1327.876220703125 1127.489501953125 C 1327.85107421875 1127.557373046875 1327.826416015625 1127.625122070313 1327.802734375 1127.694091796875 C 1327.73095703125 1127.895874023438 1327.66162109375 1128.098022460938 1327.59521484375 1128.298828125 C 1327.557861328125 1128.408569335938 1327.522705078125 1128.517944335938 1327.487548828125 1128.62744140625 C 1327.451416015625 1128.737060546875 1327.41796875 1128.846801757813 1327.384033203125 1128.956298828125 C 1327.35791015625 1129.03955078125 1327.33203125 1129.124267578125 1327.30712890625 1129.207763671875 C 1327.283447265625 1129.286743164063 1327.259765625 1129.365844726563 1327.236083984375 1129.445068359375 C 1327.210205078125 1129.5341796875 1327.185302734375 1129.6220703125 1327.160400390625 1129.711303710938 C 1327.120849609375 1129.851440429688 1327.082763671875 1129.990356445313 1327.045166015625 1130.130126953125 C 1327.0205078125 1130.220336914063 1326.99658203125 1130.3095703125 1326.97412109375 1130.398681640625 C 1326.93798828125 1130.537475585938 1326.904296875 1130.67529296875 1326.87158203125 1130.813110351563 C 1326.85107421875 1130.891967773438 1326.831787109375 1130.971313476563 1326.81396484375 1131.051391601563 C 1326.79345703125 1131.135986328125 1326.773193359375 1131.2216796875 1326.75537109375 1131.306518554688 C 1326.733642578125 1131.400024414063 1326.71337890625 1131.492797851563 1326.693115234375 1131.586303710938 C 1326.651611328125 1131.776000976563 1326.61279296875 1131.965576171875 1326.57666015625 1132.155395507813 C 1326.5576171875 1132.247802734375 1326.540771484375 1132.339477539063 1326.52392578125 1132.431884765625 C 1326.5078125 1132.514404296875 1326.4931640625 1132.596801757813 1326.478759765625 1132.67919921875 C 1326.468505859375 1132.7392578125 1326.45849609375 1132.7978515625 1326.447998046875 1132.856323242188 C 1326.4345703125 1132.941162109375 1326.419677734375 1133.026000976563 1326.407470703125 1133.109375 C 1326.3916015625 1133.20068359375 1326.378173828125 1133.293212890625 1326.36474609375 1133.385620117188 C 1326.343994140625 1133.51904296875 1326.324951171875 1133.65234375 1326.306884765625 1133.784423828125 C 1326.296630859375 1133.863525390625 1326.28662109375 1133.942504882813 1326.277587890625 1134.021240234375 C 1326.268798828125 1134.08251953125 1326.261962890625 1134.143432617188 1326.255126953125 1134.204467773438 C 1326.244873046875 1134.286865234375 1326.23583984375 1134.369140625 1326.22705078125 1134.450561523438 C 1326.21435546875 1134.560913085938 1326.203125 1134.6728515625 1326.193115234375 1134.784545898438 C 1326.18603515625 1134.845703125 1326.1806640625 1134.906372070313 1326.176025390625 1134.96728515625 C 1326.17041015625 1135.033081054688 1326.164794921875 1135.099609375 1326.1591796875 1135.1650390625 C 1326.131103515625 1135.50927734375 1326.110595703125 1135.8525390625 1326.09814453125 1136.193481445313 C 1326.09375 1136.283935546875 1326.09130859375 1136.372924804688 1326.089111328125 1136.462158203125 C 1326.08349609375 1136.675537109375 1326.080078125 1136.887817382813 1326.080078125 1137.098754882813 C 1326.080078125 1148.627563476563 1334.7578125 1154.348510742188 1346.616943359375 1155.987915039063 L 1346.616943359375 1152.991577148438 C 1345.77685546875 1147.640747070313 1345.141357421875 1141.662109375 1344.923828125 1135.143676757813 C 1344.5732421875 1124.633911132813 1345.396484375 1115.305541992188 1346.616943359375 1107.512573242188 L 1346.616943359375 1107.422119140625 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_268j5a =
    '<svg viewBox="47.4 43.2 21.4 49.0" ><path transform="translate(-1591.59, -1061.35)" d="M 1638.999877929688 1104.6708984375 L 1638.999877929688 1150.616333007813 L 1638.999877929688 1153.602172851563 C 1651.322875976563 1152.133666992188 1660.447875976563 1146.4189453125 1660.447875976563 1134.597045898438 C 1660.447875976563 1134.386108398438 1660.44482421875 1134.173583984375 1660.43896484375 1133.960571289063 C 1660.436645507813 1133.871215820313 1660.43310546875 1133.78173828125 1660.429809570313 1133.691528320313 C 1660.417358398438 1133.350830078125 1660.396728515625 1133.007446289063 1660.369140625 1132.663208007813 C 1660.363159179688 1132.59765625 1660.357543945313 1132.531127929688 1660.351806640625 1132.465698242188 C 1660.34765625 1132.40478515625 1660.341796875 1132.34375 1660.334838867188 1132.28271484375 C 1660.324829101563 1132.171020507813 1660.313354492188 1132.05908203125 1660.301025390625 1131.94873046875 C 1660.292114257813 1131.867431640625 1660.283203125 1131.784912109375 1660.272827148438 1131.702514648438 C 1660.266479492188 1131.6416015625 1660.259033203125 1131.580322265625 1660.25048828125 1131.519775390625 C 1660.241333007813 1131.440673828125 1660.231201171875 1131.361572265625 1660.220947265625 1131.282470703125 C 1660.203125 1131.150756835938 1660.183349609375 1131.017456054688 1660.163452148438 1130.884155273438 C 1660.149780273438 1130.79150390625 1660.136474609375 1130.698974609375 1660.12060546875 1130.607666015625 C 1660.108276367188 1130.524169921875 1660.093505859375 1130.439331054688 1660.079956054688 1130.354736328125 C 1660.069580078125 1130.2958984375 1660.059448242188 1130.237182617188 1660.049438476563 1130.177490234375 C 1660.03466796875 1130.095092773438 1660.02001953125 1130.012573242188 1660.004150390625 1129.930297851563 C 1659.987426757813 1129.837646484375 1659.970336914063 1129.74658203125 1659.951049804688 1129.65380859375 C 1659.903930664063 1129.40771484375 1659.853271484375 1129.161499023438 1659.79736328125 1128.915283203125 C 1659.775024414063 1128.810302734375 1659.751586914063 1128.70654296875 1659.726806640625 1128.6015625 C 1659.72314453125 1128.58447265625 1659.718505859375 1128.56640625 1659.713989257813 1128.549682617188 C 1659.695922851563 1128.46923828125 1659.6767578125 1128.390380859375 1659.65771484375 1128.311279296875 C 1659.6240234375 1128.173706054688 1659.590087890625 1128.035766601563 1659.553955078125 1127.897216796875 C 1659.5302734375 1127.807861328125 1659.507690429688 1127.718627929688 1659.482788085938 1127.628295898438 C 1659.4453125 1127.489501953125 1659.408203125 1127.351684570313 1659.36865234375 1127.212890625 C 1659.3056640625 1126.9892578125 1659.239990234375 1126.76708984375 1659.171264648438 1126.54345703125 C 1659.153076171875 1126.48388671875 1659.135009765625 1126.423583984375 1659.115844726563 1126.364013671875 C 1659.090942382813 1126.285034179688 1659.066040039063 1126.204833984375 1659.040405273438 1126.1259765625 C 1659.005004882813 1126.016235351563 1658.970336914063 1125.906616210938 1658.932983398438 1125.797241210938 C 1658.866333007813 1125.596557617188 1658.79736328125 1125.39404296875 1658.725341796875 1125.192138671875 C 1658.701538085938 1125.123413085938 1658.676635742188 1125.055786132813 1658.65185546875 1124.98779296875 C 1658.5546875 1124.719116210938 1658.454345703125 1124.450561523438 1658.349487304688 1124.182983398438 C 1658.306396484375 1124.0712890625 1658.262451171875 1123.959350585938 1658.21728515625 1123.847534179688 C 1657.983642578125 1123.266235351563 1657.731689453125 1122.688354492188 1657.464233398438 1122.11376953125 C 1657.424682617188 1122.02685546875 1657.383056640625 1121.939819335938 1657.342651367188 1121.85302734375 C 1657.290161132813 1121.743408203125 1657.2373046875 1121.6328125 1657.183349609375 1121.523071289063 C 1657.063232421875 1121.276000976563 1656.939208984375 1121.030151367188 1656.8115234375 1120.785034179688 C 1656.770874023438 1120.703735351563 1656.729248046875 1120.623413085938 1656.686401367188 1120.543212890625 C 1656.630004882813 1120.435180664063 1656.572509765625 1120.32666015625 1656.513916015625 1120.21826171875 C 1656.455932617188 1120.111083984375 1656.397583007813 1120.00244140625 1656.337524414063 1119.895385742188 C 1656.275512695313 1119.781372070313 1656.212158203125 1119.66845703125 1656.14697265625 1119.554443359375 C 1656.095947265625 1119.463012695313 1656.044067382813 1119.372802734375 1655.992065429688 1119.2822265625 C 1655.77197265625 1118.90087890625 1655.543823242188 1118.521728515625 1655.309204101563 1118.145629882813 C 1655.24609375 1118.0439453125 1655.181640625 1117.943481445313 1655.117065429688 1117.841918945313 C 1655.058471679688 1117.749145507813 1654.998779296875 1117.656860351563 1654.937622070313 1117.564208984375 C 1654.857543945313 1117.441284179688 1654.776123046875 1117.318237304688 1654.693969726563 1117.194946289063 C 1654.637329101563 1117.1103515625 1654.580932617188 1117.025634765625 1654.523559570313 1116.941040039063 C 1654.45556640625 1116.841796875 1654.387939453125 1116.742553710938 1654.319091796875 1116.644165039063 C 1654.250366210938 1116.544677734375 1654.181518554688 1116.446655273438 1654.111450195313 1116.348510742188 C 1654.042724609375 1116.25146484375 1653.972534179688 1116.153076171875 1653.901611328125 1116.055908203125 C 1653.830322265625 1115.956787109375 1653.757934570313 1115.857177734375 1653.684692382813 1115.759033203125 C 1653.614624023438 1115.664306640625 1653.54443359375 1115.5693359375 1653.473510742188 1115.475830078125 C 1653.256713867188 1115.187744140625 1653.035522460938 1114.90234375 1652.808471679688 1114.621215820313 C 1652.69677734375 1114.480102539063 1652.582885742188 1114.341186523438 1652.468872070313 1114.202392578125 C 1652.468872070313 1114.202392578125 1652.467651367188 1114.202392578125 1652.467651367188 1114.201293945313 C 1652.352416992188 1114.062377929688 1652.237426757813 1113.924438476563 1652.119995117188 1113.78662109375 C 1651.497924804688 1113.055541992188 1650.845458984375 1112.348876953125 1650.164428710938 1111.672485351563 C 1650.090209960938 1111.599243164063 1650.015625 1111.524536132813 1649.941162109375 1111.451293945313 C 1649.4931640625 1111.0107421875 1649.031127929688 1110.585571289063 1648.5595703125 1110.174438476563 C 1648.480712890625 1110.106567382813 1648.4013671875 1110.037841796875 1648.32275390625 1109.970092773438 C 1648.148681640625 1109.821044921875 1647.973510742188 1109.67431640625 1647.79638671875 1109.52978515625 C 1647.6201171875 1109.384033203125 1647.441772460938 1109.241821289063 1647.26220703125 1109.100708007813 C 1647.082763671875 1108.959716796875 1646.902221679688 1108.822021484375 1646.71923828125 1108.685546875 L 1646.445068359375 1108.482299804688 C 1644.151123046875 1106.802490234375 1641.649291992188 1105.4677734375 1638.999877929688 1104.599731445313 L 1638.999877929688 1104.602172851563 L 1638.999877929688 1104.6708984375 Z" fill="#f0f1f1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x9fq7l =
    '<svg viewBox="12.1 43.6 20.5 48.6" ><path transform="translate(-1313.99, -1063.87)" d="M 1346.616943359375 1107.439819335938 C 1343.667236328125 1108.540405273438 1340.9150390625 1110.214599609375 1338.44384765625 1112.287353515625 C 1338.363525390625 1112.353881835938 1338.28466796875 1112.421508789063 1338.20556640625 1112.4892578125 C 1338.126708984375 1112.557250976563 1338.04736328125 1112.6259765625 1337.968505859375 1112.693725585938 C 1337.497802734375 1113.105590820313 1337.037353515625 1113.531372070313 1336.5869140625 1113.970458984375 C 1336.512451171875 1114.0439453125 1336.437744140625 1114.118286132813 1336.363525390625 1114.19189453125 C 1335.684814453125 1114.867919921875 1335.032470703125 1115.574584960938 1334.408203125 1116.30615234375 C 1334.291748046875 1116.444091796875 1334.175537109375 1116.581665039063 1334.060302734375 1116.720581054688 C 1333.8310546875 1116.998291015625 1333.60546875 1117.280517578125 1333.38427734375 1117.565063476563 C 1333.2724609375 1117.708374023438 1333.1630859375 1117.8505859375 1333.054443359375 1117.994995117188 C 1332.982177734375 1118.091186523438 1332.909912109375 1118.18701171875 1332.8388671875 1118.284057617188 C 1332.696533203125 1118.47705078125 1332.5556640625 1118.672485351563 1332.416748046875 1118.867797851563 C 1332.3466796875 1118.9658203125 1332.277587890625 1119.064208984375 1332.208984375 1119.163452148438 C 1332.14013671875 1119.261596679688 1332.072265625 1119.361083984375 1332.004638671875 1119.460693359375 C 1331.93798828125 1119.559936523438 1331.8701171875 1119.6591796875 1331.803466796875 1119.758422851563 C 1331.737060546875 1119.85888671875 1331.671630859375 1119.958374023438 1331.605712890625 1120.058837890625 C 1331.54052734375 1120.159301757813 1331.47509765625 1120.2607421875 1331.41064453125 1120.361572265625 C 1331.346435546875 1120.462768554688 1331.281982421875 1120.5634765625 1331.218994140625 1120.6650390625 C 1331.155517578125 1120.766479492188 1331.092529296875 1120.868286132813 1331.029052734375 1120.970825195313 C 1330.967041015625 1121.072509765625 1330.9052734375 1121.17529296875 1330.84423828125 1121.27783203125 C 1330.781982421875 1121.380737304688 1330.720947265625 1121.483520507813 1330.6611328125 1121.586181640625 C 1330.601318359375 1121.688842773438 1330.541259765625 1121.792724609375 1330.481689453125 1121.8955078125 C 1330.422119140625 1121.999267578125 1330.36328125 1122.103271484375 1330.305419921875 1122.20703125 C 1330.23779296875 1122.328735351563 1330.170166015625 1122.449584960938 1330.103515625 1122.571655273438 C 1330.05615234375 1122.658813476563 1330.0087890625 1122.746704101563 1329.962158203125 1122.833618164063 C 1329.906005859375 1122.938598632813 1329.850830078125 1123.043701171875 1329.795166015625 1123.149658203125 C 1329.741455078125 1123.254760742188 1329.685791015625 1123.359619140625 1329.632568359375 1123.465698242188 C 1329.4541015625 1123.814453125 1329.28173828125 1124.166870117188 1329.11669921875 1124.518920898438 C 1329.031005859375 1124.700805664063 1328.947265625 1124.881225585938 1328.8662109375 1125.063232421875 C 1328.50244140625 1125.871704101563 1328.171630859375 1126.687744140625 1327.876220703125 1127.507080078125 C 1327.85107421875 1127.5751953125 1327.826416015625 1127.642700195313 1327.802734375 1127.711669921875 C 1327.73095703125 1127.913696289063 1327.66162109375 1128.11572265625 1327.59521484375 1128.316772460938 C 1327.557861328125 1128.426147460938 1327.522705078125 1128.53564453125 1327.487548828125 1128.645263671875 C 1327.451416015625 1128.7548828125 1327.41796875 1128.8642578125 1327.384033203125 1128.9736328125 C 1327.35791015625 1129.057373046875 1327.33203125 1129.14208984375 1327.30712890625 1129.225463867188 L 1327.236083984375 1129.462524414063 C 1327.210205078125 1129.551635742188 1327.185302734375 1129.639892578125 1327.160400390625 1129.72900390625 C 1327.120849609375 1129.868774414063 1327.082763671875 1130.0078125 1327.045166015625 1130.147583007813 C 1327.0205078125 1130.238159179688 1326.99658203125 1130.3271484375 1326.97412109375 1130.416748046875 C 1326.93798828125 1130.555541992188 1326.904296875 1130.692993164063 1326.87158203125 1130.83056640625 C 1326.85107421875 1130.909423828125 1326.831787109375 1130.989013671875 1326.81396484375 1131.068725585938 C 1326.79345703125 1131.153686523438 1326.773193359375 1131.239379882813 1326.75537109375 1131.324096679688 C 1326.733642578125 1131.417724609375 1326.71337890625 1131.510375976563 1326.693115234375 1131.604248046875 C 1326.651611328125 1131.793701171875 1326.61279296875 1131.983520507813 1326.57666015625 1132.172973632813 C 1326.5576171875 1132.265625 1326.540771484375 1132.357055664063 1326.52392578125 1132.449462890625 C 1326.5078125 1132.531982421875 1326.4931640625 1132.614379882813 1326.478759765625 1132.696899414063 C 1326.468505859375 1132.7568359375 1326.45849609375 1132.815551757813 1326.447998046875 1132.8740234375 C 1326.4345703125 1132.958740234375 1326.419677734375 1133.043334960938 1326.407470703125 1133.126953125 C 1326.3916015625 1133.218505859375 1326.378173828125 1133.31103515625 1326.36474609375 1133.403564453125 C 1326.343994140625 1133.536865234375 1326.324951171875 1133.670043945313 1326.306884765625 1133.802001953125 C 1326.296630859375 1133.881225585938 1326.28662109375 1133.960083007813 1326.277587890625 1134.039184570313 C 1326.268798828125 1134.100219726563 1326.261962890625 1134.161376953125 1326.255126953125 1134.222045898438 C 1326.244873046875 1134.304321289063 1326.23583984375 1134.38671875 1326.22705078125 1134.468017578125 C 1326.21435546875 1134.578857421875 1326.203125 1134.690551757813 1326.193115234375 1134.80224609375 C 1326.18603515625 1134.86328125 1326.1806640625 1134.92431640625 1326.176025390625 1134.985229492188 C 1326.17041015625 1135.050537109375 1326.164794921875 1135.1171875 1326.1591796875 1135.182739257813 C 1326.131103515625 1135.526977539063 1326.110595703125 1135.8701171875 1326.09814453125 1136.211303710938 C 1326.09375 1136.301513671875 1326.09130859375 1136.390502929688 1326.089111328125 1136.479614257813 C 1326.08349609375 1136.693115234375 1326.080078125 1136.905395507813 1326.080078125 1137.11669921875 C 1326.080078125 1148.644897460938 1334.7578125 1154.366333007813 1346.616943359375 1156.005493164063 L 1346.616943359375 1153.009155273438 C 1335.688232421875 1151.382568359375 1327.742919921875 1145.997680664063 1327.742919921875 1135.293212890625 C 1327.742919921875 1124.590087890625 1335.688232421875 1111.870727539063 1346.616943359375 1107.530029296875 L 1346.616943359375 1107.439819335938 Z" fill="#d0d2d3" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gowgyr =
    '<svg viewBox="47.4 43.2 21.4 49.0" ><path transform="translate(-1591.59, -1061.37)" d="M 1638.999877929688 1104.688842773438 C 1650.395141601563 1108.665893554688 1658.78515625 1121.792724609375 1658.78515625 1132.791625976563 C 1658.78515625 1143.790771484375 1650.396240234375 1149.17333984375 1638.999877929688 1150.634155273438 L 1638.999877929688 1153.619873046875 C 1651.322875976563 1152.151245117188 1660.447875976563 1146.436889648438 1660.447875976563 1134.614868164063 C 1660.447875976563 1134.40380859375 1660.44482421875 1134.191528320313 1660.43896484375 1133.978271484375 C 1660.436645507813 1133.889038085938 1660.434448242188 1133.800048828125 1660.429809570313 1133.709716796875 C 1660.417358398438 1133.36865234375 1660.396728515625 1133.025390625 1660.369140625 1132.681274414063 C 1660.363159179688 1132.615600585938 1660.357543945313 1132.549072265625 1660.351806640625 1132.483276367188 C 1660.34765625 1132.422607421875 1660.341796875 1132.361572265625 1660.334838867188 1132.300659179688 C 1660.324829101563 1132.18896484375 1660.313354492188 1132.077514648438 1660.301025390625 1131.966552734375 C 1660.292114257813 1131.88525390625 1660.283203125 1131.802856445313 1660.272827148438 1131.720336914063 C 1660.266479492188 1131.659423828125 1660.259033203125 1131.598510742188 1660.25048828125 1131.53759765625 C 1660.241333007813 1131.45849609375 1660.231201171875 1131.379638671875 1660.220947265625 1131.300415039063 C 1660.203125 1131.168334960938 1660.183349609375 1131.035400390625 1660.163452148438 1130.902099609375 C 1660.149780273438 1130.809448242188 1660.136474609375 1130.716918945313 1660.12060546875 1130.62548828125 C 1660.108276367188 1130.541625976563 1660.093505859375 1130.457275390625 1660.079956054688 1130.37255859375 C 1660.069580078125 1130.313720703125 1660.059448242188 1130.254760742188 1660.049438476563 1130.1953125 C 1660.03466796875 1130.112915039063 1660.02001953125 1130.030395507813 1660.004150390625 1129.948120117188 C 1659.987426757813 1129.85546875 1659.970336914063 1129.764038085938 1659.951049804688 1129.671508789063 C 1659.903930664063 1129.42529296875 1659.853271484375 1129.17919921875 1659.79736328125 1128.93310546875 C 1659.775024414063 1128.828369140625 1659.751586914063 1128.724487304688 1659.726806640625 1128.619262695313 C 1659.72314453125 1128.6025390625 1659.718505859375 1128.584350585938 1659.713989257813 1128.5673828125 C 1659.695922851563 1128.487060546875 1659.6767578125 1128.408081054688 1659.65771484375 1128.329223632813 C 1659.6240234375 1128.191528320313 1659.590087890625 1128.053466796875 1659.553955078125 1127.914916992188 C 1659.5302734375 1127.825561523438 1659.507690429688 1127.736450195313 1659.482788085938 1127.646118164063 C 1659.4453125 1127.507202148438 1659.408203125 1127.36962890625 1659.36865234375 1127.230712890625 C 1659.3056640625 1127.00732421875 1659.239990234375 1126.784790039063 1659.171264648438 1126.561401367188 C 1659.153076171875 1126.50146484375 1659.135009765625 1126.441772460938 1659.115844726563 1126.3818359375 C 1659.090942382813 1126.302978515625 1659.066040039063 1126.222534179688 1659.040405273438 1126.1435546875 C 1659.005004882813 1126.034301757813 1658.970336914063 1125.924560546875 1658.932983398438 1125.815063476563 C 1658.866333007813 1125.614013671875 1658.79736328125 1125.412109375 1658.725341796875 1125.210083007813 C 1658.701538085938 1125.141235351563 1658.676635742188 1125.073486328125 1658.65185546875 1125.005615234375 C 1658.5546875 1124.737060546875 1658.454345703125 1124.468383789063 1658.349487304688 1124.200805664063 C 1658.306396484375 1124.0888671875 1658.262451171875 1123.977172851563 1658.21728515625 1123.865478515625 C 1657.983642578125 1123.2841796875 1657.731689453125 1122.706176757813 1657.464233398438 1122.131591796875 C 1657.424682617188 1122.044677734375 1657.383056640625 1121.957763671875 1657.342651367188 1121.870727539063 C 1657.290161132813 1121.76123046875 1657.2373046875 1121.650512695313 1657.183349609375 1121.541137695313 C 1657.063232421875 1121.293701171875 1656.939208984375 1121.047607421875 1656.8115234375 1120.802734375 C 1656.770874023438 1120.721435546875 1656.729248046875 1120.641357421875 1656.686401367188 1120.56103515625 C 1656.630004882813 1120.452758789063 1656.572509765625 1120.344482421875 1656.513916015625 1120.236083984375 C 1656.455932617188 1120.12890625 1656.397583007813 1120.0205078125 1656.337524414063 1119.913208007813 C 1656.275512695313 1119.799072265625 1656.212158203125 1119.686401367188 1656.14697265625 1119.572387695313 C 1656.095947265625 1119.480834960938 1656.044067382813 1119.390380859375 1655.992065429688 1119.300415039063 C 1655.77197265625 1118.918701171875 1655.543823242188 1118.539306640625 1655.309204101563 1118.163330078125 C 1655.24609375 1118.061889648438 1655.181640625 1117.96142578125 1655.117065429688 1117.859741210938 C 1655.058471679688 1117.767333984375 1654.998779296875 1117.674560546875 1654.937622070313 1117.58203125 C 1654.857543945313 1117.458862304688 1654.776123046875 1117.336059570313 1654.693969726563 1117.212890625 C 1654.637329101563 1117.128295898438 1654.580932617188 1117.043334960938 1654.523559570313 1116.958862304688 C 1654.45556640625 1116.859741210938 1654.387939453125 1116.760009765625 1654.319091796875 1116.661865234375 C 1654.250366210938 1116.562744140625 1654.181518554688 1116.46435546875 1654.111450195313 1116.366333007813 C 1654.042724609375 1116.268920898438 1653.972534179688 1116.171020507813 1653.901611328125 1116.073852539063 C 1653.830322265625 1115.974487304688 1653.757934570313 1115.875122070313 1653.684692382813 1115.776977539063 C 1653.614624023438 1115.681884765625 1653.54443359375 1115.58740234375 1653.473510742188 1115.49365234375 C 1653.255493164063 1115.205688476563 1653.034423828125 1114.921020507813 1652.808471679688 1114.639038085938 C 1652.69580078125 1114.498779296875 1652.582885742188 1114.359008789063 1652.468872070313 1114.220092773438 C 1652.468872070313 1114.220092773438 1652.467651367188 1114.220092773438 1652.467651367188 1114.218994140625 C 1652.352416992188 1114.080200195313 1652.237426757813 1113.942504882813 1652.119995117188 1113.8046875 C 1651.49560546875 1113.073120117188 1650.843383789063 1112.366455078125 1650.164428710938 1111.690185546875 C 1650.090209960938 1111.616943359375 1650.015625 1111.54248046875 1649.941162109375 1111.468872070313 C 1649.490844726563 1111.029907226563 1649.0302734375 1110.604248046875 1648.5595703125 1110.192260742188 C 1648.480712890625 1110.124389648438 1648.4013671875 1110.055786132813 1648.32275390625 1109.988159179688 C 1648.148681640625 1109.838989257813 1647.973510742188 1109.692138671875 1647.79638671875 1109.547729492188 C 1647.6201171875 1109.401977539063 1647.441772460938 1109.259521484375 1647.26220703125 1109.118774414063 C 1647.082763671875 1108.978759765625 1646.902221679688 1108.839965820313 1646.71923828125 1108.703125 L 1646.445068359375 1108.499877929688 C 1644.151123046875 1106.822387695313 1641.649291992188 1105.488037109375 1638.999877929688 1104.619873046875 L 1638.999877929688 1104.688842773438 Z" fill="#d0d2d3" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_drkusd =
    '<svg viewBox="32.3 59.1 14.7 19.2" ><path transform="translate(-1472.67, -1185.91)" d="M 1509.983520507813 1245.604614257813 L 1504.9580078125 1247.355224609375 L 1504.95263671875 1264.186645507813 L 1519.626953125 1264.19140625 L 1519.633544921875 1247.359985351563 L 1514.890625 1245.000244140625 L 1509.983520507813 1245.604614257813 Z" fill="#d34a4a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_py5f2u =
    '<svg viewBox="38.8 66.1 1.7 8.0" ><path transform="translate(-1524.02, -1240.65)" d="M 1563.297241210938 1306.708862304688 L 1562.834716796875 1313.208984375 L 1563.67529296875 1314.6806640625 L 1564.544311523438 1313.27392578125 L 1563.9833984375 1306.708984375 L 1563.297241210938 1306.708862304688 Z" fill="#3d3d77" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_n0go1b =
    '<svg viewBox="19.1 58.6 20.5 20.1" ><path transform="translate(-1368.72, -1182.36)" d="M 1408.232055664063 1253.906372070313 L 1408.232055664063 1260.607788085938 C 1400.507934570313 1260.715087890625 1399.630859375 1261.687133789063 1396.830078125 1260.600952148438 C 1396.510375976563 1260.476806640625 1389.15576171875 1257.454833984375 1387.9384765625 1249.801879882813 C 1387.283935546875 1245.684692382813 1388.737915039063 1242.316040039063 1389.390625 1240.999877929688 C 1391.878540039063 1242.650268554688 1397.24755859375 1245.786376953125 1404.646484375 1246.763916015625 C 1404.733520507813 1246.775268554688 1404.820434570313 1246.786743164063 1404.9072265625 1246.796875 L 1408.232055664063 1253.906372070313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_fpciq6 =
    '<svg viewBox="39.5 59.6 20.4 18.9" ><path transform="translate(-1529.49, -1190.2)" d="M 1589.227661132813 1257.643920898438 C 1588.067016601563 1265.035766601563 1581.029418945313 1268.034545898438 1580.627563476563 1268.196899414063 C 1578.043579101563 1269.2412109375 1577.303100585938 1268.4013671875 1569.789916992188 1268.443115234375 C 1569.519165039063 1268.444213867188 1569.256103515625 1268.446533203125 1569 1268.450073242188 L 1569 1261.650634765625 L 1572.187744140625 1254.832885742188 C 1572.3525390625 1254.823120117188 1572.517578125 1254.810302734375 1572.68017578125 1254.796875 C 1580.016845703125 1254.218872070313 1585.469360351563 1251.437255859375 1588.16064453125 1249.83984375 C 1588.737548828125 1251.179809570313 1589.782836914063 1254.106201171875 1589.227661132813 1257.643920898438 Z" fill="#f0f1f1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vd8y34 =
    '<svg viewBox="0.0 0.0 5.2 5.3" ><path transform="translate(-1455.94, -1342.72)" d="M 1460.300537109375 1347.169921875 C 1459.871215820313 1347.441772460938 1459.287231445313 1347.67822265625 1459.005737304688 1347.578735351563 C 1458.8330078125 1347.541748046875 1458.512939453125 1347.209350585938 1458.208740234375 1346.695068359375 C 1457.583984375 1345.675170898438 1456.906005859375 1344.009399414063 1456.31982421875 1342.720825195313 L 1455.942016601563 1342.892578125 C 1456.524780273438 1344.171508789063 1457.200073242188 1345.841186523438 1457.853149414063 1346.911376953125 C 1458.189453125 1347.446655273438 1458.490600585938 1347.848999023438 1458.88818359375 1347.977905273438 C 1459.442260742188 1348.123168945313 1460.047729492188 1347.8017578125 1460.517211914063 1347.524658203125 C 1460.896118164063 1347.292236328125 1461.17333984375 1347.066650390625 1461.17724609375 1347.062255859375 L 1460.914794921875 1346.7412109375 C 1460.914794921875 1346.741577148438 1460.654174804688 1346.954467773438 1460.300537109375 1347.169921875 Z" fill="#bbbdbf" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1pbd2 =
    '<svg viewBox="0.0 0.0 1.0 1.0" ><path transform="translate(-1494.92, -1376.85)" d="M 1495.18212890625 1376.9814453125 C 1494.949584960938 1377.149658203125 1494.852172851563 1377.410522460938 1494.963500976563 1377.566162109375 C 1495.075561523438 1377.721069335938 1495.35400390625 1377.711059570313 1495.587890625 1377.543701171875 C 1495.81982421875 1377.375244140625 1495.917602539063 1377.113891601563 1495.805908203125 1376.958740234375 C 1495.694213867188 1376.803588867188 1495.414916992188 1376.813232421875 1495.18212890625 1376.9814453125 Z" fill="#57585a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_64ed2m =
    '<svg viewBox="0.0 0.0 3.5 6.6" ><path transform="translate(-1501.7, -1314.52)" d="M 1502.025268554688 1314.515747070313 L 1501.700073242188 1314.77392578125 C 1502.57958984375 1315.883178710938 1503.751342773438 1317.246948242188 1504.375 1318.266845703125 C 1504.69189453125 1318.77294921875 1504.843383789063 1319.208984375 1504.798461914063 1319.380126953125 C 1504.7578125 1319.675170898438 1504.281860351563 1320.08837890625 1503.8427734375 1320.346069335938 C 1503.490356445313 1320.561645507813 1503.181884765625 1320.695068359375 1503.181518554688 1320.696899414063 L 1503.348388671875 1321.076904296875 C 1503.353515625 1321.074584960938 1503.68017578125 1320.931884765625 1504.059936523438 1320.700561523438 C 1504.520629882813 1320.40869140625 1505.084106445313 1320.01611328125 1505.206909179688 1319.45703125 C 1505.2724609375 1319.044921875 1505.053344726563 1318.593505859375 1504.7294921875 1318.050537109375 C 1504.07470703125 1316.980590820313 1502.897705078125 1315.6181640625 1502.025268554688 1314.515747070313 Z" fill="#bbbdbf" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_g6iwrv =
    '<svg viewBox="0.0 0.0 1.0 1.0" ><path transform="translate(-1512.87, -1365.98)" d="M 1513.202026367188 1366.061889648438 C 1512.94580078125 1366.192626953125 1512.809448242188 1366.437133789063 1512.896362304688 1366.607666015625 C 1512.983520507813 1366.777221679688 1513.261108398438 1366.809692382813 1513.5166015625 1366.679809570313 C 1513.772583007813 1366.548583984375 1513.908447265625 1366.304809570313 1513.821899414063 1366.134643554688 C 1513.735107421875 1365.964233398438 1513.456665039063 1365.931884765625 1513.202026367188 1366.061889648438 Z" fill="#57585a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_iagasc =
    '<svg viewBox="0.0 0.0 6.4 5.7" ><path transform="translate(-1449.69, -1295.56)" d="M 1451.047729492188 1295.948608398438 C 1449.454345703125 1296.942260742188 1449.26806640625 1299.329711914063 1450.46337890625 1301.2919921875 L 1450.926391601563 1301.0087890625 L 1450.925537109375 1301.009033203125 C 1450.381469726563 1300.11767578125 1450.1650390625 1299.146728515625 1450.248413085938 1298.313598632813 C 1450.333251953125 1297.4775390625 1450.706298828125 1296.79296875 1451.330200195313 1296.41162109375 C 1451.9541015625 1296.030029296875 1452.733764648438 1296.011352539063 1453.515991210938 1296.317138671875 C 1454.294921875 1296.623046875 1455.061279296875 1297.2578125 1455.605224609375 1298.148681640625 L 1456.068725585938 1297.865966796875 C 1454.8671875 1295.907470703125 1452.658081054688 1294.984008789063 1451.047729492188 1295.948608398438 Z" fill="#57585a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1vl2kx =
    '<svg viewBox="0.0 0.0 2.9 9.0" ><path transform="translate(-1439.11, -1223.75)" d="M 1439.285766601563 1225.542724609375 C 1439.090576171875 1226.340942382813 1439.030883789063 1227.280883789063 1439.234985351563 1228.156616210938 C 1439.316040039063 1228.50341796875 1439.436889648438 1228.841918945313 1439.578247070313 1229.16162109375 C 1440.146240234375 1230.445068359375 1441.572265625 1232.726928710938 1441.581665039063 1232.73779296875 L 1441.99609375 1232.389038085938 L 1441.994995117188 1232.38916015625 C 1441.99462890625 1232.387817382813 1441.864501953125 1232.1259765625 1441.584716796875 1231.735229492188 C 1441.304809570313 1231.34375 1440.316284179688 1229.548095703125 1440.054077148438 1228.951782226563 C 1439.922485351563 1228.655517578125 1439.812744140625 1228.34619140625 1439.740356445313 1228.037963867188 C 1439.558715820313 1227.2666015625 1439.610229492188 1226.397094726563 1439.790283203125 1225.6669921875 C 1439.964233398438 1224.9375 1440.289916992188 1224.345458984375 1440.54443359375 1224.158081054688 L 1440.225708007813 1223.747802734375 C 1439.802978515625 1224.086547851563 1439.488037109375 1224.742919921875 1439.285766601563 1225.542724609375 Z" fill="#57585a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ntgu92 =
    '<svg viewBox="13.2 5.2 15.6 15.5" ><path transform="translate(-1322.56, -762.75)" d="M 1349.07177734375 769.7594604492188 C 1346.356811523438 766.728515625 1342.619262695313 767.9432983398438 1339.315795898438 770.9021606445313 C 1336.01318359375 773.8607177734375 1334.395263671875 777.4415283203125 1337.110107421875 780.4736328125 C 1339.673828125 783.3348999023438 1345.180419921875 784.6787719726563 1348.567626953125 782.3302612304688 C 1345.537841796875 784.3660278320313 1340.671264648438 783.1614379882813 1338.39794921875 780.6234741210938 C 1335.972900390625 777.9166259765625 1337.418090820313 774.7186279296875 1340.367919921875 772.0761108398438 C 1343.317749023438 769.4346313476563 1346.655151367188 768.3496704101563 1349.079833984375 771.0564575195313 C 1351.504272460938 773.76318359375 1352.097778320313 779.23681640625 1349.14794921875 781.8793334960938 C 1352.451049804688 778.9207763671875 1351.786865234375 772.79052734375 1349.07177734375 769.7594604492188 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5sy82f =
    '<svg viewBox="0.0 0.0 2.9 10.5" ><path transform="translate(-1646.18, -1256.65)" d="M 1648.662353515625 1258.566772460938 C 1648.3583984375 1257.690063476563 1647.940673828125 1256.985107421875 1647.43408203125 1256.646850585938 L 1647.11669921875 1257.13818359375 C 1647.419921875 1257.323608398438 1647.84326171875 1257.955322265625 1648.109375 1258.755126953125 C 1648.38232421875 1259.556396484375 1648.525390625 1260.526123046875 1648.397583007813 1261.408325195313 C 1648.346435546875 1261.754028320313 1648.229248046875 1262.185424804688 1648.071655273438 1262.646606445313 C 1647.440185546875 1264.502807617188 1646.17822265625 1266.814697265625 1646.1767578125 1266.819213867188 L 1646.690063476563 1267.1005859375 L 1646.6904296875 1267.099731445313 C 1646.693237304688 1267.092651367188 1647.965576171875 1264.765747070313 1648.625244140625 1262.835205078125 C 1648.78955078125 1262.3525390625 1648.916870117188 1261.894897460938 1648.97607421875 1261.492065429688 C 1649.1181640625 1260.490234375 1648.96044921875 1259.442993164063 1648.662353515625 1258.566772460938 Z" fill="#57585a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_pddh0 =
    '<svg viewBox="13.4 5.2 15.6 15.5" ><path transform="translate(-1324.06, -762.75)" d="M 1338.7998046875 780.4736328125 C 1336.085205078125 777.4415283203125 1337.702880859375 773.8607177734375 1341.00537109375 770.9021606445313 C 1344.30908203125 767.9432983398438 1348.046508789063 766.728515625 1350.761596679688 769.7594604492188 C 1353.476196289063 772.79052734375 1354.140747070313 778.9207763671875 1350.837524414063 781.8793334960938 C 1347.53466796875 784.8379516601563 1341.515014648438 783.5045776367188 1338.7998046875 780.4736328125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_56mhmt =
    '<svg viewBox="0.0 0.0 4.2 4.2" ><path transform="translate(-1619.23, -1343.44)" d="M 1622.01025390625 1343.552734375 C 1620.90966796875 1343.177490234375 1619.71435546875 1343.765380859375 1619.3388671875 1344.865478515625 C 1618.96435546875 1345.965209960938 1619.551513671875 1347.16064453125 1620.651977539063 1347.536010742188 C 1621.751220703125 1347.910766601563 1622.947265625 1347.323364257813 1623.322143554688 1346.223754882813 C 1623.697509765625 1345.123413085938 1623.109130859375 1343.92724609375 1622.01025390625 1343.552734375 Z" fill="#929597" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4wwj5b =
    '<svg viewBox="1.1 1.1 2.0 2.0" ><path transform="translate(-1627.8, -1352.02)" d="M 1630.229248046875 1353.163330078125 C 1629.699462890625 1352.98291015625 1629.12255859375 1353.265380859375 1628.9423828125 1353.79541015625 C 1628.76171875 1354.324340820313 1629.04541015625 1354.901000976563 1629.5751953125 1355.081665039063 C 1630.103759765625 1355.262451171875 1630.680419921875 1354.978637695313 1630.86083984375 1354.449584960938 C 1631.04150390625 1353.919677734375 1630.7578125 1353.343994140625 1630.229248046875 1353.163330078125 Z" fill="#d0d2d3" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_elya5a =
    '<svg viewBox="0.0 0.0 3.9 4.4" ><path transform="translate(-1535.47, -1274.23)" d="M 1535.4697265625 1276.236694335938 L 1537.230102539063 1278.668579101563 L 1539.369140625 1276.561767578125 L 1535.792358398438 1274.229370117188 L 1535.4697265625 1276.236694335938 Z" fill="#ea5e5e" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4i1s35 =
    '<svg viewBox="3.8 0.0 3.7 4.4" ><path transform="translate(-1565.11, -1274.25)" d="M 1568.87646484375 1276.58154296875 L 1571.014892578125 1278.690307617188 L 1572.61572265625 1276.420776367188 L 1572.454956054688 1274.252319335938 L 1568.87646484375 1276.58154296875 Z" fill="#ea5e5e" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_227cji =
    '<svg viewBox="54.4 6.8 15.6 15.5" ><path transform="translate(-1646.32, -774.75)" d="M 1714.96630859375 793.9906005859375 C 1717.681274414063 790.9586791992188 1716.063232421875 787.3778076171875 1712.760864257813 784.4193115234375 C 1709.457397460938 781.4603881835938 1705.719848632813 780.24560546875 1703.0048828125 783.2765502929688 C 1700.290161132813 786.3076782226563 1699.625366210938 792.43798828125 1702.9287109375 795.3964233398438 C 1706.231811523438 798.3551635742188 1712.2509765625 797.0216674804688 1714.96630859375 793.9906005859375 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ksms1t =
    '<svg viewBox="35.6 64.4 4.1 7.5" ><path transform="translate(-1498.4, -1227.65)" d="M 1534.591064453125 1292.092651367188 L 1537.915649414063 1299.202392578125 L 1538.099731445313 1299.596435546875 L 1537.915649414063 1299.394409179688 L 1534.688110351563 1295.850708007813 L 1534.907104492188 1295.171264648438 L 1533.959838867188 1294.522216796875 L 1534.096313476563 1292.377075195313 L 1534.330200195313 1292.059814453125 L 1534.591064453125 1292.092651367188 Z" fill="#f0f1f1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_erj91f =
    '<svg viewBox="39.3 64.4 4.1 7.3" ><path transform="translate(-1527.68, -1227.38)" d="M 1570.152099609375 1294.67041015625 L 1570.369995117188 1295.349975585938 L 1567.234008789063 1298.795532226563 L 1567.18994140625 1298.8427734375 L 1567.166259765625 1298.867553710938 L 1566.959716796875 1299.095703125 L 1567.100708007813 1298.795532226563 L 1567.167358398438 1298.6533203125 L 1567.167358398438 1298.652099609375 L 1567.18994140625 1298.603515625 L 1570.3779296875 1291.786010742188 C 1570.542724609375 1291.775756835938 1570.707763671875 1291.763549804688 1570.869995117188 1291.749877929688 L 1570.963012695313 1291.87646484375 L 1571.099609375 1294.021240234375 L 1570.152099609375 1294.67041015625 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_15zwwb =
    '<svg viewBox="8.2 8.6 63.0 56.1" ><path transform="translate(-1283.35, -788.83)" d="M 1354.533081054688 831.9308471679688 C 1354.533081054688 847.4100341796875 1340.432250976563 853.4525146484375 1323.037841796875 853.4525146484375 C 1305.643310546875 853.4525146484375 1291.542114257813 847.4100341796875 1291.542114257813 831.9308471679688 C 1291.542114257813 816.4512939453125 1305.643310546875 797.3961181640625 1323.037841796875 797.3961181640625 C 1340.432250976563 797.3961181640625 1354.533081054688 816.4512939453125 1354.533081054688 831.9308471679688 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_phfi5w =
    '<svg viewBox="14.0 26.3 21.1 20.8" ><path transform="translate(-1328.68, -928.51)" d="M 1342.848022460938 967.0274047851563 C 1342.362426757813 968.5888061523438 1342.747192382813 971.39892578125 1343.533569335938 972.8209838867188 C 1344.303100585938 974.2127685546875 1345.7060546875 974.9508056640625 1347.207153320313 975.3107299804688 C 1353.75439453125 976.8823852539063 1362.846801757813 972.5271606445313 1363.67578125 965.3515625 C 1364.017456054688 962.3934326171875 1363.367797851563 958.1967163085938 1360.856689453125 956.248046875 C 1355.58056640625 952.153564453125 1348.584838867188 957.9701538085938 1345.4072265625 962.1010131835938 C 1344.31591796875 963.5193481445313 1343.380859375 965.3173217773438 1342.848022460938 967.0274047851563 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ijo64g =
    '<svg viewBox="22.1 31.9 7.1 7.3" ><path transform="translate(-1392.35, -972.35)" d="M 1414.662841796875 1010.580627441406 C 1414.900634765625 1011.065124511719 1415.400268554688 1011.303894042969 1415.909545898438 1011.426330566406 C 1416.73095703125 1011.623229980469 1417.670166015625 1011.545837402344 1418.542602539063 1011.246520996094 C 1420.0302734375 1010.736267089844 1421.186889648438 1009.676696777344 1421.446411132813 1008.152893066406 C 1421.685302734375 1006.754943847656 1421.08544921875 1005.422424316406 1420.2392578125 1004.815612792969 C 1417.049438476563 1002.527526855469 1413.4267578125 1008.062927246094 1414.662841796875 1010.580627441406 Z" fill="#fdfdff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_goygvb =
    '<svg viewBox="44.6 26.3 21.1 20.8" ><path transform="translate(-1569.76, -928.51)" d="M 1635.308837890625 967.0274047851563 C 1635.794921875 968.5888061523438 1635.409790039063 971.39892578125 1634.623413085938 972.8209838867188 C 1633.853881835938 974.2127685546875 1632.451293945313 974.9508056640625 1630.950439453125 975.3107299804688 C 1624.402954101563 976.8823852539063 1615.310546875 972.5271606445313 1614.481079101563 965.3515625 C 1614.1396484375 962.3934326171875 1614.78955078125 958.1967163085938 1617.300537109375 956.248046875 C 1622.57666015625 952.153564453125 1629.572509765625 957.9701538085938 1632.749877929688 962.1010131835938 C 1633.841064453125 963.5193481445313 1634.776611328125 965.3173217773438 1635.308837890625 967.0274047851563 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_p6h5qg =
    '<svg viewBox="50.6 31.9 7.1 7.3" ><path transform="translate(-1616.43, -972.35)" d="M 1673.841186523438 1010.580627441406 C 1673.603393554688 1011.065124511719 1673.103759765625 1011.303894042969 1672.594360351563 1011.426330566406 C 1671.773315429688 1011.623229980469 1670.834106445313 1011.545837402344 1669.9619140625 1011.246520996094 C 1668.473999023438 1010.736267089844 1667.317138671875 1009.676696777344 1667.057495117188 1008.152893066406 C 1666.81884765625 1006.754943847656 1667.418579101563 1005.422424316406 1668.264404296875 1004.815612792969 C 1671.454345703125 1002.527526855469 1675.077026367188 1008.062927246094 1673.841186523438 1010.580627441406 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_edrtws =
    '<svg viewBox="8.2 24.0 63.0 40.6" ><path transform="translate(-1283.35, -909.95)" d="M 1348.273803710938 933.9279174804688 C 1350.26611328125 938.5711059570313 1351.390380859375 943.4949340820313 1351.390380859375 948.1007690429688 C 1351.390380859375 963.5796508789063 1338.696533203125 969.6218872070313 1323.037841796875 969.6218872070313 C 1307.379150390625 969.6218872070313 1294.684814453125 963.5796508789063 1294.684814453125 948.1007690429688 C 1294.684814453125 943.4949340820313 1295.809692382813 938.5711059570313 1297.801147460938 933.9279174804688 C 1293.870361328125 939.8800659179688 1291.542114257813 946.7599487304688 1291.542114257813 953.0496215820313 C 1291.542114257813 968.5289306640625 1305.643310546875 974.5712280273438 1323.037841796875 974.5712280273438 C 1340.432250976563 974.5712280273438 1354.533081054688 968.5289306640625 1354.533081054688 953.0496215820313 C 1354.533081054688 946.7599487304688 1352.204956054688 939.8800659179688 1348.273803710938 933.9279174804688 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mqtrc4 =
    '<svg viewBox="0.0 0.0 4.6 6.0" ><path transform="translate(-1436.2, -1006.17)" d="M 1440.834350585938 1009.168701171875 C 1440.834350585938 1010.823486328125 1439.797729492188 1012.164794921875 1438.51953125 1012.164794921875 C 1437.240356445313 1012.164794921875 1436.204223632813 1010.823486328125 1436.204223632813 1009.168701171875 C 1436.204223632813 1007.513671875 1437.240356445313 1006.171875 1438.51953125 1006.171875 C 1439.797729492188 1006.171875 1440.834350585938 1007.513671875 1440.834350585938 1009.168701171875 Z" fill="#00a7d5" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_czwclr =
    '<svg viewBox="0.6 1.0 1.7 2.2" ><path transform="translate(-1440.86, -1014.28)" d="M 1443.17236328125 1016.430297851563 C 1443.17236328125 1017.046142578125 1442.786254882813 1017.545532226563 1442.310546875 1017.545532226563 C 1441.834350585938 1017.545532226563 1441.449096679688 1017.046142578125 1441.449096679688 1016.430297851563 C 1441.449096679688 1015.814331054688 1441.834350585938 1015.31494140625 1442.310546875 1015.31494140625 C 1442.786254882813 1015.31494140625 1443.17236328125 1015.814331054688 1443.17236328125 1016.430297851563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gxo1k8 =
    '<svg viewBox="0.0 0.0 4.6 6.0" ><path transform="translate(-1666.95, -1006.17)" d="M 1671.583129882813 1009.168701171875 C 1671.583129882813 1010.823486328125 1670.546997070313 1012.164794921875 1669.26806640625 1012.164794921875 C 1667.989135742188 1012.164794921875 1666.953247070313 1010.823486328125 1666.953247070313 1009.168701171875 C 1666.953247070313 1007.513671875 1667.989135742188 1006.171875 1669.26806640625 1006.171875 C 1670.546997070313 1006.171875 1671.583129882813 1007.513671875 1671.583129882813 1009.168701171875 Z" fill="#00a7d5" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_httynu =
    '<svg viewBox="0.6 1.0 1.7 2.2" ><path transform="translate(-1671.6, -1014.28)" d="M 1673.918090820313 1016.430297851563 C 1673.918090820313 1017.046142578125 1673.531982421875 1017.545532226563 1673.056762695313 1017.545532226563 C 1672.580200195313 1017.545532226563 1672.194702148438 1017.046142578125 1672.194702148438 1016.430297851563 C 1672.194702148438 1015.814331054688 1672.580200195313 1015.31494140625 1673.056762695313 1015.31494140625 C 1673.531982421875 1015.31494140625 1673.918090820313 1015.814331054688 1673.918090820313 1016.430297851563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2iqxi9 =
    '<svg viewBox="8.2 29.2 63.0 35.3" ><path transform="translate(-1283.35, -950.64)" d="M 1351.26708984375 979.8010864257813 C 1352.726684570313 983.656494140625 1353.533325195313 987.6248779296875 1353.533325195313 991.383056640625 C 1353.533325195313 1006.8623046875 1339.880249023438 1012.904541015625 1323.037841796875 1012.904541015625 C 1306.195190429688 1012.904541015625 1292.541748046875 1006.8623046875 1292.541748046875 991.383056640625 C 1292.541748046875 987.6248779296875 1293.348388671875 983.656982421875 1294.808227539063 979.8013916015625 C 1292.718627929688 984.3204345703125 1291.542114257813 989.0853271484375 1291.542114257813 993.5533447265625 C 1291.542114257813 1009.032470703125 1305.643310546875 1015.074829101563 1323.037841796875 1015.074829101563 C 1340.432250976563 1015.074829101563 1354.533081054688 1009.032470703125 1354.533081054688 993.5533447265625 C 1354.533081054688 989.0853271484375 1353.356567382813 984.3204345703125 1351.26708984375 979.8010864257813 Z" fill="#d0d2d3" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_chm4fz =
    '<svg viewBox="19.8 39.4 7.4 2.5" ><path transform="translate(-1374.61, -1031.53)" d="M 1401.84033203125 1072.22509765625 C 1401.84033203125 1072.912963867188 1400.177001953125 1073.4697265625 1398.125244140625 1073.4697265625 C 1396.073974609375 1073.4697265625 1394.410888671875 1072.912963867188 1394.410888671875 1072.22509765625 C 1394.410888671875 1071.537231445313 1396.073974609375 1070.98095703125 1398.125244140625 1070.98095703125 C 1400.177001953125 1070.98095703125 1401.84033203125 1071.537231445313 1401.84033203125 1072.22509765625 Z" fill="#f398b8" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_a1u0m1 =
    '<svg viewBox="0.0 0.0 10.5 7.4" ><path transform="translate(-1523.91, -1094.11)" d="M 1523.908935546875 1096.944458007813 C 1523.908935546875 1094.90673828125 1526.2646484375 1094.110961914063 1529.172241210938 1094.110961914063 C 1532.078735351563 1094.110961914063 1534.436645507813 1094.90673828125 1534.436645507813 1096.944458007813 C 1534.436645507813 1098.983032226563 1532.078735351563 1101.492919921875 1529.172241210938 1101.492919921875 C 1526.2646484375 1101.492919921875 1523.908935546875 1098.983032226563 1523.908935546875 1096.944458007813 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_722ii7 =
    '<svg viewBox="0.0 1.4 10.5 6.0" ><path transform="translate(-1523.91, -1105.35)" d="M 1533.935546875 1106.778076171875 C 1533.959106445313 1106.91650390625 1533.974365234375 1107.060302734375 1533.974365234375 1107.213256835938 C 1533.974365234375 1109.252075195313 1531.824584960938 1111.760498046875 1529.172241210938 1111.760498046875 C 1526.520385742188 1111.760498046875 1524.36962890625 1109.252075195313 1524.36962890625 1107.213256835938 C 1524.36962890625 1107.060302734375 1524.385375976563 1106.91650390625 1524.409057617188 1106.778076171875 C 1524.091186523438 1107.159423828125 1523.908935546875 1107.621948242188 1523.908935546875 1108.181640625 C 1523.908935546875 1110.219970703125 1526.2646484375 1112.72998046875 1529.172241210938 1112.72998046875 C 1532.078735351563 1112.72998046875 1534.436645507813 1110.219970703125 1534.436645507813 1108.181640625 C 1534.436645507813 1107.621948242188 1534.25341796875 1107.159423828125 1533.935546875 1106.778076171875 Z" fill="#704b32" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hv6hze =
    '<svg viewBox="2.8 0.5 4.9 1.2" ><path transform="translate(-1546.0, -1098.17)" d="M 1553.712890625 1099.310180664063 C 1553.712890625 1099.652954101563 1552.6142578125 1099.931762695313 1551.259887695313 1099.931762695313 C 1549.904663085938 1099.931762695313 1548.806884765625 1099.652954101563 1548.806884765625 1099.310180664063 C 1548.806884765625 1098.9658203125 1549.904663085938 1098.687866210938 1551.259887695313 1098.687866210938 C 1552.6142578125 1098.687866210938 1553.712890625 1098.9658203125 1553.712890625 1099.310180664063 Z" fill="#fff5d4" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_2k1clq =
    '<svg viewBox="52.5 39.4 7.4 2.5" ><path transform="translate(-1631.58, -1031.53)" d="M 1691.51025390625 1072.22509765625 C 1691.51025390625 1072.912963867188 1689.84765625 1073.4697265625 1687.796142578125 1073.4697265625 C 1685.744995117188 1073.4697265625 1684.081909179688 1072.912963867188 1684.081909179688 1072.22509765625 C 1684.081909179688 1071.537231445313 1685.744995117188 1070.98095703125 1687.796142578125 1070.98095703125 C 1689.84765625 1070.98095703125 1691.51025390625 1071.537231445313 1691.51025390625 1072.22509765625 Z" fill="#f398b8" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_p7k3gd =
    '<svg viewBox="8.5 75.6 29.2 25.9" ><path transform="translate(-1286.06, -1315.26)" d="M 1323.742065429688 1406.794799804688 C 1323.742065429688 1413.95849609375 1317.216186523438 1416.754516601563 1309.166381835938 1416.754516601563 C 1301.116455078125 1416.754516601563 1294.5908203125 1413.95849609375 1294.5908203125 1406.794799804688 C 1294.5908203125 1399.63134765625 1301.116455078125 1390.81298828125 1309.166381835938 1390.81298828125 C 1317.216186523438 1390.81298828125 1323.742065429688 1399.63134765625 1323.742065429688 1406.794799804688 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kpje2j =
    '<svg viewBox="0.0 4.9 21.1 15.8" ><path transform="translate(-1330.3, -1452.71)" d="M 1351.3857421875 1467.361938476563 C 1351.3857421875 1471.735595703125 1346.66552734375 1473.442993164063 1340.841552734375 1473.442993164063 C 1335.017822265625 1473.442993164063 1330.296875 1471.735595703125 1330.296875 1467.361938476563 C 1330.296875 1462.987915039063 1335.017822265625 1457.603149414063 1340.841552734375 1457.603149414063 C 1346.66552734375 1457.603149414063 1351.3857421875 1462.987915039063 1351.3857421875 1467.361938476563 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nqa6kv =
    '<svg viewBox="0.0 10.8 21.1 9.9" ><path transform="translate(-1330.3, -1499.31)" d="M 1350.3232421875 1510.131103515625 C 1350.4052734375 1510.58056640625 1350.449951171875 1511.02685546875 1350.449951171875 1511.46337890625 C 1350.449951171875 1515.837280273438 1346.14794921875 1517.544921875 1340.841552734375 1517.544921875 C 1335.534423828125 1517.544921875 1331.23291015625 1515.837280273438 1331.23291015625 1511.46337890625 C 1331.23291015625 1511.02685546875 1331.27734375 1510.58056640625 1331.35986328125 1510.131103515625 C 1330.6796875 1511.390380859375 1330.296875 1512.715942382813 1330.296875 1513.959716796875 C 1330.296875 1518.33349609375 1335.017822265625 1520.040893554688 1340.841552734375 1520.040893554688 C 1346.66552734375 1520.040893554688 1351.3857421875 1518.33349609375 1351.3857421875 1513.959716796875 C 1351.3857421875 1512.715942382813 1351.003662109375 1511.390380859375 1350.3232421875 1510.131103515625 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_d45glp =
    '<svg viewBox="0.0 0.0 4.5 4.5" ><path transform="translate(-1338.64, -1431.74)" d="M 1338.661865234375 1435.118286132813 C 1338.417358398438 1436.890502929688 1340.587768554688 1436.2861328125 1341.46826171875 1435.593505859375 C 1342.192993164063 1435.023681640625 1343.473876953125 1433.767456054688 1343.084838867188 1432.692993164063 C 1342.109008789063 1429.998291015625 1338.8544921875 1433.72216796875 1338.661865234375 1435.118286132813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7l94l4 =
    '<svg viewBox="0.0 0.9 4.5 3.6" ><path transform="translate(-1338.64, -1438.94)" d="M 1343.068725585938 1439.85302734375 C 1342.804931640625 1440.654907226563 1341.993041992188 1441.426513671875 1341.46826171875 1441.8388671875 C 1340.732788085938 1442.416748046875 1339.102783203125 1442.928466796875 1338.72607421875 1442.05126953125 C 1338.695556640625 1442.146362304688 1338.672973632813 1442.236206054688 1338.661865234375 1442.316650390625 C 1338.417358398438 1444.0888671875 1340.587768554688 1443.484252929688 1341.46826171875 1442.791748046875 C 1342.192993164063 1442.221923828125 1343.473876953125 1440.965698242188 1343.084838867188 1439.891479492188 C 1343.07958984375 1439.878051757813 1343.073974609375 1439.86669921875 1343.068725585938 1439.85302734375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_30hy6l =
    '<svg viewBox="0.0 0.9 4.5 3.6" ><path transform="translate(-1338.68, -1439.04)" d="M 1343.124755859375 1439.998046875 C 1343.121704101563 1439.989013671875 1343.117309570313 1439.9814453125 1343.11376953125 1439.973266601563 C 1343.09765625 1440.931274414063 1342.055053710938 1441.939086914063 1341.427612304688 1442.43310546875 C 1340.693969726563 1443.010131835938 1339.0693359375 1443.520629882813 1338.688110351563 1442.651489257813 C 1338.662231445313 1444.133178710938 1340.6689453125 1443.558227539063 1341.50830078125 1442.8984375 C 1342.23291015625 1442.32861328125 1343.513671875 1441.072387695313 1343.124755859375 1439.998046875 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_xe7tir =
    '<svg viewBox="0.0 11.5 21.1 9.2" ><path transform="translate(-1330.3, -1504.57)" d="M 1350.651611328125 1516.055053710938 C 1350.796142578125 1516.616943359375 1350.87451171875 1517.17529296875 1350.87451171875 1517.717651367188 C 1350.87451171875 1521.879638671875 1346.38232421875 1523.504150390625 1340.841552734375 1523.504150390625 C 1335.2998046875 1523.504150390625 1330.808837890625 1521.879638671875 1330.808837890625 1517.717651367188 C 1330.808837890625 1517.17529296875 1330.886474609375 1516.616943359375 1331.031494140625 1516.055053710938 C 1330.559326171875 1517.109375 1330.296875 1518.189819335938 1330.296875 1519.215209960938 C 1330.296875 1523.588745117188 1335.017822265625 1525.296142578125 1340.841552734375 1525.296142578125 C 1346.66552734375 1525.296142578125 1351.3857421875 1523.588745117188 1351.3857421875 1519.215209960938 C 1351.3857421875 1518.189819335938 1351.12353515625 1517.109375 1350.651611328125 1516.055053710938 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_c2unlh =
    '<svg viewBox="0.0 0.0 4.5 4.5" ><path transform="translate(-1470.75, -1431.74)" d="M 1475.248413085938 1435.118286132813 C 1475.492553710938 1436.890502929688 1473.321655273438 1436.2861328125 1472.441772460938 1435.593505859375 C 1471.716552734375 1435.023681640625 1470.435546875 1433.767456054688 1470.8251953125 1432.692993164063 C 1471.800537109375 1429.998291015625 1475.055541992188 1433.72216796875 1475.248413085938 1435.118286132813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wnwq77 =
    '<svg viewBox="0.0 0.9 4.5 3.6" ><path transform="translate(-1470.75, -1438.94)" d="M 1470.841674804688 1439.85302734375 C 1471.1044921875 1440.654907226563 1471.9169921875 1441.426513671875 1472.441772460938 1441.8388671875 C 1473.1767578125 1442.416748046875 1474.806762695313 1442.928466796875 1475.184326171875 1442.05126953125 C 1475.21435546875 1442.146362304688 1475.237182617188 1442.236206054688 1475.248413085938 1442.316650390625 C 1475.492553710938 1444.0888671875 1473.321655273438 1443.484252929688 1472.441772460938 1442.791748046875 C 1471.716552734375 1442.221923828125 1470.435546875 1440.965698242188 1470.8251953125 1439.891479492188 C 1470.830322265625 1439.878051757813 1470.836181640625 1439.86669921875 1470.841674804688 1439.85302734375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x2dr0 =
    '<svg viewBox="0.0 0.9 4.5 3.6" ><path transform="translate(-1470.75, -1439.04)" d="M 1470.8251953125 1439.998046875 C 1470.82861328125 1439.989013671875 1470.832275390625 1439.9814453125 1470.83544921875 1439.973266601563 C 1470.852172851563 1440.931274414063 1471.894409179688 1441.939086914063 1472.5224609375 1442.43310546875 C 1473.255615234375 1443.010131835938 1474.880493164063 1443.520629882813 1475.262084960938 1442.651489257813 C 1475.287475585938 1444.133178710938 1473.280517578125 1443.558227539063 1472.441772460938 1442.8984375 C 1471.716552734375 1442.32861328125 1470.435546875 1441.072387695313 1470.8251953125 1439.998046875 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_u2aqff =
    '<svg viewBox="0.0 0.0 5.6 3.1" ><path transform="translate(-1399.1, -1414.28)" d="M 1404.131713867188 1416.725463867188 C 1405.028198242188 1416.117065429688 1404.873779296875 1415.21728515625 1404.121826171875 1414.683715820313 C 1403.505859375 1414.24658203125 1401.567993164063 1414.107421875 1400.366821289063 1414.553344726563 C 1399.370483398438 1414.922973632813 1398.725341796875 1415.566650390625 1399.350830078125 1416.431762695313 C 1400.299194335938 1417.744873046875 1402.925170898438 1417.543823242188 1404.131713867188 1416.725463867188 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7rz329 =
    '<svg viewBox="0.0 0.8 5.6 2.3" ><path transform="translate(-1399.11, -1420.58)" d="M 1404.519775390625 1421.384033203125 C 1404.456909179688 1421.656860351563 1404.281616210938 1421.924438476563 1403.970336914063 1422.153076171875 C 1402.84521484375 1422.977783203125 1400.404663085938 1423.1943359375 1399.531982421875 1421.886596679688 C 1399.43896484375 1421.747802734375 1399.37939453125 1421.615112304688 1399.344360351563 1421.487670898438 C 1399.051025390625 1421.826049804688 1398.99853515625 1422.244018554688 1399.352294921875 1422.733642578125 C 1400.300415039063 1424.046997070313 1402.926635742188 1423.845825195313 1404.13330078125 1423.027709960938 C 1404.833374023438 1422.55224609375 1404.886108398438 1421.9013671875 1404.519775390625 1421.384033203125 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vybtb1 =
    '<svg viewBox="0.0 1.2 5.6 1.9" ><path transform="translate(-1399.11, -1423.78)" d="M 1404.142456054688 1425.734375 C 1402.935668945313 1426.552368164063 1400.309692382813 1426.753540039063 1399.361083984375 1425.440795898438 C 1399.258422851563 1425.297973632813 1399.193237304688 1425.163208007813 1399.155029296875 1425.033203125 C 1399.06884765625 1425.298583984375 1399.118896484375 1425.600463867188 1399.361083984375 1425.935913085938 C 1400.309692382813 1427.249633789063 1402.935668945313 1427.048217773438 1404.142456054688 1426.22998046875 C 1404.667724609375 1425.873901367188 1404.82421875 1425.417602539063 1404.718994140625 1424.994018554688 C 1404.647583007813 1425.2578125 1404.465209960938 1425.5146484375 1404.142456054688 1425.734375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qegm8i =
    '<svg viewBox="8.5 84.0 29.2 17.5" ><path transform="translate(-1286.06, -1381.41)" d="M 1321.622436523438 1465.3798828125 C 1322.27880859375 1467.178466796875 1322.64208984375 1469.03076171875 1322.64208984375 1470.785278320313 C 1322.64208984375 1477.94873046875 1316.6083984375 1480.744384765625 1309.166381835938 1480.744384765625 C 1301.723999023438 1480.744384765625 1295.691040039063 1477.94873046875 1295.691040039063 1470.785278320313 C 1295.691040039063 1469.03076171875 1296.054809570313 1467.178466796875 1296.709350585938 1465.3798828125 C 1295.36572265625 1467.812133789063 1294.5908203125 1470.476440429688 1294.5908203125 1472.943481445313 C 1294.5908203125 1480.107421875 1301.116455078125 1482.90380859375 1309.166381835938 1482.90380859375 C 1317.216186523438 1482.90380859375 1323.742065429688 1480.107421875 1323.742065429688 1472.943481445313 C 1323.742065429688 1470.476440429688 1322.967041015625 1467.812133789063 1321.622436523438 1465.3798828125 Z" fill="#b77965" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ddtts1 =
    '<svg viewBox="40.1 75.6 29.2 25.9" ><path transform="translate(-1534.49, -1315.26)" d="M 1603.785278320313 1406.794799804688 C 1603.785278320313 1413.95849609375 1597.259643554688 1416.754516601563 1589.209838867188 1416.754516601563 C 1581.16015625 1416.754516601563 1574.634155273438 1413.95849609375 1574.634155273438 1406.794799804688 C 1574.634155273438 1399.63134765625 1581.16015625 1390.81298828125 1589.209838867188 1390.81298828125 C 1597.259643554688 1390.81298828125 1603.785278320313 1399.63134765625 1603.785278320313 1406.794799804688 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5s9gkq =
    '<svg viewBox="0.0 4.9 21.1 15.8" ><path transform="translate(-1610.34, -1452.71)" d="M 1631.431762695313 1467.361938476563 C 1631.431762695313 1471.735595703125 1626.711059570313 1473.442993164063 1620.8876953125 1473.442993164063 C 1615.063354492188 1473.442993164063 1610.343139648438 1471.735595703125 1610.343139648438 1467.361938476563 C 1610.343139648438 1462.987915039063 1615.063354492188 1457.603149414063 1620.8876953125 1457.603149414063 C 1626.711059570313 1457.603149414063 1631.431762695313 1462.987915039063 1631.431762695313 1467.361938476563 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lsr8ry =
    '<svg viewBox="0.0 10.8 21.1 9.9" ><path transform="translate(-1610.34, -1499.31)" d="M 1630.368774414063 1510.131103515625 C 1630.451171875 1510.58056640625 1630.495483398438 1511.02685546875 1630.495483398438 1511.46337890625 C 1630.495483398438 1515.837280273438 1626.194091796875 1517.544921875 1620.8876953125 1517.544921875 C 1615.5810546875 1517.544921875 1611.278686523438 1515.837280273438 1611.278686523438 1511.46337890625 C 1611.278686523438 1511.02685546875 1611.323486328125 1510.58056640625 1611.405639648438 1510.131103515625 C 1610.7255859375 1511.390380859375 1610.343139648438 1512.715942382813 1610.343139648438 1513.959716796875 C 1610.343139648438 1518.33349609375 1615.063354492188 1520.040893554688 1620.8876953125 1520.040893554688 C 1626.711059570313 1520.040893554688 1631.431762695313 1518.33349609375 1631.431762695313 1513.959716796875 C 1631.431762695313 1512.715942382813 1631.048950195313 1511.390380859375 1630.368774414063 1510.131103515625 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v641e5 =
    '<svg viewBox="0.0 0.0 4.5 4.5" ><path transform="translate(-1618.69, -1431.74)" d="M 1618.704711914063 1435.118286132813 C 1618.460815429688 1436.890502929688 1620.631103515625 1436.2861328125 1621.511108398438 1435.593505859375 C 1622.236694335938 1435.023681640625 1623.517211914063 1433.767456054688 1623.127563476563 1432.692993164063 C 1622.152587890625 1429.998291015625 1618.897216796875 1433.72216796875 1618.704711914063 1435.118286132813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_awigia =
    '<svg viewBox="0.0 0.9 4.5 3.6" ><path transform="translate(-1618.69, -1438.94)" d="M 1623.111694335938 1439.85302734375 C 1622.848266601563 1440.654907226563 1622.036010742188 1441.426513671875 1621.511108398438 1441.8388671875 C 1620.776733398438 1442.416748046875 1619.14599609375 1442.928466796875 1618.76904296875 1442.05126953125 C 1618.738403320313 1442.146362304688 1618.715698242188 1442.236206054688 1618.704711914063 1442.316650390625 C 1618.460815429688 1444.0888671875 1620.631103515625 1443.484252929688 1621.511108398438 1442.791748046875 C 1622.236694335938 1442.221923828125 1623.517211914063 1440.965698242188 1623.127563476563 1439.891479492188 C 1623.122680664063 1439.878051757813 1623.116455078125 1439.86669921875 1623.111694335938 1439.85302734375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_470nyd =
    '<svg viewBox="0.0 0.9 4.5 3.6" ><path transform="translate(-1618.73, -1439.04)" d="M 1623.167602539063 1439.998046875 C 1623.164306640625 1439.989013671875 1623.161010742188 1439.9814453125 1623.157104492188 1439.973266601563 C 1623.140991210938 1440.931274414063 1622.0986328125 1441.939086914063 1621.470458984375 1442.43310546875 C 1620.737182617188 1443.010131835938 1619.112182617188 1443.520629882813 1618.730834960938 1442.651489257813 C 1618.705078125 1444.133178710938 1620.712158203125 1443.558227539063 1621.55126953125 1442.8984375 C 1622.276611328125 1442.32861328125 1623.557006835938 1441.072387695313 1623.167602539063 1439.998046875 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_73q2t9 =
    '<svg viewBox="0.0 11.5 21.1 9.2" ><path transform="translate(-1610.34, -1504.57)" d="M 1630.697143554688 1516.055053710938 C 1630.842407226563 1516.616943359375 1630.920043945313 1517.17529296875 1630.920043945313 1517.717651367188 C 1630.920043945313 1521.879638671875 1626.428588867188 1523.504150390625 1620.8876953125 1523.504150390625 C 1615.346313476563 1523.504150390625 1610.854370117188 1521.879638671875 1610.854370117188 1517.717651367188 C 1610.854370117188 1517.17529296875 1610.932006835938 1516.616943359375 1611.07763671875 1516.055053710938 C 1610.6044921875 1517.109375 1610.343139648438 1518.189819335938 1610.343139648438 1519.215209960938 C 1610.343139648438 1523.588745117188 1615.063354492188 1525.296142578125 1620.8876953125 1525.296142578125 C 1626.711059570313 1525.296142578125 1631.431762695313 1523.588745117188 1631.431762695313 1519.215209960938 C 1631.431762695313 1518.189819335938 1631.169921875 1517.109375 1630.697143554688 1516.055053710938 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ndm2vg =
    '<svg viewBox="0.0 0.0 4.5 4.5" ><path transform="translate(-1750.8, -1431.74)" d="M 1755.291870117188 1435.118286132813 C 1755.536376953125 1436.890502929688 1753.36572265625 1436.2861328125 1752.486083984375 1435.593505859375 C 1751.760620117188 1435.023681640625 1750.480224609375 1433.767456054688 1750.86865234375 1432.692993164063 C 1751.8447265625 1429.998291015625 1755.09912109375 1433.72216796875 1755.291870117188 1435.118286132813 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_caxjbj =
    '<svg viewBox="0.0 0.9 4.5 3.6" ><path transform="translate(-1750.8, -1438.94)" d="M 1750.88525390625 1439.85302734375 C 1751.148559570313 1440.654907226563 1751.961059570313 1441.426513671875 1752.486083984375 1441.8388671875 C 1753.220947265625 1442.416748046875 1754.850830078125 1442.928466796875 1755.227783203125 1442.05126953125 C 1755.25830078125 1442.146362304688 1755.281005859375 1442.236206054688 1755.291870117188 1442.316650390625 C 1755.536376953125 1444.0888671875 1753.36572265625 1443.484252929688 1752.486083984375 1442.791748046875 C 1751.760620117188 1442.221923828125 1750.480224609375 1440.965698242188 1750.86865234375 1439.891479492188 C 1750.874267578125 1439.878051757813 1750.88037109375 1439.86669921875 1750.88525390625 1439.85302734375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_pzzjls =
    '<svg viewBox="0.0 0.9 4.5 3.6" ><path transform="translate(-1750.8, -1439.04)" d="M 1750.86865234375 1439.998046875 C 1750.872314453125 1439.989013671875 1750.876342773438 1439.9814453125 1750.8798828125 1439.973266601563 C 1750.895874023438 1440.931274414063 1751.938842773438 1441.939086914063 1752.566162109375 1442.43310546875 C 1753.300048828125 1443.010131835938 1754.9248046875 1443.520629882813 1755.30615234375 1442.651489257813 C 1755.3310546875 1444.133178710938 1753.32470703125 1443.558227539063 1752.486083984375 1442.8984375 C 1751.760620117188 1442.32861328125 1750.480224609375 1441.072387695313 1750.86865234375 1439.998046875 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_b7n6f3 =
    '<svg viewBox="0.0 0.0 5.6 3.1" ><path transform="translate(-1679.15, -1414.28)" d="M 1684.176147460938 1416.725463867188 C 1685.072021484375 1416.117065429688 1684.918701171875 1415.21728515625 1684.16650390625 1414.683715820313 C 1683.550170898438 1414.24658203125 1681.612670898438 1414.107421875 1680.41064453125 1414.553344726563 C 1679.414428710938 1414.922973632813 1678.76953125 1415.566650390625 1679.39501953125 1416.431762695313 C 1680.343627929688 1417.744873046875 1682.96923828125 1417.543823242188 1684.176147460938 1416.725463867188 Z" fill="#f1f1f2" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_10ufp4 =
    '<svg viewBox="0.0 0.8 5.6 2.3" ><path transform="translate(-1679.15, -1420.58)" d="M 1684.564086914063 1421.384033203125 C 1684.500732421875 1421.656860351563 1684.32568359375 1421.924438476563 1684.014526367188 1422.153076171875 C 1682.889282226563 1422.977783203125 1680.448974609375 1423.1943359375 1679.575927734375 1421.886596679688 C 1679.482543945313 1421.747802734375 1679.424438476563 1421.615112304688 1679.388671875 1421.487670898438 C 1679.095581054688 1421.826049804688 1679.042358398438 1422.244018554688 1679.396118164063 1422.733642578125 C 1680.344848632813 1424.046997070313 1682.970336914063 1423.845825195313 1684.17724609375 1423.027709960938 C 1684.87744140625 1422.55224609375 1684.930786132813 1421.9013671875 1684.564086914063 1421.384033203125 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ezx0dq =
    '<svg viewBox="0.0 1.2 5.6 1.9" ><path transform="translate(-1679.16, -1423.78)" d="M 1684.189086914063 1425.734375 C 1682.982299804688 1426.552368164063 1680.356811523438 1426.753540039063 1679.408203125 1425.440795898438 C 1679.305419921875 1425.297973632813 1679.240112304688 1425.163208007813 1679.202026367188 1425.033203125 C 1679.116577148438 1425.298583984375 1679.165771484375 1425.600463867188 1679.408203125 1425.935913085938 C 1680.356811523438 1427.249633789063 1682.982299804688 1427.048217773438 1684.189086914063 1426.22998046875 C 1684.714599609375 1425.873901367188 1684.871459960938 1425.417602539063 1684.765502929688 1424.994018554688 C 1684.6943359375 1425.2578125 1684.512084960938 1425.5146484375 1684.189086914063 1425.734375 Z" fill="#aaacaf" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_y2hz43 =
    '<svg viewBox="40.1 84.0 29.2 17.5" ><path transform="translate(-1534.49, -1381.41)" d="M 1601.666259765625 1465.3798828125 C 1602.32177734375 1467.178466796875 1602.685180664063 1469.03076171875 1602.685180664063 1470.785278320313 C 1602.685180664063 1477.94873046875 1596.651733398438 1480.744384765625 1589.209838867188 1480.744384765625 C 1581.767211914063 1480.744384765625 1575.73388671875 1477.94873046875 1575.73388671875 1470.785278320313 C 1575.73388671875 1469.03076171875 1576.097534179688 1467.178466796875 1576.753295898438 1465.3798828125 C 1575.409057617188 1467.812133789063 1574.634155273438 1470.476440429688 1574.634155273438 1472.943481445313 C 1574.634155273438 1480.107421875 1581.16015625 1482.90380859375 1589.209838867188 1482.90380859375 C 1597.259643554688 1482.90380859375 1603.785278320313 1480.107421875 1603.785278320313 1472.943481445313 C 1603.785278320313 1470.476440429688 1603.010498046875 1467.812133789063 1601.666259765625 1465.3798828125 Z" fill="#b77965" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5y5dr2 =
    '<svg viewBox="39.9 49.5 1.0 1.0" ><path transform="translate(-1532.27, -1110.5)" d="M 1572.140014648438 1159.998046875" fill="none" stroke="#404041" stroke-width="8.48073959350586" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_nzrqra =
    '<svg viewBox="0.0 0.0 15.9 7.2" ><path transform="translate(-1499.87, -1171.83)" d="M 1500.474365234375 1172.954467773438 C 1500.014526367188 1173.110107421875 1499.752075195313 1173.611450195313 1499.9306640625 1174.063842773438 C 1501.00439453125 1176.77880859375 1504.1494140625 1179.066650390625 1507.842041015625 1179.066650390625 C 1511.532958984375 1179.066650390625 1514.678833007813 1176.77880859375 1515.752319335938 1174.063842773438 C 1515.929931640625 1173.611450195313 1515.668090820313 1173.110107421875 1515.20849609375 1172.954467773438 C 1510.758178710938 1171.44873046875 1504.92431640625 1171.44873046875 1500.474365234375 1172.954467773438 Z" fill="#000d20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_917j7g =
    '<svg viewBox="0.0 0.0 7.9 2.2" ><path transform="translate(-1535.35, -1216.07)" d="M 1535.34765625 1217.388793945313 C 1536.527465820313 1217.969970703125 1537.876342773438 1218.318115234375 1539.310668945313 1218.318115234375 C 1540.743896484375 1218.318115234375 1542.092895507813 1217.969970703125 1543.273193359375 1217.388793945313 C 1542.1806640625 1216.566284179688 1540.807495117188 1216.072021484375 1539.310668945313 1216.072021484375 C 1537.8134765625 1216.072021484375 1536.439208984375 1216.566284179688 1535.34765625 1217.388793945313 Z" fill="#cc342f" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_sgplmu =
    '<svg viewBox="39.5 54.3 1.0 1.0" ><path transform="translate(-1529.28, -1147.97)" d="M 1568.760986328125 1202.239013671875" fill="#ff0000" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_pb0kym =
    '<svg viewBox="38.7 64.6 1.9 1.6" ><path transform="translate(-1522.87, -1228.97)" d="M 1562.481079101563 1293.548095703125 C 1562.481079101563 1293.548095703125 1561.795776367188 1293.561889648438 1561.62890625 1293.869506835938 C 1561.259521484375 1294.548706054688 1562.147827148438 1295.130737304688 1562.147827148438 1295.130737304688 L 1562.833129882813 1295.130737304688 C 1562.833129882813 1295.130737304688 1563.56787109375 1294.603149414063 1563.360229492188 1294.092651367188 C 1563.192749023438 1293.681274414063 1562.481079101563 1293.548095703125 1562.481079101563 1293.548095703125 Z" fill="#262260" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_g1gi5h =
    '<svg viewBox="12.3 18.7 55.0 9.4" ><path transform="translate(-1315.44, -868.13)" d="M 1327.715576171875 895.75537109375 C 1332.946044921875 893.4066162109375 1342.760009765625 889.8173828125 1355.51904296875 889.9669799804688 C 1368.015869140625 890.1136474609375 1377.57861328125 893.7798461914063 1382.742431640625 896.2000732421875 L 1380.14501953125 891.7755737304688 C 1374.8212890625 889.6868286132813 1366.33349609375 887.0858764648438 1355.6318359375 886.8060302734375 C 1345.016357421875 886.5285034179688 1336.464599609375 888.6458740234375 1331.0537109375 890.4345092773438 L 1327.715576171875 895.75537109375 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rfvy7b =
    '<svg viewBox="54.1 73.2 9.4 2.1" ><path transform="translate(-1644.34, -1296.81)" d="M 1698.469116210938 1371.24072265625 L 1707.744873046875 1372.0732421875 L 1707.854248046875 1370.85107421875 L 1698.578247070313 1370.017333984375 L 1698.469116210938 1371.24072265625 Z" fill="#d0d2d3" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ue39q0 =
    '<svg viewBox="15.9 73.2 9.4 2.1" ><path transform="translate(-1343.63, -1297.07)" d="M 1359.59814453125 1372.367919921875 L 1368.839111328125 1371.532958984375 L 1368.728759765625 1370.315673828125 L 1359.487548828125 1371.149169921875 L 1359.59814453125 1372.367919921875 Z" fill="#d0d2d3" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
Route _createRouteAbra() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Abra(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset(-0.0, 0.0);
      var curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRouteDoc() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Appoinment(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset(-0.0, 0.0);
      var curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRouteJour() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset(-0.0, 0.0);
      var curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
