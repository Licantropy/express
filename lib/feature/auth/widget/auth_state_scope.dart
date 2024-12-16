import 'package:express/common/utils/extension/context_extension.dart';
import 'package:express/feature/auth/bloc/auth_state_bloc.dart';
import 'package:express/feature/initialization/widget/dependencies_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthStateScopeController {
  void checkAuthorization();

  void logout();
}

class AuthStateScope extends StatefulWidget {
  const AuthStateScope({required this.child, super.key});

  final Widget child;

  static AuthStateScopeController controllerOf(BuildContext context, {bool listen = true}) =>
      context.inhOf<_InheritedAuthStateScope>(listen: listen).controller;

  static AuthState stateOf(BuildContext context) => context.inhOf<_InheritedAuthStateScope>().state;

  static bool isAuthorized(BuildContext context) {
    final state = stateOf(context);
    return state.maybeWhen(
      authorized: () => true,
      orElse: () => false,
    );
  }

  @override
  State<AuthStateScope> createState() => _AuthStateScopeState();
}

class _AuthStateScopeState extends State<AuthStateScope> implements AuthStateScopeController {
  late final AuthStateBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = AuthStateBloc(
      authRepository: DependenciesScope.of(context).authRepository,
    );
  }

  @override
  void dispose() {
    _authBloc.close();
    super.dispose();
  }

  @override
  void checkAuthorization() {
    _authBloc.add(AuthEvent.check());
  }

  @override
  void logout() {
    _authBloc.add(AuthEvent.logout());
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthStateBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) => _InheritedAuthStateScope(
          state: state,
          controller: this,
          child: widget.child,
        ),
      );
}

class _InheritedAuthStateScope extends InheritedWidget {
  const _InheritedAuthStateScope({
    required this.state,
    required this.controller,
    required super.child,
  });

  final AuthState state;
  final AuthStateScopeController controller;

  @override
  bool updateShouldNotify(_InheritedAuthStateScope oldWidget) => oldWidget.state != state;
}
