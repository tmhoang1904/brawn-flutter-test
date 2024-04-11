// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_utc', fromJson: PostModel.parseDate)
  DateTime get createdDate => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'selftext')
  String? get content => throw _privateConstructorUsedError;
  PreviewModel? get preview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'created_utc', fromJson: PostModel.parseDate)
      DateTime createdDate,
      String? author,
      String? url,
      @JsonKey(name: 'selftext') String? content,
      PreviewModel? preview});

  $PreviewModelCopyWith<$Res>? get preview;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdDate = null,
    Object? author = freezed,
    Object? url = freezed,
    Object? content = freezed,
    Object? preview = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as PreviewModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreviewModelCopyWith<$Res>? get preview {
    if (_value.preview == null) {
      return null;
    }

    return $PreviewModelCopyWith<$Res>(_value.preview!, (value) {
      return _then(_value.copyWith(preview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'created_utc', fromJson: PostModel.parseDate)
      DateTime createdDate,
      String? author,
      String? url,
      @JsonKey(name: 'selftext') String? content,
      PreviewModel? preview});

  @override
  $PreviewModelCopyWith<$Res>? get preview;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdDate = null,
    Object? author = freezed,
    Object? url = freezed,
    Object? content = freezed,
    Object? preview = freezed,
  }) {
    return _then(_$DataImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as PreviewModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$DataImpl extends Data {
  const _$DataImpl(this.id,
      {required this.title,
      @JsonKey(name: 'created_utc', fromJson: PostModel.parseDate)
      required this.createdDate,
      this.author,
      this.url,
      @JsonKey(name: 'selftext') this.content,
      this.preview})
      : super._();

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'created_utc', fromJson: PostModel.parseDate)
  final DateTime createdDate;
  @override
  final String? author;
  @override
  final String? url;
  @override
  @JsonKey(name: 'selftext')
  final String? content;
  @override
  final PreviewModel? preview;

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title, createdDate: $createdDate, author: $author, url: $url, content: $content, preview: $preview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.preview, preview) || other.preview == preview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, createdDate, author, url, content, preview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class Data extends PostModel {
  const factory Data(final String id,
      {required final String title,
      @JsonKey(name: 'created_utc', fromJson: PostModel.parseDate)
      required final DateTime createdDate,
      final String? author,
      final String? url,
      @JsonKey(name: 'selftext') final String? content,
      final PreviewModel? preview}) = _$DataImpl;
  const Data._() : super._();

  factory Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'created_utc', fromJson: PostModel.parseDate)
  DateTime get createdDate;
  @override
  String? get author;
  @override
  String? get url;
  @override
  @JsonKey(name: 'selftext')
  String? get content;
  @override
  PreviewModel? get preview;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
