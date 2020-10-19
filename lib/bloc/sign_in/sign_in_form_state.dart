part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required SignInState signInState,
    @required UserAccount userAccount,
    // @required Option<
    //     Either<AuthFailure, AuthSuccess>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() =>
      SignInFormState(
          signInState: SignInState.signedOut,
          userAccount: UserAccount(
              accountType: AccountType.initial, appUser: InitialUser()));
        // authFailureOrSuccessOption: none(),
}

enum SignInState { submitting, signedIn, signedOut, networkError, cancelledByUser, error }
