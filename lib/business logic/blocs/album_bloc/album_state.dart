// import 'package:equatable/equatable.dart';
// import 'package:traderassistant/models/album_model.dart';
import 'package:equatable/equatable.dart';
import 'package:traderassistant/models/album_model.dart';
import 'package:traderassistant/models/stocks_lists_response_model.dart';


abstract class StocksState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class StockLoadingState extends StocksState{

}
class StockInitialState extends StocksState{ }

class AlbumGetState extends StocksState{

}

class StockLoadedState extends StocksState{
  final List<Stocks> stocks;
  StockLoadedState({required this.stocks});
}
class StockListErrorstate extends StocksState{

  final error;
  StockListErrorstate({this.error});
}