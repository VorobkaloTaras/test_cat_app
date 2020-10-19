// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserAccountTearOff {
  const _$UserAccountTearOff();

// ignore: unused_element
  _UserAccount call(
      {AccountType accountType = AccountType.initial,
      SignInState signInState = SignInState.signedOut,
      @required AppUser appUser}) {
    return _UserAccount(
      accountType: accountType,
      signInState: signInState,
      appUser: appUser,
    );
  }
}

// ignore: unused_element
const $UserAccount = _$UserAccountTearOff();

mixin _$UserAccount {
  AccountType get accountType;
  SignInState get signInState;
  AppUser get appUser;

  $UserAccountCopyWith<UserAccount> get copyWith;
}

abstract class $UserAccountCopyWith<$Res> {
  factory $UserAccountCopyWith(
          UserAccount value, $Res Function(UserAccount) then) =
      _$UserAccountCopyWithImpl<$Res>;
  $Res call(
      {AccountType accountType, SignInState signInState, AppUser appUser});
}

class _$UserAccountCopyWithImpl<$Res> implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(this._value, this._then);

  final UserAccount _value;
  // ignore: unused_field
  final $Res Function(UserAccount) _then;

  @override
  $Res call({
    Object accountType = freezed,
    Object signInState = freezed,
    Object appUser = freezed,
  }) {
    return _then(_value.copyWith(
      accountType: accountType == freezed
          ? _value.accountType
          : accountType as AccountType,
      signInState: signInState == freezed
          ? _value.signInState
          : signInState as SignInState,
      appUser: appUser == freezed ? _value.appUser : appUser as AppUser,
    ));
  }
}

abstract class _$UserAccountCopyWith<$Res>
    implements $UserAccountCopyWith<$Res> {
  factory _$UserAccountCopyWith(
          _UserAccount value, $Res Function(_UserAccount) then) =
      __$UserAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {AccountType accountType, SignInState signInState, AppUser appUser});
}

class __$UserAccountCopyWithImpl<$Res> extends _$UserAccountCopyWithImpl<$Res>
    implements _$UserAccountCopyWith<$Res> {
  __$UserAccountCopyWithImpl(
      _UserAccount _value, $Res Function(_UserAccount) _then)
      : super(_value, (v) => _then(v as _UserAccount));

  @override
  _UserAccount get _value => super._value as _UserAccount;

  @override
  $Res call({
    Object accountType = freezed,
    Object signInState = freezed,
    Object appUser = freezed,
  }) {
    return _then(_UserAccount(
      accountType: accountType == freezed
          ? _value.accountType
          : accountType as AccountType,
      signInState: signInState == freezed
          ? _value.signInState
          : signInState as SignInState,
      appUser: appUser == freezed ? _value.appUser : appUser as AppUser,
    ));
  }
}

class _$_UserAccount implements _UserAccount {
  const _$_UserAccount(
      {this.accountType = AccountType.initial,
      this.signInState = SignInState.signedOut,
      @required this.appUser})
      : assert(accountType != null),
        assert(signInState != null),
        assert(appUser != null);

  @JsonKey(defaultValue: AccountType.initial)
  @override
  final AccountType accountType;
  @JsonKey(defaultValue: SignInState.signedOut)
  @override
  final SignInState signInState;
  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'UserAccount(accountType: $accountType, signInState: $signInState, appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAccount &&
            (identical(other.accountType, accountType) ||
                const DeepCollectionEquality()
                    .equals(other.accountType, accountType)) &&
            (identical(other.signInState, signInState) ||
                const DeepCollectionEquality()
                    .equals(other.signInState, signInState)) &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountType) ^
      const DeepCollectionEquality().hash(signInState) ^
      const DeepCollectionEquality().hash(appUser);

  @override
  _$UserAccountCopyWith<_UserAccount> get copyWith =>
      __$UserAccountCopyWithImpl<_UserAccount>(this, _$identity);
}

abstract class _UserAccount implements UserAccount {
  const factory _UserAccount(
      {AccountType accountType,
      SignInState signInState,
      @required AppUser appUser}) = _$_UserAccount;

  @override
  AccountType get accountType;
  @override
  SignInState get signInState;
  @override
  AppUser get appUser;
  @override
  _$UserAccountCopyWith<_UserAccount> get copyWith;
}
