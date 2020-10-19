part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.signInPressed(AccountType accountType) =
      SignInPressed;

  const factory SignInFormEvent.signOutPressed() =
  SignOutPressed;
}
