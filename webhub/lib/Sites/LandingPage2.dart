import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class LandingPage2 extends StatefulWidget {
  @override
  _LandingPage2State createState() => _LandingPage2State();
}

class _LandingPage2State extends State<LandingPage2> {

  List<String> _navButtons = [
    "Visit",
    "Exhibitions",
    "Events",
    "Learn",
    "Shop",
  ];

  List<dynamic> _features = [
    {
      "name": "Calendar",
      "image": "https://image.flaticon.com/icons/png/128/2693/2693507.png",
    },
    {
      "name": "Hours",
      "image": "https://image.flaticon.com/icons/png/128/86/86093.png",
    },
    {
      "name": "Tickets",
      "image": "https://image.flaticon.com/icons/png/128/175/175613.png",
    },
    {
      "name": "Shop",
      "image": "https://image.flaticon.com/icons/png/128/3608/3608947.png",
    },
  ];

  List<String> _socials = [
    "https://image.flaticon.com/icons/png/128/1384/1384031.png",
    "https://image.flaticon.com/icons/png/128/1051/1051377.png",
    "https://image.flaticon.com/icons/png/128/2111/2111819.png",
  ];

  List<String> _sculptures = [
    "https://images.unsplash.com/photo-1614496341624-7c0ad7321034?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fGdyZWVrJTIwc2N1bHB0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1549887552-cb1071d3e5ca?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8Z3JlZWslMjBzY3VscHR1cmV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1549887534-1541e9326642?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Z3JlZWslMjBzY3VscHR1cmV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Material(
      color: BLACK,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _headerImage(),
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
      margin: EdgeInsets.only(top: 10.0,),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: ORANGE,
            width: 15.0,
            height: 15.0,
          ),
          TextView(text: "DM STUDIOS",
            padding: EdgeInsets.symmetric(horizontal: 10.0,),
            size: 20.0,
            color: ORANGE,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w700,
          ),
          Spacer(),
          for(int i = 0; i < _navButtons.length; i++)
            ButtonView(
              onPressed: (){},
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextView(
                text: _navButtons[i],
                size: 15.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
                color: WHITE,
              ),
            ),
        ],
      ),
    );
  }

  Widget _headerImage(){
    return Stack(
      children: [
        ImageView.network(
          width: _size.width,
          height: _size.height/1.25,
          imageKey: "https://images.unsplash.com/photo-1611807237428-41d703cbd59b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGdyZWVrJTIwYnVpbGRpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          colorFilter: BLACK.withOpacity(0.75,),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _size.width/6,),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextView(text: "March 16, 2021 - Artistic Masterpiece",
                        color: Colors.white,
                        size: 12.5,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w300,
                      ),
                      TextView(text: "Explore Ancient Architecture",
                        padding: EdgeInsets.symmetric(vertical: 20.0,),
                        color: Colors.white,
                        size: 45.0,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w700,
                      ),
                      ButtonView(
                        onPressed: (){

                        },
                        margin: EdgeInsets.symmetric(vertical: 20.0,),
                        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0,),
                        borderRadius: 0.0,
                        border: Border.all(color: ORANGE, width: 1.0,),
                        child: TextView(text: "Read more",
                          color: ORANGE,
                          size: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                ImageView.network(imageKey: "https://images.unsplash.com/photo-1572379371012-9e11bfc61b35?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGdyZWVrJTIwc3RhdHVlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                  width: _size.width/3,
                  aspectRatio: 2.0,
                  margin: EdgeInsets.all(20.0,),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for(int i = 0; i < _socials.length; i++)
                      ButtonView(
                        onPressed: (){

                        },
                        margin: EdgeInsets.symmetric(vertical: 5.0,),
                        child: Image.network(_socials[i],
                          width: 25.0,
                          height: 25.0,
                          color: Colors.white,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        _navBar(),
      ],
    );
  }

  Widget _section1(){
    return Container(
      width: _size.width,
      margin: EdgeInsets.symmetric(vertical: 100.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Divider(
                  color: WHITE,
                  thickness: 1.0,
                ),
              ),
              Expanded(
                flex: 5,
                child: TextView.rich(
                  textSpan: [
                    TextView(text: "explore art of sculpture with us\n",
                      color: GREY,
                      size: 10.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w300,
                    ),
                    TextView(text: "Latest events",
                      color: ORANGE,
                      size: 30.0,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                  padding: EdgeInsets.symmetric(horizontal: 20.0,),
                ),
              ),
              Flexible(
                flex: 1,
                child: Divider(
                  color: WHITE,
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          CustomCarousel.builder(
            secondsToSwap: 10,
            showPageIndicator: false,
            viewportFraction: 0.5,
            aspectRatio: 3,
            childrenLength: 3,
            childrenBuilder: (context, index, isCurrent, previous, next){
              if(isCurrent == false){
                return ImageView.network(imageKey: _sculptures[index],
                  width: _size.width/8,
                  height: _size.width/8,
                );
              }else{
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ImageView.network(imageKey: _sculptures[index],
                            width: _size.width/4,
                            height: _size.width/4,
                          ),
                          Container(
                            width: _size.width/4,
                            height: _size.width/2,
                            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0,),
                            decoration: BoxDecoration(
                              color: LIGHTGREY,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(7.5, 7.5,),
                                  color: Colors.black.withOpacity(0.5,),
                                  blurRadius: 20.0,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextView(text: "Guided tour",
                                  size: 12.5,
                                  letterSpacing: 1.0,
                                  color: GREY,
                                  isSelectable: true,
                                  fontWeight: FontWeight.w600,
                                ),
                                TextView(text: "Great Sculpture:\nAncient to Contemporary",
                                  padding: EdgeInsets.symmetric(vertical: 20.0,),
                                  color: WHITE,
                                  size: 22.5,
                                  fontWeight: FontWeight.w700,
                                ),
                                Expanded(
                                  child: TextView(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n",
                                    size: 15.0,
                                    letterSpacing: 1.0,
                                    color: WHITE,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                ButtonView(
                                  onPressed: (){

                                  },
                                  margin: EdgeInsets.only(top: 20.0,),
                                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0,),
                                  borderRadius: 0.0,
                                  border: Border.all(color: ORANGE, width: 1.0,),
                                  child: TextView(text: "Buy ticket",
                                    color: ORANGE,
                                    size: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ButtonView(
                          onPressed: previous,
                          margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 20.0,),
                          child: Icon(Icons.arrow_back_outlined,
                            size: 20.0,
                            color: ORANGE,
                          ),
                        ),
                        ButtonView(
                          onPressed: next,
                          margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 20.0,),
                          child: Icon(Icons.arrow_forward_outlined,
                            size: 20.0,
                            color: ORANGE,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _section2(){
    return Container(
      width: _size.width,
      color: LIGHTGREY,
      margin: EdgeInsets.symmetric(vertical: 100.0,),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for(int i = 0; i < _features.length; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,),
              child: Column(
                children: [
                  Image.network(_features[i]["image"],
                    width: 75.0,
                    height: 75.0,
                    color: Colors.white,
                  ),
                  TextView(text: _features[i]["name"],
                    padding: EdgeInsets.symmetric(vertical: 10.0,),
                    size: 15.0,
                    color: ORANGE,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

}


Color WHITE = Colors.white;
Color BLACK = Color.fromRGBO(30, 30, 30, 1.0,);
Color GREY = Colors.grey;
Color LIGHTGREY = Color.fromRGBO(45, 45, 45, 1.0,);

Color ORANGE = Colors.deepOrangeAccent;
