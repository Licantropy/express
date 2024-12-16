import 'package:express/common/utils/logger.dart';
import 'package:express/feature/app/logic/app_runner.dart';
import 'package:express/feature/initialization/logic/initialization_processor.dart';
import 'package:express/feature/initialization/model/dependencies.dart';
import 'package:express/feature/initialization/model/initialization_hook.dart';

void main() {
  final hook = InitializationHook.setup(
    onInitializing: _onInitializing,
    onInitialized: _onInitialized,
    onError: _onError,
    onInit: _onInit,
  );

  // Run the app through AppRunner
  AppRunner().initializeAndRun(hook);
}

void _onInitializing(InitializationStepInfo info) {
  final percentage = ((info.step / info.stepsCount) * 100).toInt();
  logger.info(
    'Initialized ${info.stepName} in ${info.msSpent} ms | Progress: $percentage%',
  );
}

void _onInitialized(InitializationResult result) {
  logger.info('Initialization completed successfully in ${result.msSpent} ms');
}

void _onError(int step, Object error) {
  logger.error('Initialization failed on step $step with error: $error');
}

void _onInit() {
  logger.info('Initialization started');
}
