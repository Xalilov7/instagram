import 'package:flutter/material.dart';
import 'package:instagram_clone/_mock_data/mock.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/widget/custom_explore_app_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/widget/explore_tile.dart';
import 'package:staggered_grid_view_flutter/widgets/sliver.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import '../widget/category_bar.dart';
import '../widget/persistent_header.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              CustomExploreAppBar(),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: PersistentHeader(child: CategoryBar(
                    categories: [
                      "Ronaldo",
                      "Real Madrid",
                      "MMA",
                      "UFC",
                      "Khabib Nurmugammedov"
                    ],
                  ))),
              SliverStaggeredGrid.countBuilder(
                mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  crossAxisCount: 3,
                  staggeredTileBuilder: (int index){
                  int modedIndex = index % 20;
                 int cXCellCount = modedIndex == 11 ? 2 : 1;

                  double mXCellCount = 1;

                  if(modedIndex == 2 || modedIndex == 11 ){
                    mXCellCount = 2;
                  }
                    return StaggeredTile.count(cXCellCount, mXCellCount);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ExploreTile(
                      post: Post(
                          "$index",
                          currentUser,
                          "http://picsum.photos/id/${1047 + index}/400/${index % 20 == 2  ? 805 : 400}",
                          "title",
                          "location",
                          "caption",
                          "postedTimeAgo",
                          "totalLikes",
                          "totalComments",
                          true,
                          true),
                    );
                  },
                  itemCount: 20
              )
            ],
          ),
        ),
    );
  }
}
