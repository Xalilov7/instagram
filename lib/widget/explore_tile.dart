import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({Key? key, required this.post}) : super(key: key);
 final Post post;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Image(image: NetworkImage(post.imageUrl)),
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(
              post.id == 0  || post.id == 10 ? Icons.collections_rounded  : null,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
