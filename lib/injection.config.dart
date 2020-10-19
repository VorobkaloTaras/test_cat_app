// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'bloc/auth/app_auth_facade.dart';
import 'repository/app_directory.dart';
import 'core/user/user_injectable_module.dart';
import 'bloc/auth/auth_bloc.dart';
import 'bloc/auth/auth_facade.dart';
import 'bloc/auth/app_injectable_module.dart';
import 'http/cats_http_facade.dart';
import 'bloc/detail/detail_bloc.dart';
import 'http/http_facade.dart';
import 'http/http_service.dart';
import 'http/http_service_injectable_module.dart';
import 'bloc/main/main_page_bloc.dart';
import 'repository/shared_pref.dart';
import 'bloc/sign_in/sign_in_form_bloc.dart';
import 'bloc/splash/splash_page_bloc.dart';
import 'core/user/user.dart';

/// Environment names
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final authInjectableModule = _$AuthInjectableModule();
  final httpServiceInjectableModule = _$HttpServiceInjectableModule();
  final appUserInjectableModule = _$AppUserInjectableModule();
  gh.lazySingleton<AppDirectory>(() => AppDirectory());
  gh.factory<DetailBloc>(() => DetailBloc());
  gh.lazySingleton<FacebookLogin>(() => authInjectableModule.facebookLogIn);
  gh.lazySingleton<GoogleSignIn>(() => authInjectableModule.googleSignIn);
  gh.lazySingleton<HttpService>(() => httpServiceInjectableModule.httpService);
  gh.lazySingleton<SharedPrefs>(() => SharedPrefs());
  gh.factory<SplashPageBloc>(() => SplashPageBloc());
  gh.lazySingleton<User>(() => appUserInjectableModule.appUser);
  gh.lazySingleton<AuthFacade>(
      () => AppAuthFacade(
            get<GoogleSignIn>(),
            get<FacebookLogin>(),
            get<HttpService>(),
            get<SharedPrefs>(),
          ),
      registerFor: {_prod});
  gh.lazySingleton<HttpFacade>(() => CatsHttpFacade(get<HttpService>()),
      registerFor: {_prod});
  gh.lazySingleton<MainPageBloc>(
      () => MainPageBloc(get<HttpFacade>(), get<SharedPrefs>()));
  gh.lazySingleton<SignInFormBloc>(() => SignInFormBloc(get<AuthFacade>()));
  gh.lazySingleton<AuthBloc>(() => AuthBloc(get<AuthFacade>()));
  return get;
}

class _$AuthInjectableModule extends AuthInjectableModule {}

class _$HttpServiceInjectableModule extends HttpServiceInjectableModule {}

class _$AppUserInjectableModule extends AppUserInjectableModule {}
