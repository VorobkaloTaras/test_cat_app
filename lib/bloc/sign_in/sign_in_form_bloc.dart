import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cat_app/bloc/auth/auth_facade.dart';
import 'package:test_cat_app/core/user/app_user.dart';
import 'package:test_cat_app/core/user/user_account.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@lazySingleton
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      signInPressed: (e) async* {
        debugPrint("signInPressed: (e) async* ...");
        UserAccount account;
        yield state.copyWith(
          signInState: SignInState.submitting,
        );
        switch (e.accountType) {
          case AccountType.google:
            account = await _authFacade.signIn(AccountType.google);
            break;
          case AccountType.facebook:
            account = await _authFacade.signIn(AccountType.facebook);
            break;
        }
        if (account != null) {
          if (account.accountType == AccountType.facebook) {
            FacebookUser facebookUser = account.appUser as FacebookUser;
            switch (account.signInState) {
              case SignInState.signedIn:
                if (facebookUser.facebookLoginStatus ==
                    FacebookLoginStatus.loggedIn) {
                  yield state.copyWith(
                      signInState: SignInState.signedIn, userAccount: account);
                }
                break;
              case SignInState.networkError:
                yield state.copyWith(
                    signInState: SignInState.networkError,
                    userAccount: account);
            }
          } else if (account.accountType == AccountType.google) {
            debugPrint("SignInFormBloc: AccountType.google");
            if (account.appUser is GoogleUser) {
              GoogleUser googleUser = account.appUser as GoogleUser;
              switch (account.signInState) {
                case SignInState.signedIn:
                  debugPrint("SignInFormBloc: SignInState.signedIn");
                  yield state.copyWith(
                      signInState: SignInState.signedIn, userAccount: account);
                  break;
                case SignInState.networkError:
                  debugPrint("SignInFormBloc: SignInState.networkError 1");
                  yield state.copyWith(
                      signInState: SignInState.networkError,
                      userAccount: account);
              }
            } else if (account.appUser is ErrorUser) {
              ErrorUser errorUser = account.appUser as ErrorUser;
              switch (account.signInState) {
                case SignInState.networkError:
                  debugPrint("SignInFormBloc: SignInState.networkError 2");
                  yield state.copyWith(
                      signInState: SignInState.networkError,
                      userAccount: account);
                  break;
              }
            }
          }
        }
      },
      signOutPressed: (e) async*{
        debugPrint("SignInFormBloc: signOutPressed");
        bool result = await _authFacade.signOut();
        if (result) {
          debugPrint("SignInFormBloc: signOut result = success");
          yield state.copyWith(signInState: SignInState.signedOut);
        }
      },
    );
  }
}
