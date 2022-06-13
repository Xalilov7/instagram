import 'package:flutter/material.dart';
class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          ListTile(
            title: Text("UserName", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Location", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black) ),
            leading: CircleAvatar(
              backgroundColor: Colors.black,
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Image.network(
            "https://images.vfl.ru/ii/1568372743/fb59b7b7/27849561.jpg",
            height: 320,
            width: double.infinity,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
