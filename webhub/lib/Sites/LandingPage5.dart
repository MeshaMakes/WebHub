import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class LandingPage5 extends StatefulWidget {
  @override
  _LandingPage5State createState() => _LandingPage5State();
}

class _LandingPage5State extends State<LandingPage5> {

  String _filler = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

  List<String> _navButtons = [
    "HOME",
    "GAMES & GEAR",
    "ABOUT US",
    "CONTACT US",
  ];

  List<String> _images = [
    "https://images.unsplash.com/photo-1593508512255-86ab42a8e620?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dnJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1493496553793-56c1aa2cfcea?ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXwzNDU5MDIyfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1506031765313-0bc574a405f0?ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTR8NDM2NDIzOXx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1613325436249-c90b7a608248?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fHZpcnR1YWwlMjByZWFsaXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1613325436307-5489b00ba07a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzJ8fHZpcnR1YWwlMjByZWFsaXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "",
  ];

  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Material(
      color: DARKGREY,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _header(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navBar(){
    return Container(
      width: _size.width,
      margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 100.0,),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0,),
      decoration: BoxDecoration(
        color: BLACK.withOpacity(0.5,),
        borderRadius: BorderRadius.circular(45.0,),
        border: Border.all(color: BLUE, width: 1.0,),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network("https://image.flaticon.com/icons/png/128/908/908304.png",
            width: 30.0,
            height: 30.0,
            color: WHITE,
          ),
          TextView.rich(
            textSpan: [
              TextView(text: "VIRTUAL",
                size: 15.0,
                color: WHITE,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
              TextView(text: "\nREALITY",
                size: 15.0,
                color: WHITE,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
            ],
            padding: EdgeInsets.symmetric(horizontal: 5.0,),
          ),
          Spacer(),
          for(int i = 0; i < _navButtons.length; i++)
            ButtonView(
              onPressed: (){},
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              borderRadius: null,
              border: Border(
                bottom: BorderSide(color: i == 0 ? BLUE : Colors.transparent, width: 1.5,),
              ),
              child: TextView(
                text: _navButtons[i],
                size:  i == 0 ? 12.5 : 15.0,
                fontWeight:  i == 0 ? FontWeight.w600 : FontWeight.w500,
                color: WHITE,
              ),
            ),
        ],
      ),
    );
  }

  Widget _header(){
    return ImageView.network(imageKey: _images[0],
      width: _size.width,
      aspectRatio: 2.5,
      colorFilter: PINK.withOpacity(0.3,),
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: TextView.rich(
            textSpan: [
              TextView(text: "LIGHTING - ATMOSPHERE - GEAR\n",
                size: 17.5,
                color: WHITE,
                letterSpacing: 1.25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
              ),
              TextView(text: "IMMERSIVE EXPERIENCE\n",
                size: 40.0,
                color: WHITE,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
              ),
              TextView(text: "\n$_filler",
                size: 15.0,
                color: WHITE,
                fontWeight: FontWeight.w400,
              ),
            ],
            padding: EdgeInsets.only(bottom: 50.0, left: 100.0, right: _size.width/2,),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: _navBar(),
        ),
      ],
    );
  }

}


Color WHITE = Colors.white;
Color BLACK = Colors.black;
Color GREY = Color.fromRGBO(175, 175, 175, 1.0,);

Color DARKGREY = Color.fromRGBO(30, 30, 30, 1.0,);

Color PINK = Colors.pinkAccent;
Color PURPLE = Colors.deepPurple;
Color BLUE = Colors.lightBlueAccent;
