import 'package:express/common/utils/extension/context_extension.dart';
import 'package:express/common/widget/error_scope.dart';
import 'package:express/feature/app/widget/router/material_context.dart';
import 'package:express/feature/auth/bloc/auth_bloc.dart';
import 'package:express/feature/auth/data/params/login_params.dart';
import 'package:express/feature/auth/data/params/otp_params.dart';
import 'package:express/feature/auth/data/params/registration_params.dart';
import 'package:express/feature/auth/widget/auth_state_scope.dart';
import 'package:express/feature/initialization/widget/dependencies_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// An abstract class that defines the authentication operations.
///
/// This class acts as an interface for authentication actions, such as login and
/// registration, enabling the implementation of these functionalities in concrete classes.
abstract class AuthScopeController {
  /// Triggers the login process using provided login parameters.
  ///
  /// The [params] parameter holds the login credentials including
  /// email and password.
  void login(LoginParams params);

  /// Initiates the registration process using provided registration parameters.
  ///
  /// The [params] parameter contains the registration details, usually including
  /// user information like email, password, and other required data.
  void register(RegistrationParams params);

  void firstAuth(String phone);

  void checkOtp(OtpParams params);
}

/// A StatefulWidget that provides an authentication context to its child widgets.
///
/// This widget creates an inherited widget (_InheritedAuthScope) to provide the authentication
/// state and control to its descendants. It manages the authentication state and
/// delegates authentication actions like login and registration to the AuthBloc.
class AuthScope extends StatefulWidget {
  /// Creates an AuthScope widget.
  ///
  /// The [child] argument is the subtree under this widget. The [key] argument is
  /// passed to the superclass for widget identification.
  const AuthScope({required this.child, super.key});

  /// The widget below this widget in the tree.
  final Widget child;

  /// Retrieves the nearest AuthScopeController instance in the widget tree.
  ///
  /// This static method provides access to the AuthScopeController. If [listen] is
  /// set to true, the calling widget will rebuild when the AuthState changes.
  static AuthScopeController controllerOf(BuildContext context, {bool listen = true}) =>
      context.inhOf<_InheritedAuthScope>(listen: listen).controller;

  /// Retrieves the current authentication state from the nearest _InheritedAuthScope.
  ///
  /// This static method is used to access the current state of the authentication
  /// process, such as whether the user is logged in or not.
  static AuthState stateOf(BuildContext context) => context.inhOf<_InheritedAuthScope>().state;

  @override
  State<AuthScope> createState() => _AuthScopeState();
}

class _AuthScopeState extends State<AuthScope> implements AuthScopeController {
  late final AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = AuthBloc(DependenciesScope.of(context).authRepository)
      ..stream.listen((state) {
        state.maybeMap(
          success: (_) {
            context.pushReplacement(RoutePaths.home);
            AuthStateScope.controllerOf(context).checkAuthorization();
          },
          redirectToLogin: (state) {
            final phoneNumber = state.phoneNumber;
            context.go(RoutePaths.password, extra: phoneNumber);
          },
          redirectToOtp: (registerState) {
            final phoneNumber = registerState.phoneNumber;
            context.go(RoutePaths.otp, extra: phoneNumber);
          },
          redirectToPasswordCreation: (state) {
            final phone = state.phoneNumber;
            final code = state.code;
            context.go(RoutePaths.passwordCreation, extra: {'phone': phone, 'code': code});
          },
          failure: (failureState) {
            InfoScope.of(context).showErrorSnackBar(failureState.errorMessage);
          },
          orElse: () {},
        );
      });
  }

  @override
  void dispose() {
    _authBloc.close();
    super.dispose();
  }

  @override
  void login(LoginParams params) => _authBloc.add(AuthEvent.loginRequested(params));

  @override
  void register(RegistrationParams params) => _authBloc.add(AuthEvent.registerRequested(params));

  @override
  void firstAuth(String phone) => _authBloc.add(AuthEvent.firstAuth(phone));

  @override
  void checkOtp(OtpParams params) => _authBloc.add(AuthEvent.checkOtp(params));

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) => _InheritedAuthScope(
          state: state,
          controller: this,
          child: widget.child,
        ),
      );
}

/// An InheritedWidget that provides access to authentication state and control.
///
/// This widget is used internally by AuthScope to propagate its state and
/// controller down the widget tree. It allows descendant widgets to access and
/// react to authentication state changes.
class _InheritedAuthScope extends InheritedWidget {
  final AuthState state;
  final AuthScopeController controller;

  const _InheritedAuthScope({required this.state, required this.controller, required super.child});

  @override
  bool updateShouldNotify(_InheritedAuthScope oldWidget) => oldWidget.state != state;
}
