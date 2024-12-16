import 'package:express/feature/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.check() = _CheckAuthEvent;

  const factory AuthEvent.logout() = _LogoutEvent;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _InitialState;

  const factory AuthState.unauthorized() = _UnauthorizedState;

  const factory AuthState.authorized() = _AuthorizedState;
}

class AuthStateBloc extends Bloc<AuthEvent, AuthState> {
  AuthStateBloc({
    required AuthRepository authRepository,
  })  : _authRepo = authRepository,
        super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) => event.map(
          check: (event) => _check(event, emit),
          logout: (event) => _logout(event, emit),
        ));
  }

  final AuthRepository _authRepo;

  Future<void> _check(_CheckAuthEvent event, Emitter<AuthState> emit) async {
    final isAuthorized = await _authRepo.isAuthorized();
    emit(
      isAuthorized ? AuthState.authorized() : const AuthState.unauthorized(),
    );
  }

  Future<void> _logout(_LogoutEvent event, Emitter<AuthState> emit) async {
    await _authRepo.logout();
    emit(const AuthState.unauthorized());
  }
}
