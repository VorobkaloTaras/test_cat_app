import 'package:auto_route/auto_route_annotations.dart';
import 'package:test_cat_app/widgets/main_page.dart';
import 'package:test_cat_app/widgets/sign_in_page.dart';
import 'package:test_cat_app/widgets/splash_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage, initial: false),
  MaterialRoute(page: MainPage, initial: false),
])
class $Router {}
