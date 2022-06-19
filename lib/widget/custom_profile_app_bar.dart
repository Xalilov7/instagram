import 'package:flutter/material.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      pinned: true,
      brightness: Brightness.light,
      elevation: 0,
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(Icons.https_outlined, color: Colors.black, size: 20,),
          ),
          Text("Xabibullo_Xalilov", style: TextStyle(color: Colors.black),),
        ],
      ),
      actions: [
        IconButton(onPressed: ()=> {}, icon: Icon(Icons.add_box_outlined, color: Colors.black,)),
        IconButton(onPressed: () => {}, icon: Icon(Icons.dehaze_outlined, color: Colors.black,))
      ],
    );
  }
}
