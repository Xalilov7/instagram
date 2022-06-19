import 'package:flutter/material.dart';
import 'package:instagram_clone/widget/category_bar.dart';
import 'package:instagram_clone/widget/custom_shop_app_bar.dart';
import 'package:instagram_clone/widget/persistent_header.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
   }

class _ShopPageState extends State<ShopPage> {
  late ScrollController _scrollController;
  bool _showSearchBar = false;

   @override
   void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(() {
   setState(() {
     _showSearchBar = _scrollController.offset > 45;
   });
   });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            CustomShopShowAppBar(
              showSearchBar: _showSearchBar,
            ),
            SliverPersistentHeader(
              delegate: PersistentHeader(
                child: Padding(
                  padding: EdgeInsets.only(top: 4, left: 14, right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    child: TextField(
                      cursorColor: Colors.grey.shade500,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 22,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.5
                      ),
                    ),
                  ),
                ),
              ),
            ),
          SliverPersistentHeader(delegate: PersistentHeader(
            child: CategoryBar(
              categories: [
                "Shop",
                "Collections",
                "Editors Picks",
                "Videos",
              ],
            ),
          )),
            SliverGrid(delegate: SliverChildBuilderDelegate((_, int index) {
                return Container(
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: NetworkImage(
                           "https://picsum.photos/id/${ 1070 +  index}/500/500"
                       )
                     )
                   ),
                 );
            }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1
            ), )


          ],
        ),
      ),
    );
  }
}
