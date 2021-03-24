import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class LandingPage4 extends StatefulWidget {
  @override
  _LandingPage4State createState() => _LandingPage4State();
}

class _LandingPage4State extends State<LandingPage4> {

  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Material(
      color: WHITE,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ],
          ),
        ),
      ),
    );
  }

}


Color WHITE = Colors.white;
Color BLACK = Color.fromRGBO(30, 30, 30, 1.0,);

Color DARKBLUE = Color.fromRGBO(20, 20, 40, 1.0,);
Color ORANGE = Colors.deepOrange;
