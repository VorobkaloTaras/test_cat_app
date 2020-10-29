import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;
import 'package:test_cat_app/bloc/sign_in/sign_in_form_bloc.dart';
import 'package:test_cat_app/core/cats/cat.dart';
import 'package:test_cat_app/core/cats/cats_data.dart';
import 'package:test_cat_app/core/facts/fact_data.dart';
import 'package:test_cat_app/core/user/app_user.dart';
import 'package:test_cat_app/core/user/user_account.dart';
import 'package:test_cat_app/repository/app_directory.dart';

class HttpService {
  final int itemLimit = 10;
  int pageNumber = -1;
  final String apiKey = "a9916325-9511-42c1-a783-d0538a22fa4d";
  final AppDirectory _appDirectory = AppDirectory();

  Future<Cats> getCats() async {
    // debugPrint("sending request");
    pageNumber = pageNumber + 1;
    Response response;
    try {
      response = await get(
          "https://api.thecatapi.com/v1/images/search?api_key=$apiKey&limit=$itemLimit&page=$pageNumber&order=DESC");
      // debugPrint('cats response');
    } on Exception catch (e) {
      debugPrint('get Cats exception');
      return Cats(list: null, success: false, exception: e);
    }
    // debugPrint("response received");
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Cat> catsList =
          body.map((dynamic item) => Cat.fromJson(item)).toList();
      catsList.forEach((cat) {
        cat.filePath = p.join(
            _appDirectory.path,
            cat.url
                .replaceAll(':', '')
                .replaceAll('/', '')
                .replaceAll(".", "_")
                .toString());
      });
      return Cats(
        list: catsList,
        success: true,
        paginationPage: int.parse(response.headers['pagination-page']),
        paginationLimit: int.parse(response.headers['pagination-limit']),
        paginationCount: int.parse(response.headers['pagination-count']),
      );
    } else {
      debugPrint('getCats error');
      return Cats(list: null, success: false);
    }
  }

  Future<Facts> getFacts() async {
    Response response;
    try {
      response = await get(
          'https://catfact.ninja/facts?page=$pageNumber&limit=$itemLimit&max_length=300');
      // debugPrint('facts response');
    } on Exception catch (e) {
      debugPrint('getFacts exception');
      return Facts(data: null, success: false, exception: e);
    }
    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      Facts facts = Facts.fromJson(body);
      return facts;
    } else {
      debugPrint('getFacts error');
      return Facts(data: null, success: false);
    }
  }

  Future<UserAccount> getFacebookUserAccount(String token) async {
    Response response;
    try {
      response = await get(
          "https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture&access_token=$token");
    } on SocketException catch (e) {
      debugPrint('getFacebookUserProfile SocketException ');
      return UserAccount(
          accountType: AccountType.facebook,
          signInState: SignInState.networkError,
          appUser: ErrorUser(
              exception: e,
              exceptionType: ExceptionType.socket,
              errorDescription: e.message,
              errorCode: e.osError.errorCode));
    } on HttpException catch (e) {
      debugPrint('getFacebookUserProfile HttpException');
      return UserAccount(
          accountType: AccountType.facebook,
          signInState: SignInState.networkError,
          appUser: ErrorUser(
            exception: e,
            exceptionType: ExceptionType.http,
            errorDescription: e.message,
          ));
    } on Exception catch (e) {
      debugPrint('getFacebookUserProfile Exception');
      UserAccount(
          accountType: AccountType.facebook,
          signInState: SignInState.error,
          appUser: ErrorUser(
              exception: e,
              exceptionType: ExceptionType.undefined,
              errorDescription: e.toString()));
    }
    if (response.statusCode == 200) {
      Map<String, dynamic> profile = jsonDecode(response.body);
      if (profile != null) {
        return UserAccount(
          accountType: AccountType.facebook,
          signInState: SignInState.signedIn,
          appUser: FacebookUser(
              id: profile['id'],
              name: profile['name'],
              photoUrl: profile['picture']['data']['url'],
              email: profile['email'],
              firstName: profile['first_name'],
              lastName: profile['last_name'],
              facebookLoginStatus: FacebookLoginStatus.loggedIn),
        );
      } else {
        return null;
      }
    } else {
      return UserAccount(
          accountType: AccountType.facebook,
          signInState: SignInState.error,
          appUser: ErrorUser(
              errorCode: response.statusCode,
              errorDescription: response.reasonPhrase));
    }
  }
}
