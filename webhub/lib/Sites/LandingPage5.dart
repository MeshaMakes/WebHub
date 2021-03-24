import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class LandingPage5 extends StatefulWidget {
  @override
  _LandingPage5State createState() => _LandingPage5State();
}

class _LandingPage5State extends State<LandingPage5> {

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
Color GREY = Color.fromRGBO(175, 175, 175, 1.0,);
Color BLACK = Color.fromRGBO(30, 30, 30, 1.0,);
