
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traderassistant/blocs/album_bloc/album_bloc.dart';
import 'package:traderassistant/blocs/album_bloc/album_events.dart';
import 'package:traderassistant/blocs/album_bloc/album_state.dart';
import 'package:traderassistant/models/album_model.dart';
import 'package:traderassistant/models/stocks_lists_response_model.dart';
import 'package:traderassistant/repositories/stocks_respository.dart';

class AlbumClass extends StatefulWidget{
  static const id = 'album_class';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AlbumClassState();
  }

}

class AlbumClassState extends State<AlbumClass>{
  bool isdark=true;


  @override
  void initState() {
    loadAlbums();
    // TODO: implement initState
    super.initState();
  }

  loadAlbums() async
  {
    print('check: loading albums');
    context.read<StocksBloc>().add(AlbumGetEvent());
    // context.read<AlbumsBloc>().add(AlbumEvents.fetchAlbums);
    print('check: loaded albums');
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(actions: [
        Switch(
          value:  isdark,
          onChanged: (val) async {

          //  _setTheme(val);
            isdark=!isdark;
          },
        )
      ],),
      body: BlocBuilder<StocksBloc,AlbumsState>(builder: (BuildContext context,AlbumsState state){
        print('check: state is $state');
        if (state is AlbumListErrorstate) {
          print('check: error here');
          final error = state.error;
          String message = '${error.toString()}\nTap to Retry.';
          return Text(
            message,
          );
        }
        if (state is AlbumLoadedState) {
          print('check: state is correct');
         List<Stocks> stocks = state.stocks;
          print('album list is $stocks');
          return _list(stocks);

        }
        return Center(child: CircularProgressIndicator(),);



      }),
    );
  }

  Widget _list(
      List<Stocks> stockes) {
    return ListView.builder(
      itemCount: stockes.length,
      itemBuilder: (_, index) {
        var stocks = stockes[index];
        return Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  stocks.name!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
              ),
              Divider(color: Theme.of(context).textTheme.bodyText1!.color,),
            ],
          ),
        );;
      },
    );

  }


  // Widget _list(List<Stocks> stockes) {
  //   return ListView.builder(
  //     itemCount: stockes.length,
  //     itemBuilder: (_, index) {
  //       Stocks stocks = stockes[index];
  //       return Container(
  //         padding: EdgeInsets.all(8.0),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               child: Text(
  //                 stocks.name!,
  //                 style: TextStyle(
  //                   fontSize: 20,
  //                   color: Theme.of(context).textTheme.bodyText1!.color,
  //                 ),
  //               ),
  //             ),
  //             Divider(color: Theme.of(context).textTheme.bodyText1!.color,),
  //           ],
  //         ),
  //       );;
  //     },
  //   );
  //
  // }
  // _setTheme(bool darkTheme) async {
  //   AppTheme selectedTheme =
  //   darkTheme ? AppTheme.lightTheme : AppTheme.darkTheme;
  //   print(darkTheme);
  //   context.read<ThemekBloc>().add(ThemekEvent(appTheme: selectedTheme));
  //   //Preferences.saveTheme(selectedTheme);
  // }

}


