import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:traderassistant/data/repositories/stocks_respository.dart';
import 'package:traderassistant/presentation/pages/album_page.dart';
import 'package:traderassistant/presentation/pages/notice_screen.dart';
import 'package:traderassistant/presentation/screens/authentication/login_screen.dart';
import 'presentation/pages/market_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

      /// Providers are above [MyApp] instead of inside it, so that tests
      /// can use [MyApp] while mocking the providers
      MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
    //  home: MarketScreen(),
      routes: {

        NoticeScreen.id: (context) => NoticeScreen(),

        MarketScreen.id: (context) => MarketScreen(),
        LoginScreen.id: (context) => LoginScreen(),



      },
    );
  }
}
////FirstPage
