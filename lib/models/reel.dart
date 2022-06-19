import 'package:instagram_clone/models/user.dart';

class Reel {
  final User posetedBy;
  final String imageUrl;
  final String audioTitle;
  final String caption;
  final String totalLikes;
  final String totalComments;
  final bool isLiked;
  final bool isTagged;
  final User taggedUser;
  Reel (
      this.posetedBy,
      this.imageUrl,
      this.audioTitle,
      this.caption,
      this.totalLikes,
      this.totalComments,
      this.isLiked,
      this.isTagged,
      this.taggedUser
      );
}