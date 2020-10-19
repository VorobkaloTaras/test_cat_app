// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FacebookUserTearOff {
  const _$FacebookUserTearOff();

// ignore: unused_element
  _FacebookUser call(
      {String name,
      String firstName,
      String lastName,
      String email,
      String photoUrl,
      String id,
      @required FacebookLoginStatus facebookLoginStatus,
      int facebookLoginStatusIndex}) {
    return _FacebookUser(
      name: name,
      firstName: firstName,
      lastName: lastName,
      email: email,
      photoUrl: photoUrl,
      id: id,
      facebookLoginStatus: facebookLoginStatus,
      facebookLoginStatusIndex: facebookLoginStatusIndex,
    );
  }
}

// ignore: unused_element
const $FacebookUser = _$FacebookUserTearOff();

mixin _$FacebookUser {
  String get name;
  String get firstName;
  String get lastName;
  String get email;
  String get photoUrl;
  String get id;
  FacebookLoginStatus get facebookLoginStatus;
  int get facebookLoginStatusIndex;

  $FacebookUserCopyWith<FacebookUser> get copyWith;
}

abstract class $FacebookUserCopyWith<$Res> {
  factory $FacebookUserCopyWith(
          FacebookUser value, $Res Function(FacebookUser) then) =
      _$FacebookUserCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String firstName,
      String lastName,
      String email,
      String photoUrl,
      String id,
      FacebookLoginStatus facebookLoginStatus,
      int facebookLoginStatusIndex});
}

class _$FacebookUserCopyWithImpl<$Res> implements $FacebookUserCopyWith<$Res> {
  _$FacebookUserCopyWithImpl(this._value, this._then);

  final FacebookUser _value;
  // ignore: unused_field
  final $Res Function(FacebookUser) _then;

  @override
  $Res call({
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object id = freezed,
    Object facebookLoginStatus = freezed,
    Object facebookLoginStatusIndex = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      id: id == freezed ? _value.id : id as String,
      facebookLoginStatus: facebookLoginStatus == freezed
          ? _value.facebookLoginStatus
          : facebookLoginStatus as FacebookLoginStatus,
      facebookLoginStatusIndex: facebookLoginStatusIndex == freezed
          ? _value.facebookLoginStatusIndex
          : facebookLoginStatusIndex as int,
    ));
  }
}

abstract class _$FacebookUserCopyWith<$Res>
    implements $FacebookUserCopyWith<$Res> {
  factory _$FacebookUserCopyWith(
          _FacebookUser value, $Res Function(_FacebookUser) then) =
      __$FacebookUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String firstName,
      String lastName,
      String email,
      String photoUrl,
      String id,
      FacebookLoginStatus facebookLoginStatus,
      int facebookLoginStatusIndex});
}

class __$FacebookUserCopyWithImpl<$Res> extends _$FacebookUserCopyWithImpl<$Res>
    implements _$FacebookUserCopyWith<$Res> {
  __$FacebookUserCopyWithImpl(
      _FacebookUser _value, $Res Function(_FacebookUser) _then)
      : super(_value, (v) => _then(v as _FacebookUser));

  @override
  _FacebookUser get _value => super._value as _FacebookUser;

  @override
  $Res call({
    Object name = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object id = freezed,
    Object facebookLoginStatus = freezed,
    Object facebookLoginStatusIndex = freezed,
  }) {
    return _then(_FacebookUser(
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      id: id == freezed ? _value.id : id as String,
      facebookLoginStatus: facebookLoginStatus == freezed
          ? _value.facebookLoginStatus
          : facebookLoginStatus as FacebookLoginStatus,
      facebookLoginStatusIndex: facebookLoginStatusIndex == freezed
          ? _value.facebookLoginStatusIndex
          : facebookLoginStatusIndex as int,
    ));
  }
}

