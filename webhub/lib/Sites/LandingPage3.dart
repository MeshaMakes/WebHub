import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class LandingPage3 extends StatefulWidget {
  @override
  _LandingPage3State createState() => _LandingPage3State();
}

class _LandingPage3State extends State<LandingPage3> {

  String _filler = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

  List<String> pictures = [
    "https://images.unsplash.com/photo-1582925250462-d012a22ef727?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGNoZXNzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1523875194681-bedd468c58bf?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y2hlc3N8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1572710944495-d501f69634fb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fGNoZXNzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

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
              _headerImage(),
              _section1(),
              _section2(),
              _section3(),
              _section4(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerImage(){
    return ImageView.network(
      width: _size.width,
      height: _size.height/1.25,
      imageKey: "https://images.unsplash.com/photo-1587742379888-e9ef61e6cf24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGNoZXNzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      colorFilter: DARKBLUE.withOpacity(0.5,),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextView(text: "Design a Career\nYou Love",
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: _size.width/8,),
            color: Colors.white,
            size: 65.0,
            letterSpacing: 5.0,
            fontWeight: FontWeight.w600,
          ),
          Container(
            color: ORANGE,
            width: _size.width/3,
            height: 10,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: _size.width/2.75,),
          ),
        ],
      ),
    );
  }

  Widget _section1(){
    return Container(
      width: _size.width,
      color: DARKBLUE,
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: _size.width/8,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: (_size.width/6)-15,
            height: (_size.width/5)-15,
            padding: EdgeInsets.all(10.0,),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: ORANGE, width: 7.5,),
            ),
            child: TextView(text: "About Our Company",
              color: WHITE,
              size: 30.0,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w500,
            ),
          ),

          for(int i = 0; i < 3; i++)
            Container(
              width: _size.width/6,
              height: _size.width/5,
              padding: EdgeInsets.all(10.0,),
              child: TextView(text: i == 0
                  ? "$_filler\n\n     read more"
                  : _filler,
                size: 15.0,
                color: WHITE,
                fontWeight: FontWeight.w400,
              ),
            ),
        ],
      ),
    );
  }

  Widget _section2(){
    return Container(
      width: _size.width,
      margin: EdgeInsets.symmetric(vertical: 50.0,),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: _size.width/8,),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for(int i = 0; i < 3; i++)
                ImageView.network(imageKey: pictures[i],
                  width: (_size.width/6)-20,
                  height: (_size.width/5)-20,
                ),

              Container(
                width: (_size.width/6)-15,
                height: (_size.width/5)-15,
                padding: EdgeInsets.all(10.0,),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: ORANGE, width: 7.5,),
                ),
                child: TextView(text: "About Our Designers",
                  color: BLACK,
                  size: 30.0,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextView(text: "$_filler $_filler",
                  padding: EdgeInsets.symmetric(vertical: 20.0,),
                  color: BLACK,
                  size: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ButtonView(
                onPressed: (){

                },
                color: BLACK,
                borderRadius: 0.0,
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0,),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0,),
                child: TextView(text: "read more",
                  color: WHITE,
                  size: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _section3(){
    return Container(
      width: _size.width,
      color: DARKBLUE,
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: _size.width/8,),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          for(int i = 0; i < 2; i++)
            Container(
              width: _size.width/3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: ImageView.network(
                      imageKey: "https://images.unsplash.com/photo-1583182723157-3edda2558aa3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGNoZXNzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                      width: _size.width/9,
                      height: _size.width/9,
                    ),
                  ),
                  TextView(text: "\"$_filler\"",
                    padding: EdgeInsets.symmetric(vertical: 20.0,),
                    color: WHITE,
                    size: 12.5,
                    lineSpacing: 2.0,
                    align: TextAlign.center,
                    fontWeight: FontWeight.w400,
                  ),
                  TextView(text: "Mesha Thomas",
                    color: WHITE,
                    size: 15.0,
                    align: TextAlign.center,
                    fontWeight: FontWeight.w500,
                  ),
                  Container(
                    color: ORANGE,
                    width: _size.width/9,
                    height: 10,
                    margin: EdgeInsets.symmetric(vertical: 20.0,),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _section4(){
    return Container(
      width: _size.width,
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: _size.width/8,),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 10.0, runSpacing: 20.0,
        children: [
          for(int i = 0; i < 2; i++)
            ImageView.network(imageKey: "https://images.unsplash.com/photo-1503332132010-d1b77a049ddd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Y2hlc3MlMjBib2FyZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
              width: _size.width/3,
              height: _size.width/6,
            ),

            Container(
              width: _size.width/3,
              height: _size.width/6,
              padding: EdgeInsets.all(10.0,),
              decoration: BoxDecoration(
                border: Border.all(color: ORANGE, width: 7.5,),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(text: "Our Latest Projects",
                    color: BLACK,
                    size: 30.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                  Expanded(
                    child: TextView(text: _filler,
                      padding: EdgeInsets.symmetric(vertical: 20.0,),
                      color: BLACK,
                      size: 12.5,
                      lineSpacing: 2.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ButtonView(
                    onPressed: (){

                    },
                    color: BLACK,
                    borderRadius: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0,),
                    child: TextView(text: "read more",
                      color: WHITE,
                      size: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

          for(int i = 0; i < 2; i++)
            ImageView.network(imageKey: "https://images.unsplash.com/photo-1614605008553-d98daabfa5b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGNoZXNzJTIwYm9hcmR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
              width: _size.width/6,
              height: _size.width/6,
            ),
        ],
      ),
    );
  }

}


Color WHITE = Colors.white;
Color BLACK = Color.fromRGBO(30, 30, 30, 1.0,);

Color DARKBLUE = Color.fromRGBO(20, 20, 40, 1.0,);
Color ORANGE = Colors.deepOrange;
