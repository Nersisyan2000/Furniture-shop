// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'furniture_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FurnitureCategoryModel _$FurnitureCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _FurnitureCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$FurnitureCategoryModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get availableQuantity => throw _privateConstructorUsedError;
  String? get pictureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FurnitureCategoryModelCopyWith<FurnitureCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FurnitureCategoryModelCopyWith<$Res> {
  factory $FurnitureCategoryModelCopyWith(FurnitureCategoryModel value,
          $Res Function(FurnitureCategoryModel) then) =
      _$FurnitureCategoryModelCopyWithImpl<$Res, FurnitureCategoryModel>;
  @useResult
  $Res call(
      {String? id, String? name, int? availableQuantity, String? pictureUrl});
}

/// @nodoc
class _$FurnitureCategoryModelCopyWithImpl<$Res,
        $Val extends FurnitureCategoryModel>
    implements $FurnitureCategoryModelCopyWith<$Res> {
  _$FurnitureCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? availableQuantity = freezed,
    Object? pictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FurnitureCategoryModelImplCopyWith<$Res>
    implements $FurnitureCategoryModelCopyWith<$Res> {
  factory _$$FurnitureCategoryModelImplCopyWith(
          _$FurnitureCategoryModelImpl value,
          $Res Function(_$FurnitureCategoryModelImpl) then) =
      __$$FurnitureCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? name, int? availableQuantity, String? pictureUrl});
}

/// @nodoc
class __$$FurnitureCategoryModelImplCopyWithImpl<$Res>
    extends _$FurnitureCategoryModelCopyWithImpl<$Res,
        _$FurnitureCategoryModelImpl>
    implements _$$FurnitureCategoryModelImplCopyWith<$Res> {
  __$$FurnitureCategoryModelImplCopyWithImpl(
      _$FurnitureCategoryModelImpl _value,
      $Res Function(_$FurnitureCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? availableQuantity = freezed,
    Object? pictureUrl = freezed,
  }) {
    return _then(_$FurnitureCategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FurnitureCategoryModelImpl implements _FurnitureCategoryModel {
  const _$FurnitureCategoryModelImpl(
      {this.id, this.name, this.availableQuantity, this.pictureUrl});

  factory _$FurnitureCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FurnitureCategoryModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? availableQuantity;
  @override
  final String? pictureUrl;

  @override
  String toString() {
    return 'FurnitureCategoryModel(id: $id, name: $name, availableQuantity: $availableQuantity, pictureUrl: $pictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FurnitureCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, availableQuantity, pictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FurnitureCategoryModelImplCopyWith<_$FurnitureCategoryModelImpl>
      get copyWith => __$$FurnitureCategoryModelImplCopyWithImpl<
          _$FurnitureCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FurnitureCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _FurnitureCategoryModel implements FurnitureCategoryModel {
  const factory _FurnitureCategoryModel(
      {final String? id,
      final String? name,
      final int? availableQuantity,
      final String? pictureUrl}) = _$FurnitureCategoryModelImpl;

  factory _FurnitureCategoryModel.fromJson(Map<String, dynamic> json) =
      _$FurnitureCategoryModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get availableQuantity;
  @override
  String? get pictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$FurnitureCategoryModelImplCopyWith<_$FurnitureCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
