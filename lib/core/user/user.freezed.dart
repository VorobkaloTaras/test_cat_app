// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required String id,
      @required String displayName,
      @required String email,
      @required String photoUrl,
      @required AccountType accountType,
      bool isSignedIn}) {
    return _User(
      id: id,
      displayName: displayName,
      email: email,
      photoUrl: photoUrl,
      accountType: accountType,
      isSignedIn: isSignedIn,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get id;
  String get displayName;
  String get email;
  String get photoUrl;
  AccountType get accountType;
  bool get isSignedIn;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String displayName,
      String email,
      String photoUrl,
      AccountType accountType,
      bool isSignedIn});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object accountType = freezed,
    Object isSignedIn = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      accountType: accountType == freezed
          ? _value.accountType
          : accountType as AccountType,
      isSignedIn:
          isSignedIn == freezed ? _value.isSignedIn : isSignedIn as bool,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String displayName,
      String email,
      String photoUrl,
      AccountType accountType,
      bool isSignedIn});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object accountType = freezed,
    Object isSignedIn = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      accountType: accountType == freezed
          ? _value.accountType
          : accountType as AccountType,
      isSignedIn:
          isSignedIn == freezed ? _value.isSignedIn : isSignedIn as bool,
    ));
  }
}

@factoryMethod
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.id,
      @required this.displayName,
      @required this.email,
      @required this.photoUrl,
      @required this.accountType,
      this.isSignedIn})
      : assert(id != null),
        assert(displayName != null),
        assert(email != null),
        assert(photoUrl != null),
        assert(accountType != null);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final AccountType accountType;
  @override
  final bool isSignedIn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, displayName: $displayName, email: $email, photoUrl: $photoUrl, accountType: $accountType, isSignedIn: $isSignedIn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('accountType', accountType))
      ..add(DiagnosticsProperty('isSignedIn', isSignedIn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.accountType, accountType) ||
                const DeepCollectionEquality()
                    .equals(other.accountType, accountType)) &&
            (identical(other.isSignedIn, isSignedIn) ||
                const DeepCollectionEquality()
                    .equals(other.isSignedIn, isSignedIn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(accountType) ^
      const DeepCollectionEquality().hash(isSignedIn);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required String id,
      @required String displayName,
      @required String email,
      @required String photoUrl,
      @required AccountType accountType,
      bool isSignedIn}) = _$_User;

  @override
  String get id;
  @override
  String get displayName;
  @override
  String get email;
  @override
  String get photoUrl;
  @override
  AccountType get accountType;
  @override
  bool get isSignedIn;
  @override
  _$UserCopyWith<_User> get copyWith;
}
