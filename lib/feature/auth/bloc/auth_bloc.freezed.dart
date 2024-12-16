// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) loginRequested,
    required TResult Function(RegistrationParams params) registerRequested,
    required TResult Function(String phone) firstAuth,
    required TResult Function(OtpParams params) checkOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? loginRequested,
    TResult? Function(RegistrationParams params)? registerRequested,
    TResult? Function(String phone)? firstAuth,
    TResult? Function(OtpParams params)? checkOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? loginRequested,
    TResult Function(RegistrationParams params)? registerRequested,
    TResult Function(String phone)? firstAuth,
    TResult Function(OtpParams params)? checkOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(FirstAuthRequested value) firstAuth,
    required TResult Function(CheckOtpRequested value) checkOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(FirstAuthRequested value)? firstAuth,
    TResult? Function(CheckOtpRequested value)? checkOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(FirstAuthRequested value)? firstAuth,
    TResult Function(CheckOtpRequested value)? checkOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginRequestedImplCopyWith<$Res> {
  factory _$$LoginRequestedImplCopyWith(_$LoginRequestedImpl value,
          $Res Function(_$LoginRequestedImpl) then) =
      __$$LoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginParams params});

  $LoginParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$LoginRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginRequestedImpl>
    implements _$$LoginRequestedImplCopyWith<$Res> {
  __$$LoginRequestedImplCopyWithImpl(
      _$LoginRequestedImpl _value, $Res Function(_$LoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$LoginRequestedImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LoginParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginParamsCopyWith<$Res> get params {
    return $LoginParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$LoginRequestedImpl implements LoginRequested {
  const _$LoginRequestedImpl(this.params);

  @override
  final LoginParams params;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      __$$LoginRequestedImplCopyWithImpl<_$LoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) loginRequested,
    required TResult Function(RegistrationParams params) registerRequested,
    required TResult Function(String phone) firstAuth,
    required TResult Function(OtpParams params) checkOtp,
  }) {
    return loginRequested(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? loginRequested,
    TResult? Function(RegistrationParams params)? registerRequested,
    TResult? Function(String phone)? firstAuth,
    TResult? Function(OtpParams params)? checkOtp,
  }) {
    return loginRequested?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? loginRequested,
    TResult Function(RegistrationParams params)? registerRequested,
    TResult Function(String phone)? firstAuth,
    TResult Function(OtpParams params)? checkOtp,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(FirstAuthRequested value) firstAuth,
    required TResult Function(CheckOtpRequested value) checkOtp,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(FirstAuthRequested value)? firstAuth,
    TResult? Function(CheckOtpRequested value)? checkOtp,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(FirstAuthRequested value)? firstAuth,
    TResult Function(CheckOtpRequested value)? checkOtp,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class LoginRequested implements AuthEvent {
  const factory LoginRequested(final LoginParams params) = _$LoginRequestedImpl;

  LoginParams get params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterRequestedImplCopyWith<$Res> {
  factory _$$RegisterRequestedImplCopyWith(_$RegisterRequestedImpl value,
          $Res Function(_$RegisterRequestedImpl) then) =
      __$$RegisterRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegistrationParams params});

  $RegistrationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$RegisterRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterRequestedImpl>
    implements _$$RegisterRequestedImplCopyWith<$Res> {
  __$$RegisterRequestedImplCopyWithImpl(_$RegisterRequestedImpl _value,
      $Res Function(_$RegisterRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$RegisterRequestedImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RegistrationParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationParamsCopyWith<$Res> get params {
    return $RegistrationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$RegisterRequestedImpl implements RegisterRequested {
  const _$RegisterRequestedImpl(this.params);

  @override
  final RegistrationParams params;

  @override
  String toString() {
    return 'AuthEvent.registerRequested(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestedImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestedImplCopyWith<_$RegisterRequestedImpl> get copyWith =>
      __$$RegisterRequestedImplCopyWithImpl<_$RegisterRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) loginRequested,
    required TResult Function(RegistrationParams params) registerRequested,
    required TResult Function(String phone) firstAuth,
    required TResult Function(OtpParams params) checkOtp,
  }) {
    return registerRequested(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? loginRequested,
    TResult? Function(RegistrationParams params)? registerRequested,
    TResult? Function(String phone)? firstAuth,
    TResult? Function(OtpParams params)? checkOtp,
  }) {
    return registerRequested?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? loginRequested,
    TResult Function(RegistrationParams params)? registerRequested,
    TResult Function(String phone)? firstAuth,
    TResult Function(OtpParams params)? checkOtp,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(FirstAuthRequested value) firstAuth,
    required TResult Function(CheckOtpRequested value) checkOtp,
  }) {
    return registerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(FirstAuthRequested value)? firstAuth,
    TResult? Function(CheckOtpRequested value)? checkOtp,
  }) {
    return registerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(FirstAuthRequested value)? firstAuth,
    TResult Function(CheckOtpRequested value)? checkOtp,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(this);
    }
    return orElse();
  }
}

abstract class RegisterRequested implements AuthEvent {
  const factory RegisterRequested(final RegistrationParams params) =
      _$RegisterRequestedImpl;

  RegistrationParams get params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterRequestedImplCopyWith<_$RegisterRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstAuthRequestedImplCopyWith<$Res> {
  factory _$$FirstAuthRequestedImplCopyWith(_$FirstAuthRequestedImpl value,
          $Res Function(_$FirstAuthRequestedImpl) then) =
      __$$FirstAuthRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$FirstAuthRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$FirstAuthRequestedImpl>
    implements _$$FirstAuthRequestedImplCopyWith<$Res> {
  __$$FirstAuthRequestedImplCopyWithImpl(_$FirstAuthRequestedImpl _value,
      $Res Function(_$FirstAuthRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$FirstAuthRequestedImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstAuthRequestedImpl implements FirstAuthRequested {
  const _$FirstAuthRequestedImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.firstAuth(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstAuthRequestedImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstAuthRequestedImplCopyWith<_$FirstAuthRequestedImpl> get copyWith =>
      __$$FirstAuthRequestedImplCopyWithImpl<_$FirstAuthRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) loginRequested,
    required TResult Function(RegistrationParams params) registerRequested,
    required TResult Function(String phone) firstAuth,
    required TResult Function(OtpParams params) checkOtp,
  }) {
    return firstAuth(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? loginRequested,
    TResult? Function(RegistrationParams params)? registerRequested,
    TResult? Function(String phone)? firstAuth,
    TResult? Function(OtpParams params)? checkOtp,
  }) {
    return firstAuth?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? loginRequested,
    TResult Function(RegistrationParams params)? registerRequested,
    TResult Function(String phone)? firstAuth,
    TResult Function(OtpParams params)? checkOtp,
    required TResult orElse(),
  }) {
    if (firstAuth != null) {
      return firstAuth(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(FirstAuthRequested value) firstAuth,
    required TResult Function(CheckOtpRequested value) checkOtp,
  }) {
    return firstAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(FirstAuthRequested value)? firstAuth,
    TResult? Function(CheckOtpRequested value)? checkOtp,
  }) {
    return firstAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(FirstAuthRequested value)? firstAuth,
    TResult Function(CheckOtpRequested value)? checkOtp,
    required TResult orElse(),
  }) {
    if (firstAuth != null) {
      return firstAuth(this);
    }
    return orElse();
  }
}

abstract class FirstAuthRequested implements AuthEvent {
  const factory FirstAuthRequested(final String phone) =
      _$FirstAuthRequestedImpl;

  String get phone;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstAuthRequestedImplCopyWith<_$FirstAuthRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckOtpRequestedImplCopyWith<$Res> {
  factory _$$CheckOtpRequestedImplCopyWith(_$CheckOtpRequestedImpl value,
          $Res Function(_$CheckOtpRequestedImpl) then) =
      __$$CheckOtpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpParams params});

  $OtpParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CheckOtpRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckOtpRequestedImpl>
    implements _$$CheckOtpRequestedImplCopyWith<$Res> {
  __$$CheckOtpRequestedImplCopyWithImpl(_$CheckOtpRequestedImpl _value,
      $Res Function(_$CheckOtpRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CheckOtpRequestedImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as OtpParams,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpParamsCopyWith<$Res> get params {
    return $OtpParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CheckOtpRequestedImpl implements CheckOtpRequested {
  const _$CheckOtpRequestedImpl(this.params);

  @override
  final OtpParams params;

  @override
  String toString() {
    return 'AuthEvent.checkOtp(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOtpRequestedImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckOtpRequestedImplCopyWith<_$CheckOtpRequestedImpl> get copyWith =>
      __$$CheckOtpRequestedImplCopyWithImpl<_$CheckOtpRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) loginRequested,
    required TResult Function(RegistrationParams params) registerRequested,
    required TResult Function(String phone) firstAuth,
    required TResult Function(OtpParams params) checkOtp,
  }) {
    return checkOtp(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? loginRequested,
    TResult? Function(RegistrationParams params)? registerRequested,
    TResult? Function(String phone)? firstAuth,
    TResult? Function(OtpParams params)? checkOtp,
  }) {
    return checkOtp?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? loginRequested,
    TResult Function(RegistrationParams params)? registerRequested,
    TResult Function(String phone)? firstAuth,
    TResult Function(OtpParams params)? checkOtp,
    required TResult orElse(),
  }) {
    if (checkOtp != null) {
      return checkOtp(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(RegisterRequested value) registerRequested,
    required TResult Function(FirstAuthRequested value) firstAuth,
    required TResult Function(CheckOtpRequested value) checkOtp,
  }) {
    return checkOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(RegisterRequested value)? registerRequested,
    TResult? Function(FirstAuthRequested value)? firstAuth,
    TResult? Function(CheckOtpRequested value)? checkOtp,
  }) {
    return checkOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(RegisterRequested value)? registerRequested,
    TResult Function(FirstAuthRequested value)? firstAuth,
    TResult Function(CheckOtpRequested value)? checkOtp,
    required TResult orElse(),
  }) {
    if (checkOtp != null) {
      return checkOtp(this);
    }
    return orElse();
  }
}

abstract class CheckOtpRequested implements AuthEvent {
  const factory CheckOtpRequested(final OtpParams params) =
      _$CheckOtpRequestedImpl;

  OtpParams get params;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckOtpRequestedImplCopyWith<_$CheckOtpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) redirectToLogin,
    required TResult Function(String phoneNumber) redirectToOtp,
    required TResult Function(String phoneNumber, String code)
        redirectToPasswordCreation,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? redirectToLogin,
    TResult? Function(String phoneNumber)? redirectToOtp,
    TResult? Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? redirectToLogin,
    TResult Function(String phoneNumber)? redirectToOtp,
    TResult Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_RedirectToLoginState value) redirectToLogin,
    required TResult Function(_RedirectToOtpState value) redirectToOtp,
    required TResult Function(_RedirectToRegisterState value)
        redirectToPasswordCreation,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_RedirectToLoginState value)? redirectToLogin,
    TResult? Function(_RedirectToOtpState value)? redirectToOtp,
    TResult? Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult? Function(_FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_RedirectToLoginState value)? redirectToLogin,
    TResult Function(_RedirectToOtpState value)? redirectToOtp,
    TResult Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) redirectToLogin,
    required TResult Function(String phoneNumber) redirectToOtp,
    required TResult Function(String phoneNumber, String code)
        redirectToPasswordCreation,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? redirectToLogin,
    TResult? Function(String phoneNumber)? redirectToOtp,
    TResult? Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? redirectToLogin,
    TResult Function(String phoneNumber)? redirectToOtp,
    TResult Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_RedirectToLoginState value) redirectToLogin,
    required TResult Function(_RedirectToOtpState value) redirectToOtp,
    required TResult Function(_RedirectToRegisterState value)
        redirectToPasswordCreation,
    required TResult Function(_FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_RedirectToLoginState value)? redirectToLogin,
    TResult? Function(_RedirectToOtpState value)? redirectToOtp,
    TResult? Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult? Function(_FailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_RedirectToLoginState value)? redirectToLogin,
    TResult Function(_RedirectToOtpState value)? redirectToOtp,
    TResult Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AuthState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) redirectToLogin,
    required TResult Function(String phoneNumber) redirectToOtp,
    required TResult Function(String phoneNumber, String code)
        redirectToPasswordCreation,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? redirectToLogin,
    TResult? Function(String phoneNumber)? redirectToOtp,
    TResult? Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? redirectToLogin,
    TResult Function(String phoneNumber)? redirectToOtp,
    TResult Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_RedirectToLoginState value) redirectToLogin,
    required TResult Function(_RedirectToOtpState value) redirectToOtp,
    required TResult Function(_RedirectToRegisterState value)
        redirectToPasswordCreation,
    required TResult Function(_FailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_RedirectToLoginState value)? redirectToLogin,
    TResult? Function(_RedirectToOtpState value)? redirectToOtp,
    TResult? Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult? Function(_FailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_RedirectToLoginState value)? redirectToLogin,
    TResult Function(_RedirectToOtpState value)? redirectToOtp,
    TResult Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) redirectToLogin,
    required TResult Function(String phoneNumber) redirectToOtp,
    required TResult Function(String phoneNumber, String code)
        redirectToPasswordCreation,
    required TResult Function(String errorMessage) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? redirectToLogin,
    TResult? Function(String phoneNumber)? redirectToOtp,
    TResult? Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult? Function(String errorMessage)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? redirectToLogin,
    TResult Function(String phoneNumber)? redirectToOtp,
    TResult Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_RedirectToLoginState value) redirectToLogin,
    required TResult Function(_RedirectToOtpState value) redirectToOtp,
    required TResult Function(_RedirectToRegisterState value)
        redirectToPasswordCreation,
    required TResult Function(_FailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_RedirectToLoginState value)? redirectToLogin,
    TResult? Function(_RedirectToOtpState value)? redirectToOtp,
    TResult? Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult? Function(_FailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_RedirectToLoginState value)? redirectToLogin,
    TResult Function(_RedirectToOtpState value)? redirectToOtp,
    TResult Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements AuthState {
  const factory _SuccessState() = _$SuccessStateImpl;
}

