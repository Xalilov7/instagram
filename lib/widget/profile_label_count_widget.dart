import 'package:flutter/material.dart';

class ProfileLabelCount extends StatelessWidget {
  const ProfileLabelCount({Key? key, required this.count, required this.labelText}) : super(key: key);
  final String count;
   final String labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(count, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),),
          Text(labelText, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13.5
          ), ),
        ],
      ),
    );
  }
}
