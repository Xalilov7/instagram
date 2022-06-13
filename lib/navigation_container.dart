import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/explore_page.dart';
import 'package:instagram_clone/pages/home_page.dart';
import 'package:instagram_clone/pages/profile_page.dart';
import 'package:instagram_clone/pages/reels_page.dart';
import 'package:instagram_clone/pages/shop_page.dart';
import 'package:instagram_clone/widget/customer_bottom_nav_bar.dart';
class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  _NavigationContainerState createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectPageIndex = 0;

  static const List<Widget> _appPage = [
    HomePage(),
    ExplorePage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage()
  ];
  void _onIconTapped(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPage[_selectPageIndex],
      ),
      bottomNavigationBar: CustomerBottomNavgation(onIconTap: _onIconTapped,selectedPageIndex: _selectPageIndex,),
    );
  }
}
