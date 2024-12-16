// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationDto _$RegistrationDtoFromJson(Map<String, dynamic> json) {
  return _RegistrationDto.fromJson(json);
}

/// @nodoc
mixin _$RegistrationDto {
  String get message => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;
  TokenPairDto get tokenPair => throw _privateConstructorUsedError;

  /// Serializes this RegistrationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationDtoCopyWith<RegistrationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationDtoCopyWith<$Res> {
  factory $RegistrationDtoCopyWith(
          RegistrationDto value, $Res Function(RegistrationDto) then) =
      _$RegistrationDtoCopyWithImpl<$Res, RegistrationDto>;
  @useResult
  $Res call({String message, UserDto user, TokenPairDto tokenPair});

  $UserDtoCopyWith<$Res> get user;
  $TokenPairDtoCopyWith<$Res> get tokenPair;
}

/// @nodoc
class _$RegistrationDtoCopyWithImpl<$Res, $Val extends RegistrationDto>
    implements $RegistrationDtoCopyWith<$Res> {
  _$RegistrationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
    Object? tokenPair = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      tokenPair: null == tokenPair
          ? _value.tokenPair
          : tokenPair // ignore: cast_nullable_to_non_nullable
              as TokenPairDto,
    ) as $Val);
  }

  /// Create a copy of RegistrationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of RegistrationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenPairDtoCopyWith<$Res> get tokenPair {
    return $TokenPairDtoCopyWith<$Res>(_value.tokenPair, (value) {
      return _then(_value.copyWith(tokenPair: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationDtoImplCopyWith<$Res>
    implements $RegistrationDtoCopyWith<$Res> {
  factory _$$RegistrationDtoImplCopyWith(_$RegistrationDtoImpl value,
          $Res Function(_$RegistrationDtoImpl) then) =
      __$$RegistrationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, UserDto user, TokenPairDto tokenPair});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $TokenPairDtoCopyWith<$Res> get tokenPair;
}

/// @nodoc
class __$$RegistrationDtoImplCopyWithImpl<$Res>
    extends _$RegistrationDtoCopyWithImpl<$Res, _$RegistrationDtoImpl>
    implements _$$RegistrationDtoImplCopyWith<$Res> {
  __$$RegistrationDtoImplCopyWithImpl(
      _$RegistrationDtoImpl _value, $Res Function(_$RegistrationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
    Object? tokenPair = null,
  }) {
    return _then(_$RegistrationDtoImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      tokenPair: null == tokenPair
          ? _value.tokenPair
          : tokenPair // ignore: cast_nullable_to_non_nullable
              as TokenPairDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationDtoImpl implements _RegistrationDto {
  const _$RegistrationDtoImpl(
      {required this.message, required this.user, required this.tokenPair});

  factory _$RegistrationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationDtoImplFromJson(json);

  @override
  final String message;
  @override
  final UserDto user;
  @override
  final TokenPairDto tokenPair;

  @override
  String toString() {
    return 'RegistrationDto(message: $message, user: $user, tokenPair: $tokenPair)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationDtoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tokenPair, tokenPair) ||
                other.tokenPair == tokenPair));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, user, tokenPair);

  /// Create a copy of RegistrationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationDtoImplCopyWith<_$RegistrationDtoImpl> get copyWith =>
      __$$RegistrationDtoImplCopyWithImpl<_$RegistrationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationDtoImplToJson(
      this,
    );
  }
}

abstract class _RegistrationDto implements RegistrationDto {
  const factory _RegistrationDto(
      {required final String message,
      required final UserDto user,
      required final TokenPairDto tokenPair}) = _$RegistrationDtoImpl;

  factory _RegistrationDto.fromJson(Map<String, dynamic> json) =
      _$RegistrationDtoImpl.fromJson;

  @override
  String get message;
  @override
  UserDto get user;
  @override
  TokenPairDto get tokenPair;

  /// Create a copy of RegistrationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationDtoImplCopyWith<_$RegistrationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
