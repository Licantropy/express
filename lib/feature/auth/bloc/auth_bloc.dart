import 'package:dio/dio.dart';
import 'package:express/feature/auth/data/params/login_params.dart';
import 'package:express/feature/auth/data/params/otp_params.dart';
import 'package:express/feature/auth/data/params/registration_params.dart';
import 'package:express/feature/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginRequested(LoginParams params) = LoginRequested;

  const factory AuthEvent.registerRequested(RegistrationParams params) = RegisterRequested;

  const factory AuthEvent.firstAuth(String phone) = FirstAuthRequested;

  const factory AuthEvent.checkOtp(OtpParams params) = CheckOtpRequested;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _InitialState;

  const factory AuthState.loading() = _LoadingState;

  const factory AuthState.success() = _SuccessState;

  const factory AuthState.redirectToLogin(String phoneNumber) = _RedirectToLoginState;

  const factory AuthState.redirectToOtp(String phoneNumber) = _RedirectToOtpState;

  const factory AuthState.redirectToPasswordCreation({
    required String phoneNumber,
    required String code,
  }) = _RedirectToRegisterState;

  const factory AuthState.failure(String errorMessage) = _FailureState;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(const AuthState.initial()) {
    on<LoginRequested>(_onLoginRequested);
    on<RegisterRequested>(_onRegisterRequested);
    on<FirstAuthRequested>(_onFirstAuth);
    on<CheckOtpRequested>(_onCheckOtpRequested);
  }

  Future<void> _onFirstAuth(FirstAuthRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final statusCode = await authRepository.firstAuth(event.phone);
      if (statusCode == 200) {
        emit(AuthState.redirectToLogin(event.phone));
      } else if (statusCode == 201) {
        emit(AuthState.redirectToOtp(event.phone));
      } else {
        emit(const AuthState.failure("Unexpected status code"));
      }
    } catch (e) {
      final String errorMessage = _handleError(e);
      emit(AuthState.failure(errorMessage));
      rethrow;
    }
  }

  Future<void> _onCheckOtpRequested(CheckOtpRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final isOtpValid = await authRepository.checkOtp(event.params);
      if (isOtpValid) {
        emit(AuthState.redirectToPasswordCreation(
          phoneNumber: event.params.phone,
          code: event.params.code,
        ));
      } else {
        emit(const AuthState.failure("Invalid OTP"));
      }
    } catch (e) {
      final String errorMessage = _handleError(e);
      emit(AuthState.failure(errorMessage));
      rethrow;
    }
  }

  Future<void> _onLoginRequested(LoginRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      await authRepository.login(event.params);
      emit(const AuthState.success());
    } catch (e) {
      final String errorMessage = _handleError(e);
      emit(AuthState.failure(errorMessage));
      rethrow;
    }
  }

  Future<void> _onRegisterRequested(RegisterRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      await authRepository.register(event.params);
      emit(const AuthState.success());
    } catch (e) {
      final String errorMessage = _handleError(e);
      emit(AuthState.failure(errorMessage));
      rethrow;
    }
  }

  String _handleError(dynamic error) {
    if (error is DioException) {
      return error.response?.data['message'].toString() ?? "Unknown error occurred";
    }
    return error.toString();
  }
}
