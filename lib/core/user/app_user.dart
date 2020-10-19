import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_user.freezed.dart';

abstract class AppUser {
  AppUser();
}

@freezed
abstract class FacebookUser extends AppUser with _$FacebookUser {
  @factoryMethod
  factory FacebookUser({
    String name,
    String firstName,
    String lastName,
    String email,
    String photoUrl,
    String id,
    @required FacebookLoginStatus facebookLoginStatus,
    int facebookLoginStatusIndex,
  }) = _FacebookUser;

  @late
  Map<dynamic, dynamic> get toJson => {
        'name': name,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'photoUrl': photoUrl,
        'id': id,
        'facebookLoginStatusIndex': facebookLoginStatus.index,
      };

  static FacebookUser fromJson(Map<String, dynamic> json) {
    return FacebookUser(
      name: json['name'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String,
      id: json['id'] as String,
      facebookLoginStatus:
          _getFacebookLoginStatus(json['facebookLoginStatusIndex']),
    );
  }

  static FacebookLoginStatus _getFacebookLoginStatus(int index) {
    return FacebookLoginStatus.values[index];
  }
}

@freezed
abstract class GoogleUser extends AppUser with _$GoogleUser {

  @factoryMethod
  factory GoogleUser({
    @required String id,
    @required String displayName,
    @required String email,
    @required String photoUrl,
  }) = _GoogleUser;
}

@freezed
abstract class InitialUser extends AppUser with _$InitialUser {
  @factoryMethod
  factory InitialUser() = _InitialUser;
}

@freezed
abstract class ErrorUser extends AppUser with _$ErrorUser {
  @factoryMethod
  factory ErrorUser({
    Exception exception,
    ExceptionType exceptionType,
    int errorCode,
    String errorDescription,
  }) = _ErrorUser;
}

enum ExceptionType { http, socket, undefined, network }
