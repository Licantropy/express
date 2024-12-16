// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpParams {
  String get code => throw _privateConstructorUsedError;
  set code(String value) => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  set phone(String value) => throw _privateConstructorUsedError;

  /// Create a copy of OtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpParamsCopyWith<OtpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpParamsCopyWith<$Res> {
  factory $OtpParamsCopyWith(OtpParams value, $Res Function(OtpParams) then) =
      _$OtpParamsCopyWithImpl<$Res, OtpParams>;
  @useResult
  $Res call({String code, String phone});
}

/// @nodoc
class _$OtpParamsCopyWithImpl<$Res, $Val extends OtpParams>
    implements $OtpParamsCopyWith<$Res> {
  _$OtpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpParamsImplCopyWith<$Res>
    implements $OtpParamsCopyWith<$Res> {
  factory _$$OtpParamsImplCopyWith(
          _$OtpParamsImpl value, $Res Function(_$OtpParamsImpl) then) =
      __$$OtpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String phone});
}

/// @nodoc
class __$$OtpParamsImplCopyWithImpl<$Res>
    extends _$OtpParamsCopyWithImpl<$Res, _$OtpParamsImpl>
    implements _$$OtpParamsImplCopyWith<$Res> {
  __$$OtpParamsImplCopyWithImpl(
      _$OtpParamsImpl _value, $Res Function(_$OtpParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? phone = null,
  }) {
    return _then(_$OtpParamsImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpParamsImpl extends _OtpParams {
  _$OtpParamsImpl({required this.code, required this.phone}) : super._();

  @override
  String code;
  @override
  String phone;

  @override
  String toString() {
    return 'OtpParams(code: $code, phone: $phone)';
  }

  /// Create a copy of OtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpParamsImplCopyWith<_$OtpParamsImpl> get copyWith =>
      __$$OtpParamsImplCopyWithImpl<_$OtpParamsImpl>(this, _$identity);
}

abstract class _OtpParams extends OtpParams {
  factory _OtpParams({required String code, required String phone}) =
      _$OtpParamsImpl;
  _OtpParams._() : super._();

  @override
  String get code;
  set code(String value);
  @override
  String get phone;
  set phone(String value);

  /// Create a copy of OtpParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpParamsImplCopyWith<_$OtpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
