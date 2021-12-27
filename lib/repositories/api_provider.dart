import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:traderassistant/models/album_model.dart';
import 'package:traderassistant/models/stocks_lists_response_model.dart';

// class ApiProvider {
//   Client client = Client();
//   final _baseUrl =
//       "https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22";
//
//   Future<StocksListsResponseModel> fetchStocksList() async {
//     final response = await client.get(Uri.parse("$_baseUrl"));
//     print(response.body.toString());
//
//     if (response.statusCode == 200) {
//       return StocksListsResponseModel.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed to load weather');
//     }
//   }
//
//   Future<List<Albums>> fetchAlbums() async {
//     final response = await client.get(Uri.parse(_baseUrl));
//     if (response.statusCode == 200) {
//      // return Albums.fromJson(json.decode(response.body));
//
//     return albumsFromJson(json.decode(response.body));
//     } else {
//       Exception('Failed');
//       return albumsFromJson(json.decode(response.body));
//     }
//   }
//
//
// }