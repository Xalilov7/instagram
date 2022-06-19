import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widget/profile_label_count_widget.dart';

import 'add_story_card_profile.dart';


class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  _ProfileHeaderState createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader>{
  bool _isExpensionTileOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 12, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AddStoryCardProfile(),
                 SizedBox(width: 8),
                 ProfileLabelCount(count: "6", labelText: "Post"),
                ProfileLabelCount(count: "1.5M", labelText: "Followers"),
               ProfileLabelCount(count: "402", labelText: "Following")
              ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Xabibullo Xalilov", style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
              ),
              Text(
                  "My friend is the_aziz5"
              ),
              Text("Flutter developer and Web developer"),
            ],
          ),
        ),
          SizedBox(height: 12),
          Padding(padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Expanded(child: Container(
               alignment: Alignment.center,
               padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(5)
              ),
               child: Text(
                 "Edit Profile",
                 style: TextStyle(
                   fontSize: 14,
                   fontWeight: FontWeight.bold
                 ),
               ),
             ),
             ),
              SizedBox(width: 5),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.shade500)
                ),
                child: Icon(Icons.expand_more_outlined),
              )
            ],
          ),
          ),
        ExpansionTile(
            onExpansionChanged: (_isopen) => {
              setState((){
                _isExpensionTileOpen = _isopen;
              })
            },
            title: Text("Story Highlights", style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
            ),
        subtitle: _isExpensionTileOpen ?  Text("Keep your favorite stories on your profile",
        style: TextStyle(
          color: Colors.black,
          fontSize: 13.5,
          fontWeight: FontWeight.w500
        ),
        ) : null,
           trailing: Icon(
             _isExpensionTileOpen ? Icons.expand_less_outlined
                 : Icons.expand_more_outlined,
             color: Colors.grey.shade500,
           ),
        children: [
          Container(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
             return index !=  0 ?  Container(
             width: 80,
               alignment: Alignment.topCenter,
               padding: EdgeInsets.symmetric(horizontal: 5),
               child: CircleAvatar(
                 radius: 30,
                 backgroundColor: Colors.grey.shade300,
               ),
             ): Container(
               width: 80,
               child: Column(
                 children: [
                   Container(
                      width: 60,
                     height: 60,
                     decoration: BoxDecoration(
                       border: Border.all(
                         color: Colors.grey.shade400,
                       ),
                       borderRadius: BorderRadius.circular(30)
                     ),
                     child: Icon(
                       Icons.add,
                       size: 30,
                     ),
                   ),
                   SizedBox(height: 4),
                   Text("New", style: TextStyle(
                     fontSize: 11,
                     fontWeight: FontWeight.w500
                   ),)
                 ],
               ),
             ) ;
            }),
          )
        ],
        ),
      Divider(height: 1, color: _isExpensionTileOpen? Colors.transparent : Colors.grey.shade400,)
      ],
    );
  }
}
