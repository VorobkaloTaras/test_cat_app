import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_cat_app/bloc/auth/auth_bloc.dart';
import 'package:test_cat_app/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            debugPrint("initial");
          },
          authenticated: (authenticated) {
            debugPrint("authenticated");
            return Timer(
                Duration(seconds: 1),
                () => Navigator.of(context)
                        .pushReplacementNamed(Routes.mainPage, arguments: {
                      "userData": authenticated.account,
                      "requestData": true
                    }));
          },
          unauthenticated: (_) {
            debugPrint("Splash page unauthenticated");
            return Timer(
                Duration(seconds: 1),
                () => Navigator.of(context)
                    .pushReplacementNamed(Routes.signInPage));
          },
          // facebookSocketException: (SocketException value) {
          //   debugPrint("Splash Page SocketException");
          // },
        );
      },
      child: Scaffold(
        body: Center(
          child: Stack(children: [
            Image.asset('assets/cat.png'),
          ]),
        ),
      ),
    );
  }
}
