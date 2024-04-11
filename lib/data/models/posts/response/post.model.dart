import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.model.freezed.dart';
part 'post.model.g.dart';

@freezed
class PostModel with _$PostModel {
  @JsonSerializable()
  const factory PostModel(
    String id, {
    required String title,
  }) = Data;
  const PostModel._();

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
