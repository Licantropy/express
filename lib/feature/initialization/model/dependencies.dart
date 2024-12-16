import 'package:dio/dio.dart';
import 'package:express/feature/auth/data/sources/token_manager.dart';
import 'package:express/feature/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

base class Dependencies {
  Dependencies();

  late final SharedPreferences sharedPreferences;

  late final Dio restClientDio;

  late final FlutterSecureStorage flutterSecureStorage;

  late final AuthRepository authRepository;
  
  late final TokenManagerImpl tokenManager;
}

final class InitializationResult {
  const InitializationResult({
    required this.dependencies,
    required this.stepCount,
    required this.msSpent,
  });

  final Dependencies dependencies;

  final int stepCount;

  final int msSpent;

  @override
  String toString() => '$InitializationResult('
      'dependencies: $dependencies, '
      'stepCount: $stepCount, '
      'msSpent: $msSpent'
      ')';
}
