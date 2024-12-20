import 'dart:developer';

import 'package:express/feature/auth/data/models/token_pair/token_pair_model.dart';
import 'package:express/feature/auth/data/params/login_params.dart';
import 'package:express/feature/auth/data/params/otp_params.dart';
import 'package:express/feature/auth/data/params/registration_params.dart';
import 'package:express/feature/auth/data/sources/auth_data_source.dart';
import 'package:express/feature/auth/data/sources/token_manager.dart';

///
class AuthRepository {
  final AuthDataSource _authDataSource;
  final TokenManagerImpl _tokenManager;

  ///
  AuthRepository(this._authDataSource, this._tokenManager);

  Future<int> firstAuth(String phone) {
    final formattedPhone = phone.replaceAll(RegExp(r'\D'), '');
    return _authDataSource.firstAuth(phone: formattedPhone);
  }

  Future<bool> checkOtp(OtpParams params) async {
    return _authDataSource.checkOtp(params: params);
  }

  ///
  Future<void> login(LoginParams params) async {
    final loginDto = await _authDataSource.login(params: params);
    final tokensModel = TokenPairModel.fromDto(loginDto.tokenPair);
    await _saveTokens(tokensModel);
  }

  ///
  Future<void> register(RegistrationParams params) async {
    final registrationDto = await _authDataSource.register(params: params);
    final tokensModel = TokenPairModel.fromDto(registrationDto.tokenPair);
    await _saveTokens(tokensModel);
  }

  ///
  Future<void> refresh(String refresh) async {
    final tokensDto = await _authDataSource.refresh(refresh);
    final tokensModel = TokenPairModel.fromDto(tokensDto);
    await _saveTokens(tokensModel);
  }

  Future<void> _saveTokens(TokenPairModel tokenModel) async {
    await _tokenManager.saveAccessToken(tokenModel.accessToken);
    await _tokenManager.saveRefreshToken(tokenModel.refreshToken);
    final retrievedToken = await _tokenManager.getAccessToken();
    log('RECEIVED TOKEN: $retrievedToken');
  }

  Future<bool> isAuthorized() async {
    final token = await _tokenManager.getAccessToken();
    return token != null && token.isNotEmpty;
  }

  Future<void> logout() async {
    await _tokenManager.deleteTokens();
  }
}
