import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traderassistant/providers/market_provider.dart';
import 'package:traderassistant/ui/notice_screen.dart';

import 'Favorite.dart';
import 'ui/market_screen.dart';
import 'PortFolios.dart';
import 'RemoveAds.dart';
import 'package:provider/provider.dart';
import 'TargetPrice.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
       ChangeNotifierProvider(create: (_) => MarketProvider()),
      ],
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,initialRoute: NoticeScreen.id, routes: {
NoticeScreen.id : (context) => NoticeScreen(),
MarketScreen.id : (context) => MarketScreen(),
    },);
  }
}
////FirstPage


















