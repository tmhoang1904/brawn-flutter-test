import 'package:brawn_app_test/config/app_config.dart';
import 'package:brawn_app_test/data/gateway/api.gateway.dart';
import 'package:brawn_app_test/data/gateway/resource/posts/posts_resource.dart';
import 'package:brawn_app_test/domain/posts/posts_repository.dart';
import 'package:brawn_app_test/models/posts/response/post.model.dart';
import 'package:flutter/foundation.dart';

class PostsRepositoryImpl implements PostsRepository {
  const PostsRepositoryImpl();

  @override
  Future<List<PostModel>> getPosts() async {
    final apiGateway = ApiGateway<Map<String, dynamic>>(
      AppConfig.value,
      resource: const PostsResource(),
      method: HTTPMethod.get,
    );

    final response = await apiGateway.execute();
    final rootData = response.data?['data'] as Map<String, dynamic>?;
    final listData = rootData?['children'] as List? ?? [];
    final results = await compute(
      _parsePostList,
      listData,
    );
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
