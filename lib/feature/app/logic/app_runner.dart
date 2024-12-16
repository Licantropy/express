import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:express/common/utils/app_bloc_observer.dart';
import 'package:express/common/utils/logger.dart';
import 'package:express/feature/app/widget/app.dart';
import 'package:express/feature/initialization/logic/initialization_processor.dart';
import 'package:express/feature/initialization/logic/initialization_steps.dart';
import 'package:express/feature/initialization/model/initialization_hook.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A class which is responsible for initializing and running the app.
final class AppRunner with InitializationSteps, InitializationProcessor, InitializationFactoryImpl {
  /// Start the initialization and run the application.
  Future<void> initializeAndRun(InitializationHook hook) async {
    runZonedGuarded(
      () async {
        // Initialize bindings and preserve splash screen
        final bindings = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();
        // FlutterNativeSplash.preserve(widgetsBinding: bindings);

        // // Firebase initialization
        // await initializeFirebase();



        // Override logging
        FlutterError.onError = (FlutterErrorDetails details) {
          logger.logFlutterError(details);
        };

        // Set up Bloc observer and transformer
        Bloc.observer = const AppBlocObserver();
        Bloc.transformer = bloc_concurrency.sequential();

        // Process initialization steps
        final result = await processInitialization(
          steps: initializationSteps,
          hook: hook,
          factory: this,
          onProgress: (int step, String message) {
            if (kDebugMode) {
              print('$step: $message');
            }
          },
        );


        // Allow the first frame and launch the app
        bindings.allowFirstFrame();
        // App(result: result).attach(FlutterNativeSplash.remove);
        App(result: result).attach();
      },
      (error, stackTrace) {
        logger.logZoneError(error, stackTrace);
        // Record any uncaught error to Crashlytics
        // FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
      },
    );
  }

  /// Firebase initialization with Crashlytics setup
  // Future<void> initializeFirebase() async {
  //   await Firebase.initializeApp();
  //   if (!kDebugMode) {
  //     FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  //     PlatformDispatcher.instance.onError = (error, stack) {
  //       FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //       return true;
  //     };
  //   }
  // }
}
