import 'package:flutter/material.dart';

class CustomShopShowAppBar extends StatelessWidget {
  const CustomShopShowAppBar({Key? key, required this.showSearchBar}) : super(key: key);
  final bool showSearchBar;
  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title:
      showSearchBar ? Container(
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: TextField(
          cursorColor: Colors.grey.shade500,
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.5,
              color: Colors.grey.shade500
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 22,
              color: Colors.grey.shade500,
            )
          ),
        ),
      ) :
      Text("Shop",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 26
      ),
      ),
      actions: [
        IconButton(onPressed: () => {}, icon: Icon(Icons.class_outlined, color: Colors.black,)),
        IconButton(onPressed: () => {}, icon: Icon(Icons.dehaze_outlined, color: Colors.black,)),
      ],
    );
  }
}
