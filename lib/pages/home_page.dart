import 'package:flutter/material.dart';
import 'package:instagram_clone/_mock_data/mock.dart';
import 'package:instagram_clone/widget/add_story_card.dart';
import 'package:instagram_clone/widget/customer_home_app_bar.dart';
import '../widget/post_card.dart';
import '../widget/story_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(1),
                height: 100,
                child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                    itemCount: stories.length + 1,
                    itemBuilder: (context, index) {
                  return Container(
                    width: 90,
                  padding: EdgeInsets.symmetric(vertical: 5),
                    child: index ==0 ? AddStoryCard() : StoryCard(
                      story: stories[index -1],
                    ),
                  );
                }
                ),
              ),
              Divider(height: 1)
            ],
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return PostCard();
        }, childCount: 5
        )
    ),
      ],
    );
  }
}
