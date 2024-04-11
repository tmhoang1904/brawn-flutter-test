import 'package:brawn_app_test/data/gateway/resource/resource.dart';

class PostsResource extends Resource {
  const PostsResource()
      : super(
          ApiType.public,
          '$apiController/FlutterDev.json',
        );
}
