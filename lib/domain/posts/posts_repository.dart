import 'package:brawn_app_test/models/posts/response/post.model.dart';

abstract class PostsRepository {
  Future<List<PostModel>> getPosts();
}
