import 'package:brawn_app_test/domain/posts/posts_repository.dart';
import 'package:brawn_app_test/models/posts/response/post.model.dart';

class PostsRepositoryTestImpl implements PostsRepository {
  const PostsRepositoryTestImpl({
    required this.postsDatasource,
  });
  final Map<String, dynamic> postsDatasource;

  @override
  Future<List<PostModel>> getPosts() async {
    final rootData = postsDatasource['data'] as Map<String, dynamic>?;
    final listData = rootData?['children'] as List? ?? [];
    final results = _parsePostList(listData);
    return results;
  }

  List<PostModel> _parsePostList(List<dynamic> listData) {
    final results = <PostModel>[];
    for (final element in listData) {
      final map = element as Map<String, dynamic>;
      if (map['data'] is Map<String, dynamic>) {
        results.add(PostModel.fromJson(map['data'] as Map<String, dynamic>));
      }
    }
    return results;
  }
}
