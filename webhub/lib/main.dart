import 'package:flutter/material.dart';
import 'package:webhub/Sites/LandingPage.dart';
import 'package:webhub/Sites/LandingPage2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LandingPage2(),
  ),);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }

}
