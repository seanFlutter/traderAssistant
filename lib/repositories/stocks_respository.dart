import 'package:traderassistant/models/album_model.dart';
import 'package:traderassistant/models/stocks_lists_response_model.dart';
import 'package:traderassistant/repositories/api_provider.dart';
import 'package:traderassistant/services/api_service.dart';

class StocksRepository {
  // ApiProvider appApiProvider = ApiProvider();

//Future<List<Albums>> getAlbumsList() => AlbumService().getAlbums();
//Future<StocksListResponse> fetchStocksList() => appApiProvider.fetchStocksList();
Future<List<Stocks>> fetchStocks() => StocksService().getStocksResponse();

}