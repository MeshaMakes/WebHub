import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  List<String> _navButtons = [
    "Home",
    "News",
    "Portfolio",
    "Shop",
    "Contact",
    "Buy",
  ];

  List<Map> _creativeProcess = [
    {
      "icon" : Icons.favorite,
      "title" : "It all starts here"
    },
    {
      "icon" : Icons.lightbulb,
      "title" : "Ideas are born"
    },
    {
      "icon" : Icons.forum_rounded,
      "title" : "Plans are made"
    },
    {
      "icon" : Icons.event,
      "title" : "Tasks are assigned"
    },
    {
      "icon" : Icons.group,
      "title" : "Team is developing"
    },
    {
      "icon" : Icons.done_rounded,
      "title" : "Product is done"
    },
    {
      "icon" : Icons.thumb_up,
      "title" : "Customer is happy"
    },
  ];

  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _navBar(),
              _headerImage(),
              _morePanel(),
              _section1(),
              _section2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navBar(){
    return Container(
      width: _size.width,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextView(
            text: "DM Studios",
            size: 40.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
            padding: EdgeInsets.symmetric(horizontal: 50.0),
          ),
          TextView.rich(
            textSpan: [
              TextView(
                text: "creative thinking",
                size: 20.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              TextView(
                text: "\nvisualizing your ideas",
                size: 10.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ],
          ),
          Spacer(),
          for(int i = 0; i < _navButtons.length; i++)
            ButtonView(
              onPressed: (){},
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextView(
                text: _navButtons[i],
                size: 17.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
                color: i == 0 ? Colors.grey : Colors.black87,
              ),
            ),
          SizedBox(
            width: 50.0,
          ),
        ],
      ),
    );
  }

  Widget _headerImage(){
    return ImageView.network(
      width: _size.width,
      aspectRatio: 3.0,
      colorFilter: Colors.black.withOpacity(0.3,),
      imageKey: "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bGFuZGluZyUyMHBhZ2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextView.rich(
            textSpan: [
              TextView(
                text: "Are you ready",
                size: 50.0,
                letterSpacing: 1.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              TextView(
                text: "\n   To Digitize?",
                size: 50.0,
                letterSpacing: 1.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ],
            padding: EdgeInsets.symmetric(horizontal: _size.width/3,),
          ),
          TextView(
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n"
                "\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            size: 15.0,
            letterSpacing: 1.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: _size.width/3,),
          ),
        ],
      ),
    );
  }

  Widget _morePanel(){
    return Container(
      width: _size.width,
      color: Colors.black87,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ButtonView(
            onPressed: (){

            },
            color: Colors.white,
            borderRadius: 50.0,
            margin: EdgeInsets.all(5.0,),
            child: Image.network("https://img.icons8.com/dotty/2x/facebook-new.png",
              color: Colors.black87,
              width: 40.0,
              height: 40.0,
            ),
          ),
          ButtonView(
            onPressed: (){

            },
            color: Colors.white,
            borderRadius: 50.0,
            margin: EdgeInsets.all(5.0,),
            padding: EdgeInsets.all(5.0,),
            child: Image.network("https://img.icons8.com/dotty/2x/twitter.png",
              color: Colors.black87,
              width: 30.0,
              height: 30.0,
            ),
          ),
          ButtonView(
            onPressed: (){

            },
            color: Colors.white,
            borderRadius: 50.0,
            margin: EdgeInsets.all(5.0,),
            child: Image.network("https://img.icons8.com/dotty/2x/github.png",
              color: Colors.black87,
              width: 40.0,
              height: 40.0,
            ),
          ),
          TextView.rich(
            textSpan: [
              TextView(
                text: "So you need an app?",
                size: 18.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              TextView(
                text: "   DM Studios is what you're looking for!",
                size: 15.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ],
            padding: EdgeInsets.symmetric(horizontal: 50.0,),
          ),
          ButtonView(
            onPressed: (){},
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            border: Border.all(color: Colors.white, width: 1.0,),
            child: TextView(
              text: "More",
              size: 17.0,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _section1(){
    return Container(
      width: _size.width,
      margin: EdgeInsets.symmetric(vertical: 50.0,),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: _size.width/10,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView.rich(
                  textSpan: [
                    TextView(
                      text: "We are creators.",
                      size: 40.0,
                      letterSpacing: 0.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                    ),
                    TextView(
                      text: "\nLeave the developing to us!",
                      size: 40.0,
                      letterSpacing: 0.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                TextView(
                  text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n"
                      "\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  size: 15.0,
                  letterSpacing: 1.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  padding: EdgeInsets.symmetric(vertical: 20.0,),
                ),
              ],
            ),
          ),
          ImageView.network(
            width: _size.width/2.5,
            aspectRatio: 2.0,
            margin: EdgeInsets.only(left: 20.0,),
            colorFilter: Colors.black.withOpacity(0.3,),
            imageKey: "https://images.unsplash.com/photo-1602992708529-c9fdb12905c9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8ZGV2ZWxvcGVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          )
        ],
      ),
    );
  }

  Widget _section2(){
    return Container(
      width: _size.width,
      margin: EdgeInsets.symmetric(vertical: 50.0,),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: _size.width/10,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextView.rich(
            align: TextAlign.center,
            textSpan: [
              TextView(
                text: "The creative process",
                size: 40.0,
                letterSpacing: 0.0,
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                align: TextAlign.center,
              ),
              TextView(
                text: "\nof our team",
                size: 40.0,
                letterSpacing: 0.0,
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                align: TextAlign.center,
              ),
            ],
          ),
          TextView(
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            size: 15.0,
            letterSpacing: 1.0,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
            padding: EdgeInsets.only(top: 20.0, bottom: 50.0),
            align: TextAlign.center,
          ),

          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 10.0, runSpacing: 10.0,
            children: [
              for(int i = 0; i < _creativeProcess.length; i++)
                HoverWidget(
                  duration: Duration(milliseconds: 500,),
                  width: _size.width / 13,
                  idle: ContainerChanges(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  onHover: ContainerChanges(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200.withOpacity(0.40),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Icon(_creativeProcess[i]["icon"],
                          size: 30.0,
                          color: Colors.black,
                        ),
                      ),
                      TextView(
                        text: _creativeProcess[i]["title"],
                        padding: EdgeInsets.symmetric(vertical: 5.0,),
                        color: Colors.black,
                        size: 18.0,
                        fontWeight: FontWeight.w700,
                        align: TextAlign.center,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

}
