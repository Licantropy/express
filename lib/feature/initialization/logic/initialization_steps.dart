import 'dart:async';
import 'package:dio/dio.dart';
import 'package:express/common/utils/interceptors.dart';
import 'package:express/feature/auth/data/sources/auth_data_source.dart';
import 'package:express/feature/auth/data/sources/token_manager.dart';
import 'package:express/feature/auth/domain/repositories/auth_repository.dart';
import 'package:express/feature/initialization/model/environment_store.dart';
import 'package:express/feature/initialization/model/initialization_progress.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A function which represents a single initialization step.
typedef StepAction = FutureOr<void>? Function(InitializationProgress progress);

/// The initialization steps, which are executed in the order they are defined.
///
/// The [Dependencies] object is passed to each step, which allows the step to
/// set the dependency, and the next step to use it.
mixin InitializationSteps {
  /// The initialization steps,
  /// which are executed in the order they are defined.
  final initializationSteps = <String, StepAction>{
    'Shared Preferences': (progress) async {
      final sharedPreferences = await SharedPreferences.getInstance();
      progress.dependencies.sharedPreferences = sharedPreferences;
    },
    'Secure Storage': (progress) async {
      const flutterSecureStorage = FlutterSecureStorage();
      progress.dependencies.flutterSecureStorage = flutterSecureStorage;
    },
    'Rest client': (progress) async {
      final restClientDio = Dio(BaseOptions(baseUrl: EnvironmentStore.baseUrl))
        ..interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true));

      progress.dependencies.restClientDio = restClientDio;
    },
    'Token Manager': (progress) async {
      final tokenManager =
          TokenManagerImpl(sharedPreferences: progress.dependencies.sharedPreferences);
      progress.dependencies.tokenManager = tokenManager;
    },
    'Auth Repository': (progress) async {
      final authDataSource = AuthDataSourceImpl(progress.dependencies.restClientDio);

      progress.dependencies.authRepository =
          AuthRepository(authDataSource, progress.dependencies.tokenManager);

      progress.dependencies.restClientDio.interceptors.add(TokenInterceptor(
          progress.dependencies.tokenManager, progress.dependencies.authRepository));
    },
  };
}
