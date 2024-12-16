import 'package:express/feature/app/widget/router/material_context.dart';
import 'package:express/feature/auth/bloc/auth_bloc.dart';
import 'package:express/feature/auth/widget/auth_state_scope.dart';
import 'package:express/feature/initialization/model/dependencies.dart';
import 'package:express/feature/initialization/widget/dependencies_scope.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

/// {@template app}
/// [App] is an entry point to the application.
///
/// All the global scopes should be defined there.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({required this.result, super.key});

  /// Running this function will result in attaching
  /// corresponding [RenderObject] to the root of the tree.
  void attach([VoidCallback? callback]) {
    callback?.call();
    runApp(this);
  }

  /// The initialization result from the [InitializationProcessor]
  final InitializationResult result;

  @override
  Widget build(BuildContext context) => DefaultAssetBundle(
        bundle: SentryAssetBundle(),
        child: DependenciesScope(
          dependencies: result.dependencies,
          child: AuthStateScope(child: const MaterialContext()),
        ),
      );
}
