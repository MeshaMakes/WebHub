import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class BlogSite extends StatefulWidget {
  @override
  _BlogSiteState createState() => _BlogSiteState();
}

class _BlogSiteState extends State<BlogSite> {
  Size _size;
  String _filler = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

  List<String> _navButtons = [
    "About",
    "Articles",
    "Subscribe",
  ];

  List<dynamic> _articles = [
    {
      "desc": "How to use mindfulness in your everyday life",
      "image": "https://images.unsplash.com/photo-1494208133010-7227229a632a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDB8fHBsYW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
    },
    {
      "desc": "What are the best walking meditations",
      "image": "https://images.unsplash.com/photo-1517279509087-dd1bb691b553?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fHdhbGtpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
    },
    {
      "desc": "How to go deep into the mind of hope",
      "image": "https://images.unsplash.com/photo-1425736317462-a103b1303a35?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzZ8fHBsYW50fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
    },
  ];

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _header(),
              _section1(),
              _section2(),
              _section3()
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Stack(
      children: [
        ImageView.network(
          width: _size.width,
          aspectRatio: 2.2,
          colorFilter: Colors.black.withOpacity(0.3,),
          imageKey: "https://images.unsplash.com/photo-1466781783364-36c955e42a7f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjN8fHBsYW50c3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextView(
                text: "LOMBOK",
                size: 50.0,
                letterSpacing: 1.0,
                color: Colors.black87,
                fontWeight: FontWeight.w700,
              ),
              TextView(
                text: "HOLISTIC HEALTH",
                size: 24.0,
                letterSpacing: 1.0,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                padding: EdgeInsets.symmetric(vertical: 20.0,),
              ),
              Container(
                width: 50.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextView(
                  text: "LO",
                  size: 40.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w700,
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  color: Colors.black87,
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
                      color: Colors.black87,
                    ),
                    border: Border.all(color: i == 2 ? Colors.black87 : Colors.transparent, width: i == 2 ? 2.0 : 0.0),
                    borderRadius: 0.0,
                  ),
                SizedBox(
                  width: 50.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _section1(){
    return Container(
      width: _size.width,
      margin: EdgeInsets.symmetric(vertical: 50.0,),
      padding: EdgeInsets.symmetric(vertical: 20.0,),
      child: Column(
        children: [
          TextView(
            text: "LATEST ARTICLES",
            size: 24.0,
            letterSpacing: 1.0,
            color: Colors.black54,
            fontWeight: FontWeight.w700,
          ),
          Container(
            width: 50.0,
            height: 5.0,
            margin: EdgeInsets.only(bottom: 30.0, top: 10.0),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for(int i = 0; i < _articles.length; i++)
                Container(
                  width: _size.width / 8,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(bottom: 20.0,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        offset: Offset(5.0, 5.0),
                        color: Colors.grey.withOpacity(0.3),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      ImageView.network(
                        imageKey: _articles[i]["image"],
                        width: _size.width / 2,
                        aspectRatio: 4.5,
                      ),
                      Container(
                        width: 50.0,
                        height: 3.0,
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      TextView(
                        text: _articles[i]["desc"],
                        size: i == 0 ? 15.8 : 18.0,
                        letterSpacing: 0.0,
                        color: Colors.black54,
                        fontWeight: i == 0 ? FontWeight.w500 : FontWeight.w400,
                        align: TextAlign.center,
                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                      ),
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }

  Widget _section2(){
    return Container(
      width: _size.width,
      margin: EdgeInsets.symmetric(vertical: 50.0,),
      padding: EdgeInsets.symmetric(vertical: 20.0,),
      child: Row(
        children: [
          ImageView.network(
            width: _size.width /2,
            fit: BoxFit.contain,
            imageKey: "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fHBsYW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          ),
          Expanded(
            child: Container(
              height: (_size.height/2.9) *2.2 - 29.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(0.0, 5.0),
                    color: Colors.grey.withOpacity(0.3),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextView(
                    text: "ABOUT",
                    size: 24.0,
                    letterSpacing: 1.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                  ),
                  Container(
                    width: 50.0,
                    height: 5.0,
                    margin: EdgeInsets.only(bottom: 40.0, top: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  TextView(
                    text: _filler,
                    size:  18.0,
                    letterSpacing: 0.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    align: TextAlign.start,
                    padding: EdgeInsets.symmetric(horizontal: _size.width/9),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _section3(){
    return Container(
      width: _size.width,
      padding: EdgeInsets.symmetric(vertical: 120.0,),
      color: Colors.grey.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextView.rich(
            align: TextAlign.center,
            padding: EdgeInsets.symmetric(vertical: 20.0,),
            textSpan: [
              TextView(
                text: "SUBSCRIBE",
                size: 24.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                padding: EdgeInsets.only(top: 5.0,),
              ),
              TextView(
                text: "\nSign up for our newsletter",
                size: 18.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ],
          ),
          SizedBox(
            width: _size.width/3,
            child: TextField(
              autocorrect: true,
              autofocus: false,
              enableSuggestions: true,
              maxLines: 1,
              textAlignVertical: TextAlignVertical.top,
              textCapitalization: TextCapitalization.none,
              toolbarOptions: ToolbarOptions(selectAll: true, copy: true, paste: true, cut: true),
              style: TextStyle(color: Colors.black, fontSize: 17.5, fontWeight: FontWeight.w400,),
              cursorColor: Colors.black,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white70,
                contentPadding: EdgeInsets.all(10.0,),
                hintText: "Your Email",
                hintStyle: TextStyle(color: Colors.black45, fontSize: 17.5, fontWeight: FontWeight.w400,),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          ButtonView(
            onPressed: (){},
            margin: EdgeInsets.symmetric(vertical: 20.0,),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: TextView(
              text: "SUBMIT",
              size: 17.0,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            border: Border.all(color: Colors.black54, width:2.0),
            borderRadius: 0.0,
          ),
        ],
      ),
    );
  }
}
