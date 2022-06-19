import 'package:flutter/material.dart';
import 'package:instagram_clone/widget/persistent_header.dart';
import 'package:instagram_clone/widget/profile_header.dart';

import '../widget/custom_profile_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2,
        child: NestedScrollView(
      headerSliverBuilder: (context, index){
        return [
          CustomProfileAppBar(),
          SliverToBoxAdapter(
            child: Container(
                color: Colors.white,
                child: ProfileHeader()),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentHeader(
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_on, color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.assignment_ind_outlined, color: Colors.black,),
                )
              ],
            ),
          ),
          )
       ];
      },
          body: TabBarView(
            children: [
              CustomScrollView(
                physics: ClampingScrollPhysics(),
                slivers: [
                  SliverGrid(delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Container(
                        decoration: BoxDecoration(
                        image: DecorationImage(
        image: NetworkImage("https://picsum.photos/id/${ 1070 +  index}/500/500")
        )
                        ),
                        );
                      }   ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                   )
                  )],
              ),
              CustomScrollView(
                physics: ClampingScrollPhysics(),
                slivers: [
                  SliverGrid(delegate: SliverChildBuilderDelegate(
                          (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("https://picsum.photos/id/${ 1060 +  index}/500/500")
                              )
                          ),
                        );
                      }   ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  )
                  )],
              ),
            ],
          ),
    ),
    );
  }
}
