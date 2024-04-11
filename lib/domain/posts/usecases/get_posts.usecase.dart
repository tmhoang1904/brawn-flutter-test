import 'package:brawn_app_test/domain/posts/posts_repository.dart';
import 'package:brawn_app_test/domain/usecase.base.dart';
import 'package:brawn_app_test/models/posts/response/post.model.dart';

class GetPostsUsecase implements UseCase<List<PostModel>> {
  GetPostsUsecase(this._postsRepository);

  final PostsRepository _postsRepository;

  @override
  Future<List<PostModel>> execute() {
    return _postsRepository.getPosts();
  }
}
