import 'dart:convert';
import 'dart:developer';

import 'package:traderassistant/models/album_model.dart';
import 'package:http/http.dart' as http;
import 'package:traderassistant/models/stocks_lists_response_model.dart';

class StocksService{
  String BASE_URL = 'https://twelve-data1.p.rapidapi.com/stocks';

Future<List<Stocks>> getStocksResponse () async {
 // List<Stocks> stocksList = [];
  try {
    Map<String, String>? headas = {"x-rapidapi-host": "twelve-data1.p.rapidapi.com", "x-rapidapi-key":"cbbab92058mshcce8d50b89a419ap1fc7a5jsn89e465c1cae9"};
    var response =
    await http.get(Uri.parse(BASE_URL), headers:headas);

    if (response.statusCode == 200) {
print('1');
//final kpai = json.decode(response.body);
return stocksQueryResponseFromJson(response.body).data!;


print('2');


    } else {
      print('check: response not 200, response is ${response.statusCode}');
      throw Exception();
      //return StocksResponse.empty();
     // return StocksResponse.empty();
    }
  } catch (e) {

    print('check: wahala is $e');

throw Exception;


  }
}


}

// abstract class ServiceApi{
//   Future<List<Albums>>getAlbums();
// }

// class AlbumService {
//   String BASE_URL = 'https://jsonplaceholder.typicode.com/albums';
//   String ALBUMS = "/albums";
//
//   Future<List<Albums>> getAlbums() async {
//     try {
//       var uri = Uri.parse(BASE_URL);
//       print('check: 11');
// Map<String, String>? headas = {"x-rapidapi-host": "twelve-data1.p.rapidapi.com", "x-rapidapi-key":"cbbab92058mshcce8d50b89a419ap1fc7a5jsn89e465c1cae9"};
//       var response =
//           await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'), headers:headas);
//       print('check: 22');
//       if (response.statusCode == 200) {
//         var albumslist = albumsFromJson(response.body);
//         print('check: 33');
//         return albumslist;
//       } else {
//         Exception('Faileddd');
//         return List<Albums>.empty();
//       }
//     } catch (e) {
//       print('check: error is $e');
//       return List<Albums>.empty();
//     }
//   }
//   //
//   // Future<List<Albums>> fetchAlbums() async {
//   //   final response = await client.get(Uri.parse(_baseUrl));
//   //   if (response.statusCode == 200) {
//   //     // return Albums.fromJson(json.decode(response.body));
//   //
//   //     return albumsFromJson(json.decode(response.body));
//   //   } else {
//   //     Exception('Failed');
//   //     return albumsFromJson(json.decode(response.body));
//   //   }
//   // }
// }
