import 'package:express/feature/app/widget/router/material_context.dart';
import 'package:express/feature/auth/widget/auth_state_scope.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _hasNavigated = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      AuthStateScope.controllerOf(context).checkAuthorization();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isAuth = AuthStateScope.isAuthorized(context);
    final state = AuthStateScope.stateOf(context);

    if (!_hasNavigated) {
      if (isAuth) {
        _hasNavigated = true;
        Future.microtask(() => context.go(RoutePaths.home));
      } else if (state.maybeWhen(unauthorized: () => true, orElse: () => false)) {
        _hasNavigated = true;
        Future.microtask(() => context.go(RoutePaths.firstAuth));
      }
    }

    return const Scaffold(
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
