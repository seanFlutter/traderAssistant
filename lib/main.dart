import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traderassistant/blocs/album_bloc/album_bloc.dart';
import 'package:traderassistant/providers/market_provider.dart';
import 'package:traderassistant/repositories/stocks_respository.dart';
import 'package:traderassistant/ui/album_page.dart';
import 'package:traderassistant/ui/notice_screen.dart';
import 'ui/market_screen.dart';
import 'package:provider/provider.dart';
import 'targetPrice.dart';

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
    return MaterialApp(

     // initialRoute: NoticeScreen.id,
      home: BlocProvider(create: (context)=>StocksBloc(stocksrepository: StocksRepository(),),
          child:
        AlbumClass(),
        //MarketScreen()
      ),
      routes: {
NoticeScreen.id : (context) => NoticeScreen(),
MarketScreen.id : (context) => MarketScreen(),
     },
    );
  }
}
////FirstPage


















