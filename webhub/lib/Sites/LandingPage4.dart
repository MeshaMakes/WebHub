import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class LandingPage4 extends StatefulWidget {
  @override
  _LandingPage4State createState() => _LandingPage4State();
}

class _LandingPage4State extends State<LandingPage4> {

  List<String> _navButtons = [
    "HOME",
    "DESTINATIONS",
    "CRUISES",
    "SPECIALS",
    "HOLIDAYS",
    "BLOG",
  ];

  List<Map> _holidayType = [
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
      color: WHITE,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _navBar(),
              _section1(),
              _searchBar(),
              SizedBox(height: 50.0,),
              _section2(),
              SizedBox(height: 50.0,),
              _section3(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navBar(){
    return Container(
      width: _size.width,
      color: WHITE,
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: _size.width/7,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextView.rich(
            textSpan: [
              TextView(
                text: "DM ",
                size: 30.0,
                letterSpacing: 0.0,
                color: GREEN,
                fontWeight: FontWeight.w700,
              ),
              TextView(
                text: " Studios",
                size: 30.0,
                letterSpacing: 0.0,
                color: BLUE,
                fontWeight: FontWeight.w700,
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
                size: 12.5,
                letterSpacing: 0.5,
                color: i == 0 ? GREEN : BLACK,
                fontWeight: FontWeight.w500,
              ),
            ),


          ButtonView(
            onPressed: (){

            },
            margin: EdgeInsets.symmetric(horizontal: 15.0,),
            padding: EdgeInsets.all(5.0,),
            borderRadius: 90.0,
            border: Border.all(color: BLACK, width: 1.5,),
            child: Icon(Icons.search_outlined,
              size: 20.0,
              color: BLACK,
            ),
          ),
        ],
      ),
    );
  }

  Widget _section1(){
    return ImageView.network(imageKey: "https://images.unsplash.com/photo-1530789253388-582c481c54b0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8dHJhdmVsfGVufDB8MHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      width: _size.width,
      height: _size.width/3,
      colorFilter: BLUE.withOpacity(0.75,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextView(text: "TO TRAVEL IS TO LIVE",
            size: 40.0,
            align: TextAlign.center,
            color: WHITE,
            fontWeight: FontWeight.w600,
          ),
          TextView(text: "You Don't Need Magic To Disappear. All You Need Is A Destination.",
            padding: EdgeInsets.only(top: 10.0, bottom: 30.0,),
            size: 17.5,
            align: TextAlign.center,
            color: WHITE,
            fontWeight: FontWeight.w400,
          ),
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 10.0, runSpacing: 10.0,
            children: [
              ButtonView.hover(
                onPressed: (){

                },
                onHover: ContainerChanges(
                  decoration: BoxDecoration(
                    color: GREEN,
                    border: Border.all(color: GREEN, width: 1.0,),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0,),
                borderRadius: 0.0,
                border: Border.all(color: WHITE, width: 1.0,),
                child: TextView(text: "VIEW ON MAP",
                  size: 15.0,
                  align: TextAlign.center,
                  color: WHITE,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ButtonView.hover(
                onPressed: (){

                },
                onHover: ContainerChanges(
                  decoration: BoxDecoration(
                    color: GREEN,
                    border: Border.all(color: GREEN, width: 1.0,),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0,),
                borderRadius: 0.0,
                border: Border.all(color: WHITE, width: 1.0,),
                child: TextView(text: "MORE INFO",
                  size: 15.0,
                  align: TextAlign.center,
                  color: WHITE,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _searchBar(){
    return Container(
      width: _size.width,
      color: BLUE,
      padding: EdgeInsets.symmetric(vertical: 10.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextView.rich(
            textSpan: [
              TextView(
                text: "FIND YOUR",
                size: 17.5,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                color: GREY,
              ),
              TextView(
                text: "\nHOLIDAYS",
                size: 20.0,
                letterSpacing: 1.5,
                color: WHITE,
                fontWeight: FontWeight.w600,
              ),
            ],
            padding: EdgeInsets.symmetric(horizontal: 40.0,),
          ),
          TextView(text: "Where",
            size: 17.5,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w500,
            color: GREY,
          ),
          ButtonView(
            onPressed: (){

            },
            width: _size.width/7,
            margin: EdgeInsets.only(left: 5.0, right: 40.0,),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0,),
            borderRadius: 0.0,
            color: WHITE,
            children: [
              Expanded(
                child: TextView(text: "Select DESTINATION",
                  size: 12.5,
                  color: GREY,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(Icons.public_outlined,
                size: 20.0,
                color: GREY,
              ),
            ],
          ),

          TextView(
            text: "When",
            size: 17.5,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w500,
            color: GREY,
          ),
          ButtonView(
            onPressed: (){

            },
            width: _size.width/7,
            margin: EdgeInsets.only(left: 5.0, right: 40.0,),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0,),
            borderRadius: 0.0,
            color: WHITE,
            children: [
              Expanded(
                child: TextView(text: "Select Date",
                  size: 12.5,
                  color: GREY,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(Icons.date_range_outlined,
                size: 20.0,
                color: GREY,
              ),
            ],
          ),

          ButtonView(
            onPressed: (){

            },
            margin: EdgeInsets.symmetric(horizontal: 20.0,),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0,),
            borderRadius: 0.0,
            color: GREEN,
            child: TextView(text: "SEARCH",
              size: 15.0,
              align: TextAlign.center,
              color: WHITE,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _section2(){
    return Container(
      width: _size.width,
      padding: EdgeInsets.symmetric(vertical: 30.0,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextView(text: "SPECIAL OFFERS",
            size: 25.0,
            align: TextAlign.center,
            color: BLACK,
            fontWeight: FontWeight.w700,
          ),
          TextView(text: "premium vacations where everyone wants to stay!",
            padding: EdgeInsets.only(top: 10.0, bottom: 30.0,),
            size: 12.5,
            align: TextAlign.center,
            color: BLACK,
            fontWeight: FontWeight.w400,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for(int i = 0; i < _holidayType.length; i++)
                  ButtonView.hover(
                    onPressed: (){

                    },
                    width: _size.width/5.5,
                    margin: EdgeInsets.all(10.0,),
                    onHover: ContainerChanges(
                      decoration: BoxDecoration(
                        border: Border.all(color: GREEN, width: 2.5,),
                      ),
                    ),
                    border: Border.all(color: Colors.transparent, width: 1.5,),
                    builder: (isHovering){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ImageView.network(imageKey: "https://images.unsplash.com/photo-1521706862577-47b053587f91?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dHJvcGljYWx8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            width: _size.width/5.5,
                            aspectRatio: 1.5,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0,),
                            color: isHovering == true ? BLUE : GREY,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextView.rich(
                                    textSpan: [
                                      TextView(text: _holidayType[i]["title"],
                                        size: 15.0,
                                        color: isHovering == true ? WHITE : BLACK,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      TextView(text: "\n${_holidayType[i]["title"]}",
                                        size: 12.0,
                                        color: isHovering == true ? GREY : BLACK,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                    padding: EdgeInsets.only(right: 5.0,),
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down_outlined,
                                  size: 25.0,
                                  color: isHovering == true ? WHITE : BLACK,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _section3(){
    return ImageView.network(imageKey: "https://images.unsplash.com/photo-1553603043-8eae8b896d56?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHRyb3BpY2FsfGVufDB8MHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      width: _size.width,
      height: _size.width/3,
      colorFilter: BLUE.withOpacity(0.75,),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: _size.width/7,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextView(text: "HOLIDAY TYPE",
              size: 25.0,
              align: TextAlign.center,
              color: WHITE,
              fontWeight: FontWeight.w700,
            ),
            TextView(text: "explore the dreamy tropical island",
              padding: EdgeInsets.only(top: 10.0, bottom: 30.0,),
              size: 12.5,
              align: TextAlign.center,
              color: WHITE,
              fontWeight: FontWeight.w400,
            ),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0, runSpacing: 10.0,
              children: [
                for(int i = 0; i < _holidayType.length; i++)
                  ButtonView.hover(
                    onPressed: (){

                    },
                    padding: EdgeInsets.all(10.0,),
                    onHover: ContainerChanges(),
                    builder: (isHovering){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15.0,),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isHovering == true ? GREEN : WHITE,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(90.0),
                            ),
                            child: Icon(_holidayType[i]["icon"],
                              size: 50.0,
                              color: isHovering == true ? GREEN : WHITE,
                            ),
                          ),
                          TextView(text: _holidayType[i]["title"],
                            padding: EdgeInsets.symmetric(vertical: 10.0,),
                            size: 15.0,
                            align: TextAlign.center,
                            color: isHovering == true ? GREEN : WHITE,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      );
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}


Color WHITE = Colors.white;
Color GREY = Color.fromRGBO(175, 175, 175, 1.0,);
Color BLACK = Color.fromRGBO(30, 30, 30, 1.0,);

Color GREEN = Color.fromRGBO(0, 150, 120, 1.0,);
Color BLUE = Color.fromRGBO(10, 50, 90, 1.0,);
