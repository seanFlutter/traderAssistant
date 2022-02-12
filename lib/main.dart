import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traderassistant/data/data%20providers/auth_service.dart';
import 'package:traderassistant/presentation/screens/authentication/camera_flow.dart';

import 'package:traderassistant/presentation/screens/authentication/login_screen.dart';
import 'package:traderassistant/presentation/screens/authentication/sign_up_screen.dart';
import 'package:traderassistant/presentation/screens/authentication/verification_screen.dart';

void main() {
  runApp(

      /// Providers are above [MyApp] instead of inside it, so that tests
      /// can use [MyApp] while mocking the providers
      MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _authService = AuthService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _authService.showLogin();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: LoginScreen.id,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: StreamBuilder<AuthState>(
          stream: _authService.authStateController.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Navigator(
                pages: [
                  // 4
                  // Show Login Page
                  if (snapshot.data!.authFlowStatus == AuthFlowStatus.login)
                    MaterialPage(
                        child: LoginScreen(
                      shouldShowSignUp: _authService.showSignUp,
                      didProvideCredentials: _authService.loginWithCredentials,
                    )),

                  // 5
                  // Show Sign Up Page
                  if (snapshot.data!.authFlowStatus == AuthFlowStatus.signUp)
                    MaterialPage(
                        child: SignUpScreen(
                          didProvideCredentials: _authService.signUpWithCredentials,
                      shouldShowLogin: _authService.showLogin,
                    )),

                  if (snapshot.data!.authFlowStatus == AuthFlowStatus.verification)
                    MaterialPage(child: VerificationPage(
                        didProvideVerificationCode: _authService.verifyCode)),

                  // Show Camera Flow
                  if (snapshot.data!.authFlowStatus == AuthFlowStatus.session)
                    MaterialPage(
                        child: CameraFlow(shouldLogOut: _authService.logOut))
                ],
                onPopPage: (route, result) => route.didPop(result),
              );
            } else {
              // 6
              return Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              );
            }
          }),
      // routes: {
      //   NoticeScreen.id: (context) => NoticeScreen(),
      //   MarketScreen.id: (context) => MarketScreen(),
      //   LoginScreen.id: (context) => LoginScreen(),
      //   SignUpScreen.id: (context) => SignUpScreen(),
      // },
    );
  }
}
////FirstPage
