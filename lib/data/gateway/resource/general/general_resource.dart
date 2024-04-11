import 'package:brawn_app_test/data/gateway/resource/resource.dart';

class AppConfigurationResource extends Resource {
  const AppConfigurationResource(String? query)
      : super(
          ApiType.public,
          '$apiController/app-configuration${query != null ? "?$query" : ""}',
        );
}
