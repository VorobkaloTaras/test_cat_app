import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cat_app/bloc/auth/auth_facade.dart';
import 'package:test_cat_app/bloc/sign_in/sign_in_form_bloc.dart';
import 'package:test_cat_app/core/user/app_user.dart';
import 'package:test_cat_app/core/user/user_account.dart';
import 'package:test_cat_app/http/http_service.dart';
import 'package:test_cat_app/repository/shared_pref.dart';

@prod
@LazySingleton(as: AuthFacade)
class AppAuthFacade implements AuthFacade {
  final GoogleSignIn _googleSignIn;
  final FacebookLogin _facebookLogIn;
  final HttpService _httpService;
  final SharedPrefs _sharedPrefs;
  UserAccount _userAccount;

  AppAuthFacade(this._googleSignIn, this._facebookLogIn, this._httpService,
      this._sharedPrefs);

  @override
  Future<UserAccount> checkIfUserIsAuthenticated() async {
    // debugPrint("AppAuthFacade inside checkIfUserIsAuthenticated()");
    bool isLoggedIn = await _googleSignIn.isSignedIn();
    if (isLoggedIn) {
      // debugPrint("AppAuthFacade googleSignIn.isSignedIn()");
      GoogleSignInAccount gAccount = await _googleSignIn.signInSilently();
      if (gAccount != null) {
        _userAccount = UserAccount(
            accountType: AccountType.google,
            signInState: SignInState.signedIn,
            appUser: GoogleUser(
                id: gAccount.id,
                displayName: gAccount.displayName,
                email: gAccount.email,
                photoUrl: gAccount.photoUrl));
        if (_userAccount != null) {
          return _userAccount;
        }
      }
    }
    isLoggedIn = await _facebookLogIn.isLoggedIn;
    if (isLoggedIn) {
      debugPrint("AppAuthFacade facebookLogIn.isLoggedIn");
      FacebookAccessToken token = await _facebookLogIn.currentAccessToken;
      _userAccount = await _getFacebookAccount(token.token);
      if (_userAccount != null) {
        return _userAccount;
      }
    }
    _userAccount =
        UserAccount(accountType: AccountType.initial, appUser: InitialUser());
    return _userAccount;
  }

  @override
  Future<bool> signOut() async {
    debugPrint("AppAuthFacade inside signOut()");
    bool signOutSuccess = false;
    bool isLoggedIn;
    isLoggedIn = await _googleSignIn.isSignedIn();
    if (isLoggedIn) {
      debugPrint("AppAuthFacade detected sign in google");
      GoogleSignInAccount googleSignInAccount = await _googleSignIn.signOut();
      bool logInState = await _googleSignIn.isSignedIn();
      if (logInState == false) {
        debugPrint("AppAuthFacade _googleSignIn.signOut() success");
        signOutSuccess = true;
        _userAccount = UserAccount(
            signInState: SignInState.signedOut,
            accountType: AccountType.initial,
            appUser: InitialUser());
      }
    }
    isLoggedIn = await _facebookLogIn.isLoggedIn;
    if (isLoggedIn) {
      debugPrint("AppAuthFacade detected sign in facebook");
      await _facebookLogIn.logOut();
      bool logInState = await _facebookLogIn.isLoggedIn;
      if (logInState == false) {
        debugPrint("AppAuthFacade _facebookLogIn.logOut() success");
        signOutSuccess = true;
        _userAccount = UserAccount(
            signInState: SignInState.signedOut,
            accountType: AccountType.initial,
            appUser: InitialUser());
      }
    }
    return signOutSuccess;
  }

  @override
  Future<UserAccount> signIn(AccountType accountType) async {
    debugPrint("AppAuthFacade inside signIn()");
    switch (accountType) {
      case AccountType.google:
        GoogleSignInAccount gAccount;
        try {
          gAccount = await _googleSignIn.signIn();
        } on PlatformException catch (e) {
          debugPrint('network exception: ${e.toString()}');
          _userAccount = UserAccount(
            accountType: AccountType.google,
            signInState: SignInState.networkError,
            appUser: ErrorUser(
                exception: e,
                exceptionType: ExceptionType.network,
                errorDescription: e.message),
          );
          return _userAccount;
        }
        if (gAccount != null) {
          debugPrint('AppAuthFacade gAccount != null');
          _userAccount = UserAccount(
            accountType: AccountType.google,
            signInState: SignInState.signedIn,
            appUser: GoogleUser(
                id: gAccount.id,
                displayName: gAccount.displayName,
                email: gAccount.email,
                photoUrl: gAccount.photoUrl),
          );
        } else {
          _userAccount = UserAccount(
            accountType: AccountType.google,
            signInState: SignInState.cancelledByUser,
            appUser: ErrorUser(),
          );
        }
        // debugPrint('signIn  exit AppAuthFacade ');
        return _userAccount;
      case AccountType.facebook:
        final FacebookLoginResult result =
            await _facebookLogIn.logIn(['email']);
        switch (result.status) {
          case FacebookLoginStatus.loggedIn:
            final FacebookAccessToken token = result.accessToken;
            _userAccount = await _getFacebookAccount(token.token);
            _sharedPrefs.saveFacebookUser = _userAccount.appUser;
            break;
          case FacebookLoginStatus.cancelledByUser:
            _userAccount = UserAccount(
                accountType: AccountType.facebook,
                signInState: SignInState.cancelledByUser,
                appUser: FacebookUser(
                  facebookLoginStatus: FacebookLoginStatus.cancelledByUser,
                ));
            break;
          case FacebookLoginStatus.error:
            _userAccount = UserAccount(
                accountType: AccountType.facebook,
                signInState: SignInState.error,
                appUser: FacebookUser(
                    facebookLoginStatus: FacebookLoginStatus.error));
            break;
        }
        break;
    }
    return _userAccount;
  }

  Future<UserAccount> _getFacebookAccount(String token) async {
    _userAccount = await _httpService.getFacebookUserAccount(token);
    if (_userAccount.appUser is ErrorUser &&
        _userAccount.accountType == AccountType.facebook) {
      ErrorUser errorUser = _userAccount.appUser as ErrorUser;
      if (errorUser.exceptionType == ExceptionType.socket) {
        FacebookUser facebookUser = await _sharedPrefs.getFacebookUser;
        if (facebookUser != null) {
          _userAccount = UserAccount(
              accountType: _userAccount.accountType, appUser: facebookUser);
        }
      }
    }
    return _userAccount;
  }

  UserAccount get userAccount => _userAccount;
}

// GoogleSignInAuthentication credentials =
//     await _googleSignIn.currentUser.authentication;
