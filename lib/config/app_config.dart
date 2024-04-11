enum ENV { dev, production }

class AppConfig {
  AppConfig._(this.env, this.baseUrl);

  factory AppConfig.createConfig(ENV env) {
    if (AppConfig._created) return AppConfig.value;
    AppConfig config;
    switch (env) {
      case ENV.dev:
        config = AppConfig._(
          env,
          'https://www.reddit.com',
        );
      case ENV.production:
        config = AppConfig._(
          env,
          'https://www.reddit.com',
        );
    }
    AppConfig.value = config;
    AppConfig._created = true;

    return AppConfig.value;
  }

  static late final AppConfig value;
  static bool _created = false;
  ENV env;
  final String baseUrl;
}
