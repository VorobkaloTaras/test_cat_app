// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  SignInPressed signInPressed(AccountType accountType) {
    return SignInPressed(
      accountType,
    );
  }

// ignore: unused_element
  SignOutPressed signOutPressed() {
    return const SignOutPressed();
  }
}

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInPressed(AccountType accountType),
    @required Result signOutPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInPressed(AccountType accountType),
    Result signOutPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInPressed(SignInPressed value),
    @required Result signOutPressed(SignOutPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInPressed(SignInPressed value),
    Result signOutPressed(SignOutPressed value),
    @required Result orElse(),
  });
}

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class $SignInPressedCopyWith<$Res> {
  factory $SignInPressedCopyWith(
          SignInPressed value, $Res Function(SignInPressed) then) =
      _$SignInPressedCopyWithImpl<$Res>;
  $Res call({AccountType accountType});
}

class _$SignInPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInPressedCopyWith<$Res> {
  _$SignInPressedCopyWithImpl(
      SignInPressed _value, $Res Function(SignInPressed) _then)
      : super(_value, (v) => _then(v as SignInPressed));

  @override
  SignInPressed get _value => super._value as SignInPressed;

  @override
  $Res call({
    Object accountType = freezed,
  }) {
    return _then(SignInPressed(
      accountType == freezed ? _value.accountType : accountType as AccountType,
    ));
  }
}

class _$SignInPressed with DiagnosticableTreeMixin implements SignInPressed {
  const _$SignInPressed(this.accountType) : assert(accountType != null);

  @override
  final AccountType accountType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInPressed(accountType: $accountType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.signInPressed'))
      ..add(DiagnosticsProperty('accountType', accountType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInPressed &&
            (identical(other.accountType, accountType) ||
                const DeepCollectionEquality()
                    .equals(other.accountType, accountType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accountType);

  @override
  $SignInPressedCopyWith<SignInPressed> get copyWith =>
      _$SignInPressedCopyWithImpl<SignInPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInPressed(AccountType accountType),
    @required Result signOutPressed(),
  }) {
    assert(signInPressed != null);
    assert(signOutPressed != null);
    return signInPressed(accountType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInPressed(AccountType accountType),
    Result signOutPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInPressed != null) {
      return signInPressed(accountType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInPressed(SignInPressed value),
    @required Result signOutPressed(SignOutPressed value),
  }) {
    assert(signInPressed != null);
    assert(signOutPressed != null);
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInPressed(SignInPressed value),
    Result signOutPressed(SignOutPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements SignInFormEvent {
  const factory SignInPressed(AccountType accountType) = _$SignInPressed;

  AccountType get accountType;
  $SignInPressedCopyWith<SignInPressed> get copyWith;
}

abstract class $SignOutPressedCopyWith<$Res> {
  factory $SignOutPressedCopyWith(
          SignOutPressed value, $Res Function(SignOutPressed) then) =
      _$SignOutPressedCopyWithImpl<$Res>;
}

class _$SignOutPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignOutPressedCopyWith<$Res> {
  _$SignOutPressedCopyWithImpl(
      SignOutPressed _value, $Res Function(SignOutPressed) _then)
      : super(_value, (v) => _then(v as SignOutPressed));

  @override
  SignOutPressed get _value => super._value as SignOutPressed;
}

class _$SignOutPressed with DiagnosticableTreeMixin implements SignOutPressed {
  const _$SignOutPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signOutPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.signOutPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInPressed(AccountType accountType),
    @required Result signOutPressed(),
  }) {
    assert(signInPressed != null);
    assert(signOutPressed != null);
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInPressed(AccountType accountType),
    Result signOutPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInPressed(SignInPressed value),
    @required Result signOutPressed(SignOutPressed value),
  }) {
    assert(signInPressed != null);
    assert(signOutPressed != null);
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInPressed(SignInPressed value),
    Result signOutPressed(SignOutPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class SignOutPressed implements SignInFormEvent {
  const factory SignOutPressed() = _$SignOutPressed;
}

class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required SignInState signInState, @required UserAccount userAccount}) {
    return _SignInFormState(
      signInState: signInState,
      userAccount: userAccount,
    );
  }
}

// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

mixin _$SignInFormState {
  SignInState get signInState;
  UserAccount get userAccount;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call({SignInState signInState, UserAccount userAccount});

  $UserAccountCopyWith<$Res> get userAccount;
}

class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object signInState = freezed,
    Object userAccount = freezed,
  }) {
    return _then(_value.copyWith(
      signInState: signInState == freezed
          ? _value.signInState
          : signInState as SignInState,
      userAccount: userAccount == freezed
          ? _value.userAccount
          : userAccount as UserAccount,
    ));
  }

  @override
  $UserAccountCopyWith<$Res> get userAccount {
    if (_value.userAccount == null) {
      return null;
    }
    return $UserAccountCopyWith<$Res>(_value.userAccount, (value) {
      return _then(_value.copyWith(userAccount: value));
    });
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call({SignInState signInState, UserAccount userAccount});

  @override
  $UserAccountCopyWith<$Res> get userAccount;
}

class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object signInState = freezed,
    Object userAccount = freezed,
  }) {
    return _then(_SignInFormState(
      signInState: signInState == freezed
          ? _value.signInState
          : signInState as SignInState,
      userAccount: userAccount == freezed
          ? _value.userAccount
          : userAccount as UserAccount,
    ));
  }
}

class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.signInState, @required this.userAccount})
      : assert(signInState != null),
        assert(userAccount != null);

  @override
  final SignInState signInState;
  @override
  final UserAccount userAccount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(signInState: $signInState, userAccount: $userAccount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('signInState', signInState))
      ..add(DiagnosticsProperty('userAccount', userAccount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.signInState, signInState) ||
                const DeepCollectionEquality()
                    .equals(other.signInState, signInState)) &&
            (identical(other.userAccount, userAccount) ||
                const DeepCollectionEquality()
                    .equals(other.userAccount, userAccount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(signInState) ^
      const DeepCollectionEquality().hash(userAccount);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {@required SignInState signInState,
      @required UserAccount userAccount}) = _$_SignInFormState;

  @override
  SignInState get signInState;
  @override
  UserAccount get userAccount;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
