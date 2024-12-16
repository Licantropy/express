import 'dart:async';
import 'package:dio/dio.dart';
import 'package:express/common/utils/logger.dart';
import 'package:express/feature/auth/data/dto/token_pair/token_pair_dto.dart';
import 'package:express/feature/auth/data/params/first_auth_params.dart';
import 'package:express/feature/auth/data/params/login_params.dart';
import 'package:express/feature/auth/data/params/otp_params.dart';
import 'package:express/feature/auth/data/params/registration_params.dart';

/// [AuthDataSource] is an abstract interface defining the contract for authentication data sources.
///
/// This interface outlines the methods necessary for implementing user login and registration functionalities.
abstract interface class AuthDataSource {
  /// Asynchronously logs in a user.
  ///
  /// This method requires [LoginParams] as a parameter, which should contain the user's login credentials.
  /// It returns a [FutureOr] of [TokenPairDto], which includes the access and refresh tokens.
  ///
  /// Implementations of this method are expected to handle the authentication logic and return
  /// the relevant token information upon successful login.
  ///
  /// Parameters:
  ///   [params] ([LoginParams]): The login parameters containing user credentials.
  ///
  /// Returns:
  ///   [FutureOr<TokenPairDto>]: The token pair data transfer object containing access and refresh tokens.
  FutureOr<TokenPairDto> login({required LoginParams params});

  /// Asynchronously registers a new user.
  ///
  /// This method requires [RegistrationParams] as a parameter, which should contain the user's registration information.
  /// It returns a [FutureOr] of [TokenPairDto], which includes the access and refresh tokens.
  ///
  /// Implementations of this method are expected to handle the registration logic and return
  /// the relevant token information upon successful registration.
  ///
  /// Parameters:
  ///   [params] ([RegistrationParams]): The registration parameters containing user information.
  ///
  /// Returns:
  ///   [FutureOr<TokenPairDto>]: The token pair data transfer object containing access and refresh tokens.
  FutureOr<TokenPairDto> register({required RegistrationParams params});

  Future<int> firstAuth({required String phone});

  Future<bool> checkOtp({required OtpParams params});

  FutureOr<TokenPairDto> refresh(String refreshToken);
}

final class AuthDataSourceImpl implements AuthDataSource {
  final Dio _dio;

  /// Constructs an [AuthDataSourceImpl] with a Dio client.
  ///
  /// Requires an instance of Dio ([_dio]) for making HTTP requests.
  AuthDataSourceImpl(this._dio);

  @override
  Future<int> firstAuth({required String phone}) async {
    try {
      final response =
          await _dio.post('/phone/to-register', data: FirstAuthParams(phone: phone).toData());
      return response.statusCode ?? 500;
    } catch (e) {
      logger.error('REFRESH ERROR: $e');
      rethrow;
    }
  }

  @override
  Future<bool> checkOtp({required OtpParams params}) async {
    bool otpSuccess = false;
    try {
      final response = await _dio.post('/phone/check-code', data: params.toData());
      if (response.statusCode == 200) otpSuccess = true;
      return otpSuccess;
    } catch (e) {
      logger.error('OTP ERROR: $e');
      rethrow;
    }
  }

  /// Asynchronously logs in a user with the provided [LoginParams].
  ///
  /// Performs a POST request to 'auth/login' with the data from [LoginParams].
  /// Returns a [TokenPairDto] containing the access and refresh tokens upon success.
  /// Logs and rethrows any exceptions that occur during the process.
  ///
  /// Throws: Exception if the login request fails.
  @override
  Future<TokenPairDto> login({
    required LoginParams params,
  }) async {
    try {
      final response = await _dio.post('/auth/login', data: params.toData());
      return TokenPairDto.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      logger.error('LOGIN ERROR: $e');
      rethrow;
    }
  }

  /// Asynchronously registers a new user with the provided [RegistrationParams].
  ///
  /// Performs a POST request to 'auth/registration' with the data from [RegistrationParams].
  /// Returns a [TokenPairDto] containing the access and refresh tokens upon success.
  /// Logs and rethrows any exceptions that occur during the process.
  ///
  /// Throws: Exception if the registration request fails.
  @override
  Future<TokenPairDto> register({
    required RegistrationParams params,
  }) async {
    try {
      final response = await _dio.post('/auth/register', data: params.toData());
      return TokenPairDto.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      logger.error('REGISTRATION ERROR: $e');
      rethrow;
    }
  }

  @override
  FutureOr<TokenPairDto> refresh(String refreshToken) async {
    try {
      final response = await _dio.post('/auth/refresh', data: {'refresh_token': refreshToken});
      return TokenPairDto.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      logger.error('REFRESH ERROR: $e');
      rethrow;
    }
  }
}
