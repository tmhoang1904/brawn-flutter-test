import 'package:brawn_app_test/models/posts/response/preview.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.model.freezed.dart';
part 'post.model.g.dart';

@freezed
class PostModel with _$PostModel {
  @JsonSerializable()
  const factory PostModel(
    String id, {
    required String title,
    @JsonKey(
      name: 'created_utc',
      fromJson: PostModel.parseDate,
    )
    required DateTime createdDate,
    String? author,
    String? url,
    @JsonKey(
      name: 'selftext',
    )
    String? content,
    PreviewModel? preview,
  }) = Data;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  const PostModel._();

  static DateTime parseDate(double createdUTC) {
    return DateTime.fromMillisecondsSinceEpoch(createdUTC.toInt() * 1000);
  }

  String? get previewURL {
    return preview?.images.firstOrNull?.fullResolutionSource;
  }
}