/// @nodoc
abstract class _$$RedirectToLoginStateImplCopyWith<$Res> {
  factory _$$RedirectToLoginStateImplCopyWith(_$RedirectToLoginStateImpl value,
          $Res Function(_$RedirectToLoginStateImpl) then) =
      __$$RedirectToLoginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$RedirectToLoginStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RedirectToLoginStateImpl>
    implements _$$RedirectToLoginStateImplCopyWith<$Res> {
  __$$RedirectToLoginStateImplCopyWithImpl(_$RedirectToLoginStateImpl _value,
      $Res Function(_$RedirectToLoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$RedirectToLoginStateImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RedirectToLoginStateImpl implements _RedirectToLoginState {
  const _$RedirectToLoginStateImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthState.redirectToLogin(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectToLoginStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedirectToLoginStateImplCopyWith<_$RedirectToLoginStateImpl>
      get copyWith =>
          __$$RedirectToLoginStateImplCopyWithImpl<_$RedirectToLoginStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) redirectToLogin,
    required TResult Function(String phoneNumber) redirectToOtp,
    required TResult Function(String phoneNumber, String code)
        redirectToPasswordCreation,
    required TResult Function(String errorMessage) failure,
  }) {
    return redirectToLogin(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? redirectToLogin,
    TResult? Function(String phoneNumber)? redirectToOtp,
    TResult? Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult? Function(String errorMessage)? failure,
  }) {
    return redirectToLogin?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? redirectToLogin,
    TResult Function(String phoneNumber)? redirectToOtp,
    TResult Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (redirectToLogin != null) {
      return redirectToLogin(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_RedirectToLoginState value) redirectToLogin,
    required TResult Function(_RedirectToOtpState value) redirectToOtp,
    required TResult Function(_RedirectToRegisterState value)
        redirectToPasswordCreation,
    required TResult Function(_FailureState value) failure,
  }) {
    return redirectToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_RedirectToLoginState value)? redirectToLogin,
    TResult? Function(_RedirectToOtpState value)? redirectToOtp,
    TResult? Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult? Function(_FailureState value)? failure,
  }) {
    return redirectToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_RedirectToLoginState value)? redirectToLogin,
    TResult Function(_RedirectToOtpState value)? redirectToOtp,
    TResult Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (redirectToLogin != null) {
      return redirectToLogin(this);
    }
    return orElse();
  }
}

