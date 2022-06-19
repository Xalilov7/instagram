import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/_mock_data/mock.dart';
import 'package:marquee/marquee.dart';

import '../models/reel.dart';

class ReelDetail extends StatelessWidget {
  const ReelDetail({Key? key, required this.reel}) : super(key: key);
  final Reel reel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          dense: true,
          minLeadingWidth:0,
          horizontalTitleGap: 12,
          title: Text("${reel.posetedBy.username} *  -- Follow", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
        leading: CircleAvatar(
          radius: 14,
          backgroundImage: NetworkImage(reel.posetedBy.profileUrl),
        ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ExpandableText(
             reel.caption,
            style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.5
                ),
               expandText: "more" , collapseText: "less", expandOnTextTap: true, collapseOnTextTap: true, maxLines: 1, linkColor: Colors.grey,),
        ),
        ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 5,
          title: reel.isTagged ?  Row(
            children: [
              Container(
                height: 20,
                width: 125,
                child: Marquee(
                  velocity: 10,
                  text: "${reel.audioTitle}  *  " , scrollAxis: Axis.horizontal,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 15),
              child:Icon(Icons.person_outline_outlined, size: 16, color: Colors.white, ),
              ),
              Expanded(
                child: Text("${reel.taggedUser.username}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),),
              )
              
            ],
          )  :   Text(reel.audioTitle,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500 ),
          ),
          leading: Icon(Icons.graphic_eq_outlined, size: 16, color: Colors.white,),
        )
      ],
    );
  }
}
