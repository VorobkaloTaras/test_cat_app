import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:test_cat_app/core/user/user_account.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  @factoryMethod
  const factory User({
    @required String id,
    @required String displayName,
    @required String email,
    @required String photoUrl,
    @required AccountType accountType,
    bool isSignedIn,
  }) = _User;
}

