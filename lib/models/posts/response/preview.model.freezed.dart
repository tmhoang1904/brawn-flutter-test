// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageSourceModel _$ImageSourceModelFromJson(Map<String, dynamic> json) {
  return ImageSourceData.fromJson(json);
}

/// @nodoc
mixin _$ImageSourceModel {
  @JsonKey(name: 'source', fromJson: ImageSourceModel.parseSource)
  String get fullResolutionSource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageSourceModelCopyWith<ImageSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSourceModelCopyWith<$Res> {
  factory $ImageSourceModelCopyWith(
          ImageSourceModel value, $Res Function(ImageSourceModel) then) =
      _$ImageSourceModelCopyWithImpl<$Res, ImageSourceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'source', fromJson: ImageSourceModel.parseSource)
      String fullResolutionSource});
}

/// @nodoc
class _$ImageSourceModelCopyWithImpl<$Res, $Val extends ImageSourceModel>
    implements $ImageSourceModelCopyWith<$Res> {
  _$ImageSourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullResolutionSource = null,
  }) {
    return _then(_value.copyWith(
      fullResolutionSource: null == fullResolutionSource
          ? _value.fullResolutionSource
          : fullResolutionSource // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSourceDataImplCopyWith<$Res>
    implements $ImageSourceModelCopyWith<$Res> {
  factory _$$ImageSourceDataImplCopyWith(_$ImageSourceDataImpl value,
          $Res Function(_$ImageSourceDataImpl) then) =
      __$$ImageSourceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source', fromJson: ImageSourceModel.parseSource)
      String fullResolutionSource});
}

/// @nodoc
class __$$ImageSourceDataImplCopyWithImpl<$Res>
    extends _$ImageSourceModelCopyWithImpl<$Res, _$ImageSourceDataImpl>
    implements _$$ImageSourceDataImplCopyWith<$Res> {
  __$$ImageSourceDataImplCopyWithImpl(
      _$ImageSourceDataImpl _value, $Res Function(_$ImageSourceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullResolutionSource = null,
  }) {
    return _then(_$ImageSourceDataImpl(
      fullResolutionSource: null == fullResolutionSource
          ? _value.fullResolutionSource
          : fullResolutionSource // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ImageSourceDataImpl extends ImageSourceData {
  const _$ImageSourceDataImpl(
      {@JsonKey(name: 'source', fromJson: ImageSourceModel.parseSource)
      required this.fullResolutionSource})
      : super._();

  factory _$ImageSourceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSourceDataImplFromJson(json);

  @override
  @JsonKey(name: 'source', fromJson: ImageSourceModel.parseSource)
  final String fullResolutionSource;

  @override
  String toString() {
    return 'ImageSourceModel(fullResolutionSource: $fullResolutionSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSourceDataImpl &&
            (identical(other.fullResolutionSource, fullResolutionSource) ||
                other.fullResolutionSource == fullResolutionSource));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullResolutionSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSourceDataImplCopyWith<_$ImageSourceDataImpl> get copyWith =>
      __$$ImageSourceDataImplCopyWithImpl<_$ImageSourceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSourceDataImplToJson(
      this,
    );
  }
}

abstract class ImageSourceData extends ImageSourceModel {
  const factory ImageSourceData(
      {@JsonKey(name: 'source', fromJson: ImageSourceModel.parseSource)
      required final String fullResolutionSource}) = _$ImageSourceDataImpl;
  const ImageSourceData._() : super._();

  factory ImageSourceData.fromJson(Map<String, dynamic> json) =
      _$ImageSourceDataImpl.fromJson;

  @override
  @JsonKey(name: 'source', fromJson: ImageSourceModel.parseSource)
  String get fullResolutionSource;
  @override
  @JsonKey(ignore: true)
  _$$ImageSourceDataImplCopyWith<_$ImageSourceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreviewModel _$PreviewModelFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
mixin _$PreviewModel {
  List<ImageSourceModel> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewModelCopyWith<PreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewModelCopyWith<$Res> {
  factory $PreviewModelCopyWith(
          PreviewModel value, $Res Function(PreviewModel) then) =
      _$PreviewModelCopyWithImpl<$Res, PreviewModel>;
  @useResult
  $Res call({List<ImageSourceModel> images});
}

/// @nodoc
class _$PreviewModelCopyWithImpl<$Res, $Val extends PreviewModel>
    implements $PreviewModelCopyWith<$Res> {
  _$PreviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageSourceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $PreviewModelCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageSourceModel> images});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$PreviewModelCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$DataImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageSourceModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$DataImpl extends Data {
  const _$DataImpl({required final List<ImageSourceModel> images})
      : _images = images,
        super._();

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<ImageSourceModel> _images;
  @override
  List<ImageSourceModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'PreviewModel(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

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

abstract class Data extends PreviewModel {
  const factory Data({required final List<ImageSourceModel> images}) =
      _$DataImpl;
  const Data._() : super._();

  factory Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<ImageSourceModel> get images;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
