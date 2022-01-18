
import 'dart:io';
import 'package:traderassistant/blocs/album_bloc/album_events.dart';
import 'package:traderassistant/blocs/album_bloc/album_state.dart';
import 'package:equatable/equatable.dart';
import 'package:traderassistant/models/album_model.dart';
import 'package:traderassistant/models/stocks_lists_response_model.dart';
import 'package:traderassistant/data/repositories/stocks_respository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traderassistant/models/album_model.dart';
import 'package:traderassistant/data/data%20providers/api_service.dart';

class StocksBloc extends Bloc<StockEvent,StocksState>
{

  final StocksRepository stocksrepository;
  late List<Stocks>? stocksResponse;
  StocksBloc({required this.stocksrepository, this.stocksResponse}) : super(StockInitialState()) {
    on<StockGetEvent>((event, emit) async {
      emit(StockLoadingState());
      try {
        print('check: 1 gettinga album list');
        //      listAlbums = await albumsrepository.getAlbumsList();
        stocksResponse = await StocksService().getStocksResponse();
        print('check: 2 confirm');
        print('check: listAlbums is $stocksResponse');
        emit (StockLoadedState(stocks: stocksResponse!));

      }on SocketException {
        emit( StockListErrorstate(
            error: ('No Internet'),
      ));
      } on HttpException {
      emit( StockListErrorstate(
      error: ('No Service'),
      ));
      } on FormatException {
      emit( StockListErrorstate(
      error: ('No Format Exception'),
      ));
      } catch (e) {
      print(e.toString());
      emit( StockListErrorstate(
      error: ('Un Known Error ${e.toString()}'),
      ));
      }
    });
  }


//   @override
//   Stream<AlbumsState> mapEventToState(AlbumEvent event) async* {
//
//     switch(event)
//     {
//       case  AlbumGetEvent():
// {
//   print('checklka');
//         yield  AlbumLoadingState();
//
//         try {
//           print('check: 1 gettinga album list');
//     //      listAlbums = await albumsrepository.getAlbumsList();
//           listAlbums = await AlbumService().getAlbums();
// print('check: 2 confirm');
//           yield AlbumLoadedState(albums: listAlbums!);
//
//         }on SocketException {
//           yield AlbumListErrorstate(
//             error: ('No Internet'),
//           );
//         } on HttpException {
//           yield AlbumListErrorstate(
//             error: ('No Service'),
//           );
//         } on FormatException {
//           yield AlbumListErrorstate(
//             error: ('No Format Exception'),
//           );
//         } catch (e) {
//           print(e.toString());
//           yield AlbumListErrorstate(
//             error: ('Un Known Error ${e.toString()}'),
//           );
//         }}
//         break;
//
//     }
//
//   }

}