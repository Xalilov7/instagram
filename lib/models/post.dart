import 'package:instagram_clone/models/story.dart';

import 'user.dart';

class Post {
  final String id;
  final User posetedBy;
  final String imageUrl;
  final String title;
  final String location;
  final String caption;
  final String postedTimeAgo;
  final String totalLikes;
  final String totalComments;
  final bool isLiked;
  final bool isBookmarke;
  Post(this.id, this.posetedBy, this.imageUrl, this.title, this.location, this.caption, this.postedTimeAgo, this.totalLikes, this.totalComments, this.isLiked,  this.isBookmarke);
}