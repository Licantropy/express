import 'package:express/common/utils/logger.dart';
import 'package:express/feature/app/logic/tracking_manager.dart';
import 'package:express/feature/initialization/logic/initialization_steps.dart';
import 'package:express/feature/initialization/model/dependencies.dart';
import 'package:express/feature/initialization/model/environment_store.dart';
import 'package:express/feature/initialization/model/initialization_hook.dart';
import 'package:express/feature/initialization/model/initialization_progress.dart';
import 'package:flutter/foundation.dart';

part 'initialization_factory.dart';

/// {@template initialization_processor}
/// A class which is responsible for processing initialization steps.
/// {@endtemplate}
mixin InitializationProcessor {
  /// Process initialization steps.
  Future<InitializationResult> processInitialization({
    required Map<String, StepAction> steps,
    required InitializationFactory factory,
    required InitializationHook hook,
    required void Function(int progress, String message) onProgress,
  }) async {
    final stopwatch = Stopwatch()..start();
    var stepCount = 0;
    final env = factory.getEnvironmentStore();
    final progress = InitializationProgress(
      dependencies: Dependencies(),
      environmentStore: env,
    );
    if (!kDebugMode) {
      final trackingManager = factory.createTrackingManager(env);
      await trackingManager.enableReporting();
    }
    hook.onInit?.call();
    try {
      await for (final step in Stream.fromIterable(steps.entries)) {
        stepCount++;
        final stepName = step.key;
        final stopWatch = Stopwatch()..start();
        onProgress.call(stepCount, 'Starting: $stepName');

        await step.value(progress);

        onProgress.call(stepCount, 'Completed: $stepName in ${stopWatch.elapsedMilliseconds}ms');

        hook.onInitializing?.call(
          InitializationStepInfo(
            stepName: step.key,
            step: stepCount,
            stepsCount: steps.length,
            msSpent: (stopWatch..stop()).elapsedMilliseconds,
          ),
        );
      }
    } on Object catch (e) {
      hook.onError?.call(stepCount, e);
      rethrow;
    }
    stopwatch.stop();
    final result = InitializationResult(
      dependencies: progress.dependencies,
      stepCount: stepCount,
      msSpent: stopwatch.elapsedMilliseconds,
    );
    hook.onInitialized?.call(result);

    onProgress.call(stepCount, 'Initialization completed in ${stopwatch.elapsedMilliseconds}ms');

    return result;
  }
}

/// {@template initialization_step_info}
/// A class which contains information about initialization step.
/// {@endtemplate}
class InitializationStepInfo {
  /// {@macro initialization_step_info}
  const InitializationStepInfo({
    required this.stepName,
    required this.step,
    required this.stepsCount,
    required this.msSpent,
  });

  /// The number of the step.
  final int step;

  /// The name of the step.
  final String stepName;

  /// The total number of steps.
  final int stepsCount;

  /// The number of milliseconds spent on the step.
  final int msSpent;
}
