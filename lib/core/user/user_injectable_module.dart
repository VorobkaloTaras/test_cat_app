import 'package:injectable/injectable.dart';
import 'package:test_cat_app/core/user/user.dart';

@module
abstract class AppUserInjectableModule {
  @lazySingleton
  User get appUser => User(
      email: null,
      photoUrl: null,
      id: null,
      accountType: null,
      displayName: null);
}
