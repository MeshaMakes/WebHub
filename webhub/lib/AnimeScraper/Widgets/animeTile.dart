import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sad_lib/CustomWidgets.dart';

class AnimeTile extends StatelessWidget {
  const AnimeTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          ImageView.network(imageKey: "https://cdn.mos.cms.futurecdn.net/eVyt9jnUrLBSvSwW6pScj9-320-80.jpg", aspectRatio: 2.5,),
          Column(
            children: [
              TextView(
                text: "Anime Name",
                color: Colors.white,
                size: 15.0,
                fontWeight: FontWeight.w500,
                padding: EdgeInsets.only(bottom: 5.0),
              ),
              TextView(
                text: "Released: date",
                color: Colors.white,
                size: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
