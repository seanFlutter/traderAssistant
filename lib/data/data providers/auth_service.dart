import 'dart:async';

import 'package:traderassistant/auth_credentials.dart';

// 1
enum AuthFlowStatus { login, signUp, verification, session }

// 2
class AuthState {
  final AuthFlowStatus? authFlowStatus;

  AuthState({this.authFlowStatus});
}

// 3
class AuthService  {
  // 4
  final authStateController = StreamController<AuthState>();

  // 5
  void showSignUp() {
    print('check: show sign up clicked');
    final state = AuthState(authFlowStatus: AuthFlowStatus.signUp);
    authStateController.add(state);
  }
  // 6
  void showLogin() {
    print('check: show login clicked');
    final state = AuthState(authFlowStatus: AuthFlowStatus.login);
    authStateController.add(state);
  }


// 1
  void loginWithCredentials(AuthCredentials credentials) {
    final state = AuthState(authFlowStatus: AuthFlowStatus.session);
    authStateController.add(state);
  }

// 2
  void signUpWithCredentials(SignUpCredentials credentials) {
    final state = AuthState(authFlowStatus: AuthFlowStatus.verification);
    authStateController.add(state);
  }

  void verifyCode(String verificationCode) {
    final state = AuthState(authFlowStatus: AuthFlowStatus.session);
    authStateController.add(state);
  }

  void logOut() {
    final state = AuthState(authFlowStatus: AuthFlowStatus.login);
    authStateController.add(state);
  }
}