abstract class _RedirectToLoginState implements AuthState {
  const factory _RedirectToLoginState(final String phoneNumber) =
      _$RedirectToLoginStateImpl;

  String get phoneNumber;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedirectToLoginStateImplCopyWith<_$RedirectToLoginStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RedirectToOtpStateImplCopyWith<$Res> {
  factory _$$RedirectToOtpStateImplCopyWith(_$RedirectToOtpStateImpl value,
          $Res Function(_$RedirectToOtpStateImpl) then) =
      __$$RedirectToOtpStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$RedirectToOtpStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RedirectToOtpStateImpl>
    implements _$$RedirectToOtpStateImplCopyWith<$Res> {
  __$$RedirectToOtpStateImplCopyWithImpl(_$RedirectToOtpStateImpl _value,
      $Res Function(_$RedirectToOtpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$RedirectToOtpStateImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RedirectToOtpStateImpl implements _RedirectToOtpState {
  const _$RedirectToOtpStateImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthState.redirectToOtp(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectToOtpStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedirectToOtpStateImplCopyWith<_$RedirectToOtpStateImpl> get copyWith =>
      __$$RedirectToOtpStateImplCopyWithImpl<_$RedirectToOtpStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) redirectToLogin,
    required TResult Function(String phoneNumber) redirectToOtp,
    required TResult Function(String phoneNumber, String code)
        redirectToPasswordCreation,
    required TResult Function(String errorMessage) failure,
  }) {
    return redirectToOtp(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? redirectToLogin,
    TResult? Function(String phoneNumber)? redirectToOtp,
    TResult? Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult? Function(String errorMessage)? failure,
  }) {
    return redirectToOtp?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? redirectToLogin,
    TResult Function(String phoneNumber)? redirectToOtp,
    TResult Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (redirectToOtp != null) {
      return redirectToOtp(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_RedirectToLoginState value) redirectToLogin,
    required TResult Function(_RedirectToOtpState value) redirectToOtp,
    required TResult Function(_RedirectToRegisterState value)
        redirectToPasswordCreation,
    required TResult Function(_FailureState value) failure,
  }) {
    return redirectToOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_RedirectToLoginState value)? redirectToLogin,
    TResult? Function(_RedirectToOtpState value)? redirectToOtp,
    TResult? Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult? Function(_FailureState value)? failure,
  }) {
    return redirectToOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_RedirectToLoginState value)? redirectToLogin,
    TResult Function(_RedirectToOtpState value)? redirectToOtp,
    TResult Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (redirectToOtp != null) {
      return redirectToOtp(this);
    }
    return orElse();
  }
}

