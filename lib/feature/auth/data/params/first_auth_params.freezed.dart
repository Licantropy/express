// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_auth_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirstAuthParams {
  String get phone => throw _privateConstructorUsedError;
  set phone(String value) => throw _privateConstructorUsedError;

  /// Create a copy of FirstAuthParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirstAuthParamsCopyWith<FirstAuthParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstAuthParamsCopyWith<$Res> {
  factory $FirstAuthParamsCopyWith(
          FirstAuthParams value, $Res Function(FirstAuthParams) then) =
      _$FirstAuthParamsCopyWithImpl<$Res, FirstAuthParams>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$FirstAuthParamsCopyWithImpl<$Res, $Val extends FirstAuthParams>
    implements $FirstAuthParamsCopyWith<$Res> {
  _$FirstAuthParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirstAuthParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirstAuthParamsImplCopyWith<$Res>
    implements $FirstAuthParamsCopyWith<$Res> {
  factory _$$FirstAuthParamsImplCopyWith(_$FirstAuthParamsImpl value,
          $Res Function(_$FirstAuthParamsImpl) then) =
      __$$FirstAuthParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$FirstAuthParamsImplCopyWithImpl<$Res>
    extends _$FirstAuthParamsCopyWithImpl<$Res, _$FirstAuthParamsImpl>
    implements _$$FirstAuthParamsImplCopyWith<$Res> {
  __$$FirstAuthParamsImplCopyWithImpl(
      _$FirstAuthParamsImpl _value, $Res Function(_$FirstAuthParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirstAuthParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$FirstAuthParamsImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstAuthParamsImpl extends _FirstAuthParams {
  _$FirstAuthParamsImpl({required this.phone}) : super._();

  @override
  String phone;

  @override
  String toString() {
    return 'FirstAuthParams(phone: $phone)';
  }

  /// Create a copy of FirstAuthParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstAuthParamsImplCopyWith<_$FirstAuthParamsImpl> get copyWith =>
      __$$FirstAuthParamsImplCopyWithImpl<_$FirstAuthParamsImpl>(
          this, _$identity);
}

abstract class _FirstAuthParams extends FirstAuthParams {
  factory _FirstAuthParams({required String phone}) = _$FirstAuthParamsImpl;
  _FirstAuthParams._() : super._();

  @override
  String get phone;
  set phone(String value);

  /// Create a copy of FirstAuthParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstAuthParamsImplCopyWith<_$FirstAuthParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
