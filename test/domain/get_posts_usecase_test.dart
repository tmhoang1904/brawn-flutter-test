import 'package:brawn_app_test/domain/posts/usecases/get_posts.usecase.dart';
import 'package:test/test.dart';

import '../data/posts/mock_post_datasource.test.dart';
import '../data/posts/posts_repository.test.dart';

void main() {
  group('Test Get Posts Usecase', () {
    test('''
Given valid post datasrouce, getPostsUseCase should return results without any errors''',
        () async {
      final validDatasource = await MockPostsDatasource.shared.getValidPosts();
      final postRepository =
          PostsRepositoryTestImpl(postsDatasource: validDatasource);
      final usecase = GetPostsUsecase(postRepository);
      final results = await usecase.execute();
      expect(results.isNotEmpty, true);
    });

    test('Given invalid post datasrouce, getPostsUseCase should throw error',
        () async {
      final datasource = await MockPostsDatasource.shared.getInvalidPosts();
      final postRepository =
          PostsRepositoryTestImpl(postsDatasource: datasource);
      final usecase = GetPostsUsecase(postRepository);
      try {
        await usecase.execute();
        fail('getPostsUseCase should not be success');
      } catch (error) {
        // Ignore
      }
    });
  });
}
