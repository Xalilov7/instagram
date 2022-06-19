import 'package:flutter/material.dart';
import 'package:instagram_clone/_mock_data/mock.dart';

import '../models/reel.dart';

class ReelSideActionBar extends StatelessWidget {
  const ReelSideActionBar({Key? key, required this.reel}) : super(key: key);
 final double _iconSize = 28;
 final Reel reel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () => {}, icon: Icon( reel.isLiked ? Icons.favorite : Icons.favorite_outline, size: _iconSize, color: reel.isLiked? Colors.red : Colors.white,)),
        Text(reel.totalLikes, style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 10,
        ),),
        SizedBox(height: 10),
        IconButton(onPressed: () => {}, icon: Icon(Icons.chat_bubble_outline, size: _iconSize, color: Colors.white,)),
        Text(reel.totalComments, style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 10,
        )),
        SizedBox(height: 10),
        IconButton(onPressed: () => {}, icon: Icon(Icons.send_outlined, size: _iconSize, color: Colors.white, )),
        SizedBox(height: 10,),
        IconButton(onPressed: () => {}, icon: Icon(Icons.more_horiz, size: _iconSize, color: Colors.white,)),
        SizedBox(height: 10),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                fit: BoxFit.cover,
              image: NetworkImage(
                currentUser.profileUrl
              )
            )
          ),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
