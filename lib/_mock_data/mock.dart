
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/models/reel.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/models/user.dart';

User currentUser = User("id", "User", "https://images.vfl.ru/ii/1568372743/fb59b7b7/27849561.jpg");


final List<Story> stories = [
  Story("id", currentUser),
  Story("id", currentUser),
  Story("id", currentUser),
  Story("id", currentUser),
  Story("id", currentUser),
  Story("id", currentUser),
];


final List<Post> posts =[
  Post("id", currentUser, "https://images.vfl.ru/ii/1568372743/fb59b7b7/27849561.jpg", "title", "New Namangan", "caption", "a few secounds ago", "123", "32", false, false),
  Post("id2", currentUser, "https://images.vfl.ru/ii/1568372743/fb59b7b7/27849561.jpg", "title", "New Toshkent", "caption", "a few secounds ago", "20", "32", true, true),
  Post("id3", currentUser, "https://images.vfl.ru/ii/1568372743/fb59b7b7/27849561.jpg", "title", "New Andijon", "caption", "a few secounds ago", "102", "32", true, true),
  Post("id4", currentUser, "https://images.vfl.ru/ii/1568372743/fb59b7b7/27849561.jpg", "title", "New Fargona", "caption", "a few secounds ago", "203", "32", true, true),
  Post("id5", currentUser, "https://images.vfl.ru/ii/1568372743/fb59b7b7/27849561.jpg", "title", "New Qoqon", "caption", "a few secounds ago", "125", "32", true, true),
];


final List<Reel> reels = [
  Reel(currentUser, "https://icdn.football-espana.net/wp-content/uploads/2022/01/Cristiano-Ronaldo.jpeg", "title4", "what do you guy\'s think of my home work setup ? ", "1.2M", "651", true, true, currentUser),
  Reel(currentUser, "https://icdn.football-espana.net/wp-content/uploads/2022/01/Cristiano-Ronaldo.jpeg", "title4", "what do you guy\'s think of my home work setup ? ", "1.2M", "651", true, true, currentUser),
  Reel(currentUser, "https://icdn.football-espana.net/wp-content/uploads/2022/01/Cristiano-Ronaldo.jpeg", "title4", "what do you guy\'s think of my home work setup ? ", "1.2M", "651", true, true, currentUser),
  Reel(currentUser, "https://icdn.football-espana.net/wp-content/uploads/2022/01/Cristiano-Ronaldo.jpeg", "title4", "what do you guy\'s think of my home work setup ? ", "1.2M", "651", true, true, currentUser),

];