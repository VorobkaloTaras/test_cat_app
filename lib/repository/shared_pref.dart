import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_cat_app/core/cats/cats_data.dart';
import 'package:test_cat_app/core/facts/fact_data.dart';
import 'package:test_cat_app/core/user/app_user.dart';

@lazySingleton
class SharedPrefs {
  static SharedPreferences _sharedPrefs;

  SharedPrefs() {
    init();
  }

  static init() async {
    if (_sharedPrefs == null) {
      _sharedPrefs = await SharedPreferences.getInstance();
    }
  }

  Cats get cats {
    String data = _sharedPrefs.getString(catsData);
    if (data != null) {
      return Cats.fromJson(jsonDecode(data));
    }else{
      return null;
    }
  }

  Cats get favoriteCats {
    String data = _sharedPrefs.getString(favoriteCatsData);
    if (data != null) {
      return Cats.fromJson(jsonDecode(data));
    }else{
      return null;
    }
  }

  set cats(Cats value) {
    // debugPrint('cats saved');
    _sharedPrefs.setString(catsData, jsonEncode(value.toJson()));
  }

  set favoriteCats(Cats value) {
    // debugPrint('cats saved');
    _sharedPrefs.setString(favoriteCatsData, jsonEncode(value.toJson()));
  }

  Facts get facts {
    String data = _sharedPrefs.getString(factsData);
    if (data != null) {
      return Facts.fromJson(jsonDecode(data));
    }else{
      return null;
    }
  }

  set facts(Facts value) {
    // debugPrint('facts saved');
    _sharedPrefs.setString(factsData, jsonEncode(value.toJson()));
  }

  Future<FacebookUser> get getFacebookUser async {
    String user = _sharedPrefs.getString(facebookUser);
    if(user != null) {
      return FacebookUser.fromJson(jsonDecode(user));
    }
    return null;
  }

  set saveFacebookUser(FacebookUser user){
    debugPrint('facebook user is saved');
    _sharedPrefs.setString(facebookUser, jsonEncode(user.toJson));
  }
}

const String favoriteCatsData = "favorite_cats_data";
const String catsData = "cats_data";
const String factsData = "facts_data";
const String facebookUser = "facebook_user_profile";
