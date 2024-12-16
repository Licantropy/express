// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_pair_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TokenPairModel {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  /// Create a copy of TokenPairModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenPairModelCopyWith<TokenPairModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenPairModelCopyWith<$Res> {
  factory $TokenPairModelCopyWith(
          TokenPairModel value, $Res Function(TokenPairModel) then) =
      _$TokenPairModelCopyWithImpl<$Res, TokenPairModel>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$TokenPairModelCopyWithImpl<$Res, $Val extends TokenPairModel>
    implements $TokenPairModelCopyWith<$Res> {
  _$TokenPairModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenPairModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenPairModelImplCopyWith<$Res>
    implements $TokenPairModelCopyWith<$Res> {
  factory _$$TokenPairModelImplCopyWith(_$TokenPairModelImpl value,
          $Res Function(_$TokenPairModelImpl) then) =
      __$$TokenPairModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$TokenPairModelImplCopyWithImpl<$Res>
    extends _$TokenPairModelCopyWithImpl<$Res, _$TokenPairModelImpl>
    implements _$$TokenPairModelImplCopyWith<$Res> {
  __$$TokenPairModelImplCopyWithImpl(
      _$TokenPairModelImpl _value, $Res Function(_$TokenPairModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenPairModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$TokenPairModelImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenPairModelImpl extends _TokenPairModel {
  _$TokenPairModelImpl({required this.accessToken, required this.refreshToken})
      : super._();

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'TokenPairModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenPairModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of TokenPairModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenPairModelImplCopyWith<_$TokenPairModelImpl> get copyWith =>
      __$$TokenPairModelImplCopyWithImpl<_$TokenPairModelImpl>(
          this, _$identity);
}

abstract class _TokenPairModel extends TokenPairModel {
  factory _TokenPairModel(
      {required final String accessToken,
      required final String refreshToken}) = _$TokenPairModelImpl;
  _TokenPairModel._() : super._();

  @override
  String get accessToken;
  @override
  String get refreshToken;

  /// Create a copy of TokenPairModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenPairModelImplCopyWith<_$TokenPairModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
