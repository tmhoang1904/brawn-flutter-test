enum ApiType { public, user }

const apiController = '/r/';

abstract class Resource {
  const Resource(this.apiType, this.path);

  final ApiType apiType;
  final String path;
}
