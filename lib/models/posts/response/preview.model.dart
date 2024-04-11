import 'package:freezed_annotation/freezed_annotation.dart';

part 'preview.model.freezed.dart';
part 'preview.model.g.dart';

@freezed
class ImageSourceModel with _$ImageSourceModel {
  @JsonSerializable()
  const factory ImageSourceModel({
    @JsonKey(
      name: 'source',
      fromJson: ImageSourceModel.parseSource,
    )
    required String fullResolutionSource,
  }) = ImageSourceData;

  factory ImageSourceModel.fromJson(Map<String, dynamic> json) =>
      _$ImageSourceModelFromJson(json);

  const ImageSourceModel._();

  static String parseSource(Map<String, dynamic> json) {
    return json['url'] as String;
  }
}

@freezed
class PreviewModel with _$PreviewModel {
  @JsonSerializable()
  const factory PreviewModel({
    required List<ImageSourceModel> images,
  }) = Data;
  const PreviewModel._();

  factory PreviewModel.fromJson(Map<String, dynamic> json) =>
      _$PreviewModelFromJson(json);
}
