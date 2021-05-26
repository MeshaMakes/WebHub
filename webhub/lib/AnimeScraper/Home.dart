import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';
import '../AnimeScraper/Utils/Colors.dart' as colors;

class Home extends StatefulWidget {
  @override
  _HomeController createState() => _HomeController();
}

class _HomeController extends State<Home> {
  @override
  Widget build(BuildContext context) => _HomeView(this);
}

class _HomeView extends StatelessWidget {
    final _HomeController state;
    _HomeView(this.state) : super();

    @override
    Widget build(BuildContext context) {
    return Material(

    );
  }

  Widget _left() {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [colors.blue, colors.background]
          )
        ),
        child: Column(
          children: [
            TabBar(
              tabs: [
                ButtonView(
                  onPressed: () {},
                  direction: Direction.vertical,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: colors.grey,
                        shape: BoxShape.circle
                      ),
                    ),
                    TextView(
                      text: "Explore",
                      color: colors.white,
                      size: 15.0,
                      fontWeight: FontWeight.w400,
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  ],
                ),
                ButtonView(
                  onPressed: () {},
                  direction: Direction.vertical,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: colors.grey,
                        shape: BoxShape.circle
                      ),
                    ),
                    TextView(
                      text: "WatchList",
                      color: colors.white,
                      size: 15.0,
                      fontWeight: FontWeight.w400,
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  ],
                ),
                ButtonView(
                  onPressed: () {},
                  direction: Direction.vertical,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: colors.grey,
                        shape: BoxShape.circle
                      ),
                    ),
                    TextView(
                      text: "Live",
                      color: colors.white,
                      size: 15.0,
                      fontWeight: FontWeight.w400,
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  ],
                ),
              ],
            ),
            TabBarView(
              children: [],
            ),
          ],
        ),
      );
  }
}