abstract class _RedirectToOtpState implements AuthState {
  const factory _RedirectToOtpState(final String phoneNumber) =
      _$RedirectToOtpStateImpl;

  String get phoneNumber;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedirectToOtpStateImplCopyWith<_$RedirectToOtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RedirectToRegisterStateImplCopyWith<$Res> {
  factory _$$RedirectToRegisterStateImplCopyWith(
          _$RedirectToRegisterStateImpl value,
          $Res Function(_$RedirectToRegisterStateImpl) then) =
      __$$RedirectToRegisterStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$RedirectToRegisterStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RedirectToRegisterStateImpl>
    implements _$$RedirectToRegisterStateImplCopyWith<$Res> {
  __$$RedirectToRegisterStateImplCopyWithImpl(
      _$RedirectToRegisterStateImpl _value,
      $Res Function(_$RedirectToRegisterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$RedirectToRegisterStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RedirectToRegisterStateImpl implements _RedirectToRegisterState {
  const _$RedirectToRegisterStateImpl(
      {required this.phoneNumber, required this.code});

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthState.redirectToPasswordCreation(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectToRegisterStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedirectToRegisterStateImplCopyWith<_$RedirectToRegisterStateImpl>
      get copyWith => __$$RedirectToRegisterStateImplCopyWithImpl<
          _$RedirectToRegisterStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) redirectToLogin,
    required TResult Function(String phoneNumber) redirectToOtp,
    required TResult Function(String phoneNumber, String code)
        redirectToPasswordCreation,
    required TResult Function(String errorMessage) failure,
  }) {
    return redirectToPasswordCreation(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? redirectToLogin,
    TResult? Function(String phoneNumber)? redirectToOtp,
    TResult? Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult? Function(String errorMessage)? failure,
  }) {
    return redirectToPasswordCreation?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? redirectToLogin,
    TResult Function(String phoneNumber)? redirectToOtp,
    TResult Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (redirectToPasswordCreation != null) {
      return redirectToPasswordCreation(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_RedirectToLoginState value) redirectToLogin,
    required TResult Function(_RedirectToOtpState value) redirectToOtp,
    required TResult Function(_RedirectToRegisterState value)
        redirectToPasswordCreation,
    required TResult Function(_FailureState value) failure,
  }) {
    return redirectToPasswordCreation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_RedirectToLoginState value)? redirectToLogin,
    TResult? Function(_RedirectToOtpState value)? redirectToOtp,
    TResult? Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult? Function(_FailureState value)? failure,
  }) {
    return redirectToPasswordCreation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_RedirectToLoginState value)? redirectToLogin,
    TResult Function(_RedirectToOtpState value)? redirectToOtp,
    TResult Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (redirectToPasswordCreation != null) {
      return redirectToPasswordCreation(this);
    }
    return orElse();
  }
}

