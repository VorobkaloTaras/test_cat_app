import 'package:test_cat_app/core/user/user_account.dart';

abstract class AuthFacade {
  Future<UserAccount> signIn(AccountType accountType);

  Future<bool> signOut();

  Future<UserAccount> checkIfUserIsAuthenticated();
}
