

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traderassistant/presentation/constants/constants.dart';

import 'package:traderassistant/presentation/widgets/reusable_buttons.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController passwordController = TextEditingController();
  TextEditingController? emailController;

  bool showLoader = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: commonMargin, right: commonMargin, top: commonMargin * 2),
        decoration: BoxDecoration(
          image: DecorationImage(
             image: AssetImage('assets/images/stock.jpeg`'
            ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
              //  child: GlobalBackButton(),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Sign in to your E-closet',

              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: emailController,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                decoration: kTextFieldDecoration.copyWith(hintText: 'Email'),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Password'),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 80,
              ),
              ReusableButtonGlobal(
                title: 'Continue',
                onPressed: () async {
                  //  Navigator.pushNamed(context, CreatePasswordScreen.id);
                  ///network check, update this
                  var connectivityResult =
                  await Connectivity().checkConnectivity();
                  if (connectivityResult != ConnectivityResult.mobile &&
                      connectivityResult != ConnectivityResult.wifi) {
                    displayToast('No internet connection');
                    return;
                  }





                },
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      )
    );
  }
}