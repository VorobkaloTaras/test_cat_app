import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:test_cat_app/bloc/auth/auth_facade.dart';
import 'package:test_cat_app/core/user/app_user.dart';
import 'package:test_cat_app/core/user/user_account.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      checkIfUserIsSigned: (e) async* {
        debugPrint('AuthBloc checkIfUserIsSigned');
        UserAccount account = await _authFacade.checkIfUserIsAuthenticated();
        if (account != null && account.appUser is ErrorUser) {
          debugPrint('AuthBloc checkIfUserIsSigned ErrorUser');
          ErrorUser errorUser = account.appUser as ErrorUser;
          if (errorUser.exceptionType == ExceptionType.socket) {
            debugPrint('AuthBloc checkIfUserIsSigned SocketException');
            // yield const AuthState.facebookSocketException();
          }else{
            debugPrint('AuthBloc checkIfUserIsSigned unauthenticated');
            yield const AuthState.unauthenticated();
          }
        } else if (account != null && (account.appUser is GoogleUser ||
            account.appUser is FacebookUser)) {
          // debugPrint('AuthBloc checkIfUserIsSigned authenticated');
          yield AuthState.authenticated(account);
        } else {
          debugPrint('AuthBloc checkIfUserIsSigned initial');
          yield AuthState.unauthenticated();
        }
      },
      signOut: (e) async* {
        debugPrint('AuthBloc signOut');
        bool signOutSuccess = await _authFacade.signOut();
        debugPrint('inside AuthBloc signOut unauthenticated');
        if (signOutSuccess) {
          debugPrint('inside AuthBloc signOut success');
          yield const AuthState.unauthenticated();
        }
      },
    );
  }
}
