import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';
class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.post}) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {

    final double _iconSize = 30;
    return Container(
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            dense: true,
            title: Text(post.posetedBy.username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            subtitle: Text(post.location, style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 12) ),
            leading: CircleAvatar(
              backgroundColor: Colors.black,
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Image.network(
             post.imageUrl,
            height: 320,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(onPressed: () => {}, icon: Icon(post.isLiked ?  Icons.favorite_outline : Icons.favorite , size: _iconSize, color: post.isLiked ?  Colors.black :  Colors.red,)),
                ),
                IconButton(onPressed: () => {}, icon: Icon(Icons.chat_bubble_outline, size: _iconSize,)),
                IconButton(onPressed: () => {}, icon: Icon(Icons.send_outlined, size: _iconSize,)),
                Spacer(),
                IconButton(onPressed: () => {}, icon: Icon(post.isBookmarke ?  Icons.bookmark_outline : Icons.bookmark, size: _iconSize,)),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( "${post.totalLikes}likes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                SizedBox(height: 5,),
                RichText(text:  TextSpan(text: post.posetedBy.username,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),  children: [
                    TextSpan(text: post.caption ,style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal))])),
                SizedBox(height: 10,),
                Text("View all ${post.totalLikes} comments"),
                Text(post.postedTimeAgo)
              ],
            ),
          )
        ],
      ),
    );
  }
}
