import 'package:brawn_app_test/domain/posts/usecases/get_posts.usecase.dart';
import 'package:test/test.dart';

import '../data/posts/mock_post_datasource.test.dart';
import '../data/posts/posts_repository.test.dart';

void main() {
  group('Test Get Posts Usecase', () {
    test(
        'Given valid post datasrouce, getPostsUseCase should return results without any errors',
        () async {
      final validDatasource = await MockPostsDatasource.shared.getValidPosts();
      final postRepository =
          PostsRepositoryTestImpl(postsDatasource: validDatasource);
      final usecase = GetPostsUsecase(postRepository);
      try {
        final results = await usecase.execute();
        expect(results.isNotEmpty, true);
      } catch (error) {
        fail(
            'getPostsUseCase should not throw error when data is valid: $error');
      }
    });
  });
}
