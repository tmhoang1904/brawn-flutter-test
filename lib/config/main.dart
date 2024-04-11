import 'dart:async';

import 'package:brawn_app_test/config/app_config.dart';

ENV _mapBuildEnvToENV(String buildEnv) {
  // For demo mapping env only
  if (buildEnv == 'production') return ENV.production;
  return ENV.dev;
}

Future<AppConfig> configureApp() async {
  final config = AppConfig.createConfig(_mapBuildEnvToENV('dev'));

  return config;
}
