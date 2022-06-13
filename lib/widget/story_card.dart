import 'package:flutter/material.dart';

import '../models/story.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key, required this.story}) : super(key: key);
  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.yellow, Colors.orange],),
            border: Border.all(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(50),
          ),
          child: CircleAvatar(backgroundColor: Colors.white, radius: 33,
            child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 31,
              backgroundImage: NetworkImage(story.posedBy.profileUrl),
          ),),
        ),
        Spacer(),
        Text(story.posedBy.username,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),)
      ],
    );
  }
}
