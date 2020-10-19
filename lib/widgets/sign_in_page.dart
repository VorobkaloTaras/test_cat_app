import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_cat_app/bloc/sign_in/sign_in_form_bloc.dart';
import 'package:test_cat_app/core/user/user_account.dart';
import 'package:test_cat_app/injection.dart';
import 'package:test_cat_app/routes/router.gr.dart';
import 'package:test_cat_app/widgets/no_connection_page.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SignInFormBloc signInFormBloc = getIt<SignInFormBloc>()..add(SignInFormEvent.signOutPressed());
    debugPrint("SignInPage created");
    return BlocProvider(
      create: (_) => signInFormBloc,
      child: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          // debugPrint(
          //     "SignInPage listener state = ${state.signInState.toString()}");
          switch (state.signInState) {
            case SignInState.signedOut:
              debugPrint("SignInPage signedOut");
              // TODO: Handle this case.
              break;
            case SignInState.submitting:
              // debugPrint("SignInPage submitting");
              // TODO: Handle this case.
              break;
            case SignInState.signedIn:
              debugPrint("SignInPage signedIn");
              Navigator.of(context).pushReplacementNamed(
                Routes.mainPage,
                arguments: {"userData": state.userAccount, "requestData": true},
              );
              break;
            case SignInState.networkError:
              debugPrint("SignInPage networkError detected");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NoConnectionPage()),
              );
              break;
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(size: 150),
                    SizedBox(height: 50),
                    _signInGoogleButton(context, state, signInFormBloc),
                    SizedBox(height: 30),
                    _signInFacebookButton(context, state),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _signInGoogleButton(BuildContext context, SignInFormState state, SignInFormBloc signInFormBloc) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        debugPrint(
            "SignInPage _signInGoogleButton pressed state.isSignedIn = ${state.signInState.toString()}");
        signInFormBloc.add(SignInFormEvent.signInPressed(AccountType.google));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _signInFacebookButton(BuildContext context, SignInFormState state) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        debugPrint(
            "SignInPage _signInFacebookButton pressed state.isSignedIn = ${state.signInState.toString()}");
        context
            .bloc<SignInFormBloc>()
            .add(SignInFormEvent.signInPressed(AccountType.facebook));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/facebook_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Facebook',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