abstract class _RedirectToRegisterState implements AuthState {
  const factory _RedirectToRegisterState(
      {required final String phoneNumber,
      required final String code}) = _$RedirectToRegisterStateImpl;

  String get phoneNumber;
  String get code;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedirectToRegisterStateImplCopyWith<_$RedirectToRegisterStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<$Res> {
  factory _$$FailureStateImplCopyWith(
          _$FailureStateImpl value, $Res Function(_$FailureStateImpl) then) =
      __$$FailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailureStateImpl>
    implements _$$FailureStateImplCopyWith<$Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl _value, $Res Function(_$FailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailureStateImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureStateImpl implements _FailureState {
  const _$FailureStateImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      __$$FailureStateImplCopyWithImpl<_$FailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) redirectToLogin,
    required TResult Function(String phoneNumber) redirectToOtp,
    required TResult Function(String phoneNumber, String code)
        redirectToPasswordCreation,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? redirectToLogin,
    TResult? Function(String phoneNumber)? redirectToOtp,
    TResult? Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? redirectToLogin,
    TResult Function(String phoneNumber)? redirectToOtp,
    TResult Function(String phoneNumber, String code)?
        redirectToPasswordCreation,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_RedirectToLoginState value) redirectToLogin,
    required TResult Function(_RedirectToOtpState value) redirectToOtp,
    required TResult Function(_RedirectToRegisterState value)
        redirectToPasswordCreation,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_RedirectToLoginState value)? redirectToLogin,
    TResult? Function(_RedirectToOtpState value)? redirectToOtp,
    TResult? Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult? Function(_FailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_RedirectToLoginState value)? redirectToLogin,
    TResult Function(_RedirectToOtpState value)? redirectToOtp,
    TResult Function(_RedirectToRegisterState value)?
        redirectToPasswordCreation,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements AuthState {
  const factory _FailureState(final String errorMessage) = _$FailureStateImpl;

  String get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
