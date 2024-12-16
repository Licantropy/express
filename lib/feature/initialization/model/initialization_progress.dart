import 'package:express/feature/initialization/model/environment_store.dart';
import 'dependencies.dart';

/// {@template initialization_progress}
/// A class which represents the initialization progress.
/// {@endtemplate}
final class InitializationProgress {
  /// {@macro initialization_progress}
  const InitializationProgress({
    required this.dependencies,
    required this.environmentStore,
  });

  /// Mutable version of dependencies
  final Dependencies dependencies;

  /// Environment store
  final EnvironmentStore environmentStore;
}
