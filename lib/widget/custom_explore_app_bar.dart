import 'package:flutter/material.dart';

class CustomExploreAppBar extends StatelessWidget {
  const CustomExploreAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliverAppBar(
        floating: true,
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.grey,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey
          ),
          child: Text("hello"),
        ),
      ),
    );
  }
}