@factoryMethod
class _$_FacebookUser implements _FacebookUser {
  _$_FacebookUser(
      {this.name,
      this.firstName,
      this.lastName,
      this.email,
      this.photoUrl,
      this.id,
      @required this.facebookLoginStatus,
      this.facebookLoginStatusIndex})
      : assert(facebookLoginStatus != null);

  @override
  final String name;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final String id;
  @override
  final FacebookLoginStatus facebookLoginStatus;
  @override
  final int facebookLoginStatusIndex;

  bool _didtoJson = false;
  Map<dynamic, dynamic> _toJson;

  @override
  Map<dynamic, dynamic> get toJson {
    if (_didtoJson == false) {
      _didtoJson = true;
      _toJson = {
        'name': name,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'photoUrl': photoUrl,
        'id': id,
        'facebookLoginStatusIndex': facebookLoginStatus.index,
      };
    }
    return _toJson;
  }

  @override
  String toString() {
    return 'FacebookUser(name: $name, firstName: $firstName, lastName: $lastName, email: $email, photoUrl: $photoUrl, id: $id, facebookLoginStatus: $facebookLoginStatus, facebookLoginStatusIndex: $facebookLoginStatusIndex, toJson: $toJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FacebookUser &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.facebookLoginStatus, facebookLoginStatus) ||
                const DeepCollectionEquality()
                    .equals(other.facebookLoginStatus, facebookLoginStatus)) &&
            (identical(
                    other.facebookLoginStatusIndex, facebookLoginStatusIndex) ||
                const DeepCollectionEquality().equals(
                    other.facebookLoginStatusIndex, facebookLoginStatusIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(facebookLoginStatus) ^
      const DeepCollectionEquality().hash(facebookLoginStatusIndex);

  @override
  _$FacebookUserCopyWith<_FacebookUser> get copyWith =>
      __$FacebookUserCopyWithImpl<_FacebookUser>(this, _$identity);
}

abstract class _FacebookUser implements FacebookUser {
  factory _FacebookUser(
      {String name,
      String firstName,
      String lastName,
      String email,
      String photoUrl,
      String id,
      @required FacebookLoginStatus facebookLoginStatus,
      int facebookLoginStatusIndex}) = _$_FacebookUser;

  @override
  String get name;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get photoUrl;
  @override
  String get id;
  @override
  FacebookLoginStatus get facebookLoginStatus;
  @override
  int get facebookLoginStatusIndex;
  @override
  _$FacebookUserCopyWith<_FacebookUser> get copyWith;
}

class _$GoogleUserTearOff {
  const _$GoogleUserTearOff();

// ignore: unused_element
  _GoogleUser call(
      {@required String id,
      @required String displayName,
      @required String email,
      @required String photoUrl}) {
    return _GoogleUser(
      id: id,
      displayName: displayName,
      email: email,
      photoUrl: photoUrl,
    );
  }
}

// ignore: unused_element
const $GoogleUser = _$GoogleUserTearOff();

mixin _$GoogleUser {
  String get id;
  String get displayName;
  String get email;
  String get photoUrl;

  $GoogleUserCopyWith<GoogleUser> get copyWith;
}

abstract class $GoogleUserCopyWith<$Res> {
  factory $GoogleUserCopyWith(
          GoogleUser value, $Res Function(GoogleUser) then) =
      _$GoogleUserCopyWithImpl<$Res>;
  $Res call({String id, String displayName, String email, String photoUrl});
}

class _$GoogleUserCopyWithImpl<$Res> implements $GoogleUserCopyWith<$Res> {
  _$GoogleUserCopyWithImpl(this._value, this._then);

  final GoogleUser _value;
  // ignore: unused_field
  final $Res Function(GoogleUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

abstract class _$GoogleUserCopyWith<$Res> implements $GoogleUserCopyWith<$Res> {
  factory _$GoogleUserCopyWith(
          _GoogleUser value, $Res Function(_GoogleUser) then) =
      __$GoogleUserCopyWithImpl<$Res>;
  @override
  $Res call({String id, String displayName, String email, String photoUrl});
}

class __$GoogleUserCopyWithImpl<$Res> extends _$GoogleUserCopyWithImpl<$Res>
    implements _$GoogleUserCopyWith<$Res> {
  __$GoogleUserCopyWithImpl(
      _GoogleUser _value, $Res Function(_GoogleUser) _then)
      : super(_value, (v) => _then(v as _GoogleUser));

  @override
  _GoogleUser get _value => super._value as _GoogleUser;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_GoogleUser(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

@factoryMethod
class _$_GoogleUser implements _GoogleUser {
  _$_GoogleUser(
      {@required this.id,
      @required this.displayName,
      @required this.email,
      @required this.photoUrl})
      : assert(id != null),
        assert(displayName != null),
        assert(email != null),
        assert(photoUrl != null);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'GoogleUser(id: $id, displayName: $displayName, email: $email, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoogleUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl);

  @override
  _$GoogleUserCopyWith<_GoogleUser> get copyWith =>
      __$GoogleUserCopyWithImpl<_GoogleUser>(this, _$identity);
}

abstract class _GoogleUser implements GoogleUser {
  factory _GoogleUser(
      {@required String id,
      @required String displayName,
      @required String email,
      @required String photoUrl}) = _$_GoogleUser;

  @override
  String get id;
  @override
  String get displayName;
  @override
  String get email;
  @override
  String get photoUrl;
  @override
  _$GoogleUserCopyWith<_GoogleUser> get copyWith;
}

class _$InitialUserTearOff {
  const _$InitialUserTearOff();

// ignore: unused_element
  _InitialUser call() {
    return _InitialUser();
  }
}

// ignore: unused_element
const $InitialUser = _$InitialUserTearOff();

mixin _$InitialUser {}

abstract class $InitialUserCopyWith<$Res> {
  factory $InitialUserCopyWith(
          InitialUser value, $Res Function(InitialUser) then) =
      _$InitialUserCopyWithImpl<$Res>;
}

class _$InitialUserCopyWithImpl<$Res> implements $InitialUserCopyWith<$Res> {
  _$InitialUserCopyWithImpl(this._value, this._then);

  final InitialUser _value;
  // ignore: unused_field
  final $Res Function(InitialUser) _then;
}

abstract class _$InitialUserCopyWith<$Res> {
  factory _$InitialUserCopyWith(
          _InitialUser value, $Res Function(_InitialUser) then) =
      __$InitialUserCopyWithImpl<$Res>;
}

class __$InitialUserCopyWithImpl<$Res> extends _$InitialUserCopyWithImpl<$Res>
    implements _$InitialUserCopyWith<$Res> {
  __$InitialUserCopyWithImpl(
      _InitialUser _value, $Res Function(_InitialUser) _then)
      : super(_value, (v) => _then(v as _InitialUser));

  @override
  _InitialUser get _value => super._value as _InitialUser;
}

@factoryMethod
class _$_InitialUser implements _InitialUser {
  _$_InitialUser();

  @override
  String toString() {
    return 'InitialUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _InitialUser implements InitialUser {
  factory _InitialUser() = _$_InitialUser;
}

class _$ErrorUserTearOff {
  const _$ErrorUserTearOff();

// ignore: unused_element
  _ErrorUser call(
      {Exception exception,
      ExceptionType exceptionType,
      int errorCode,
      String errorDescription}) {
    return _ErrorUser(
      exception: exception,
      exceptionType: exceptionType,
      errorCode: errorCode,
      errorDescription: errorDescription,
    );
  }
}

// ignore: unused_element
const $ErrorUser = _$ErrorUserTearOff();

mixin _$ErrorUser {
  Exception get exception;
  ExceptionType get exceptionType;
  int get errorCode;
  String get errorDescription;

  $ErrorUserCopyWith<ErrorUser> get copyWith;
}

abstract class $ErrorUserCopyWith<$Res> {
  factory $ErrorUserCopyWith(ErrorUser value, $Res Function(ErrorUser) then) =
      _$ErrorUserCopyWithImpl<$Res>;
  $Res call(
      {Exception exception,
      ExceptionType exceptionType,
      int errorCode,
      String errorDescription});
}

class _$ErrorUserCopyWithImpl<$Res> implements $ErrorUserCopyWith<$Res> {
  _$ErrorUserCopyWithImpl(this._value, this._then);

  final ErrorUser _value;
  // ignore: unused_field
  final $Res Function(ErrorUser) _then;

  @override
  $Res call({
    Object exception = freezed,
    Object exceptionType = freezed,
    Object errorCode = freezed,
    Object errorDescription = freezed,
  }) {
    return _then(_value.copyWith(
      exception:
          exception == freezed ? _value.exception : exception as Exception,
      exceptionType: exceptionType == freezed
          ? _value.exceptionType
          : exceptionType as ExceptionType,
      errorCode: errorCode == freezed ? _value.errorCode : errorCode as int,
      errorDescription: errorDescription == freezed
          ? _value.errorDescription
          : errorDescription as String,
    ));
  }
}

abstract class _$ErrorUserCopyWith<$Res> implements $ErrorUserCopyWith<$Res> {
  factory _$ErrorUserCopyWith(
          _ErrorUser value, $Res Function(_ErrorUser) then) =
      __$ErrorUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {Exception exception,
      ExceptionType exceptionType,
      int errorCode,
      String errorDescription});
}

class __$ErrorUserCopyWithImpl<$Res> extends _$ErrorUserCopyWithImpl<$Res>
    implements _$ErrorUserCopyWith<$Res> {
  __$ErrorUserCopyWithImpl(_ErrorUser _value, $Res Function(_ErrorUser) _then)
      : super(_value, (v) => _then(v as _ErrorUser));

  @override
  _ErrorUser get _value => super._value as _ErrorUser;

  @override
  $Res call({
    Object exception = freezed,
    Object exceptionType = freezed,
    Object errorCode = freezed,
    Object errorDescription = freezed,
  }) {
    return _then(_ErrorUser(
      exception:
          exception == freezed ? _value.exception : exception as Exception,
      exceptionType: exceptionType == freezed
          ? _value.exceptionType
          : exceptionType as ExceptionType,
      errorCode: errorCode == freezed ? _value.errorCode : errorCode as int,
      errorDescription: errorDescription == freezed
          ? _value.errorDescription
          : errorDescription as String,
    ));
  }
}

@factoryMethod
class _$_ErrorUser implements _ErrorUser {
  _$_ErrorUser(
      {this.exception,
      this.exceptionType,
      this.errorCode,
      this.errorDescription});

  @override
  final Exception exception;
  @override
  final ExceptionType exceptionType;
  @override
  final int errorCode;
  @override
  final String errorDescription;

  @override
  String toString() {
    return 'ErrorUser(exception: $exception, exceptionType: $exceptionType, errorCode: $errorCode, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorUser &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.exceptionType, exceptionType) ||
                const DeepCollectionEquality()
                    .equals(other.exceptionType, exceptionType)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.errorDescription, errorDescription) ||
                const DeepCollectionEquality()
                    .equals(other.errorDescription, errorDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(exceptionType) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(errorDescription);

  @override
  _$ErrorUserCopyWith<_ErrorUser> get copyWith =>
      __$ErrorUserCopyWithImpl<_ErrorUser>(this, _$identity);
}

abstract class _ErrorUser implements ErrorUser {
  factory _ErrorUser(
      {Exception exception,
      ExceptionType exceptionType,
      int errorCode,
      String errorDescription}) = _$_ErrorUser;

  @override
  Exception get exception;
  @override
  ExceptionType get exceptionType;
  @override
  int get errorCode;
  @override
  String get errorDescription;
  @override
  _$ErrorUserCopyWith<_ErrorUser> get copyWith;
}
