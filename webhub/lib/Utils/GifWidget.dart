import 'dart:async';
import 'package:flutter/material.dart';

class GifWidget extends StatefulWidget {
  final Widget child;
  final Size maxConstraints;
  final double speed;
  GifWidget({Key key, @required this.child, @required this.maxConstraints, @required this.speed,}) : super(key: key);
  @override
  _GifWidgetState createState() => _GifWidgetState();
}

class _GifWidgetState extends State<GifWidget> {

  double _distance;

  @override
  void initState() {
    _distance = 0;
    super.initState();
    Timer.periodic(Duration(milliseconds: 50,), (timer) {
      setState(() {
        _distance = _distance + widget.speed;
      });
      if(_distance >= widget.maxConstraints.width*1.5){
        setState(() {
          _distance = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.maxConstraints.width,
      height: widget.maxConstraints.height,
      child: Stack(
        children: [
          Positioned(
            left: _distance,
            child: Transform(
              transform: Matrix4.identity()..rotateY(3.14,),
              alignment: FractionalOffset.center,
              child: widget.child,
            ),
          ),
        ],
      ),
    );
  }

}
