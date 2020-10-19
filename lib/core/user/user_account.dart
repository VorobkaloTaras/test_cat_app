import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_cat_app/bloc/sign_in/sign_in_form_bloc.dart';
import 'package:test_cat_app/core/user/app_user.dart';

part 'user_account.freezed.dart';

@freezed
abstract class UserAccount with _$UserAccount {
  const factory UserAccount({
    @Default(AccountType.initial) AccountType accountType,
    @Default(SignInState.signedOut) SignInState signInState,
    @required AppUser appUser,
  }) = _UserAccount;
}

enum AccountType { google, facebook, initial }