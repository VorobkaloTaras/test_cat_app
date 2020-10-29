import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cat_app/bloc/auth/auth_bloc.dart';
import 'package:test_cat_app/bloc/main/main_page_bloc.dart';
import 'package:test_cat_app/bloc/sign_in/sign_in_form_bloc.dart';
import 'package:test_cat_app/bloc/splash/splash_page_bloc.dart';
import 'package:test_cat_app/injection.dart';
import 'package:test_cat_app/repository/app_directory.dart';
import 'package:test_cat_app/repository/shared_pref.dart';
import 'package:test_cat_app/routes/router.gr.dart';

void main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await AppDirectory.init();
  await SharedPrefs.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.checkIfUserIsSigned(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<SplashPageBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<SignInFormBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<MainPageBloc>(),
        ),
      ],
      child: BlocBuilder<SplashPageBloc, SplashPageState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Cats',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            builder: ExtendedNavigator.builder<Router>(router: Router()),
            // home: SplashPage(),
          );
        },
      ),
    );
  }
}

// https://github.com/VorobkaloTaras/test_cat_app
