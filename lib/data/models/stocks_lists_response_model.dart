// To parse this JSON data, do
//
//     final stocksQueryResponse = stocksQueryResponseFromJson(jsonString);

import 'dart:convert';

StocksQueryResponse stocksQueryResponseFromJson(String str) => StocksQueryResponse.fromJson(json.decode(str));

String stocksQueryResponseToJson(StocksQueryResponse data) => json.encode(data.toJson());

class StocksQueryResponse {
  StocksQueryResponse({
    this.data,
    this.status,
  });

  final  List<Stocks>? data;
  final String? status;

  StocksQueryResponse copyWith({
    List<Stocks>? data,
    String? status,
  }) =>
      StocksQueryResponse(
        data: data ?? this.data,
        status: status ?? this.status,
      );

  factory StocksQueryResponse.fromJson(Map<String, dynamic> json) => StocksQueryResponse(
    data: List<Stocks>.from(json["data"].map((x) => Stocks.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "status": status,
  };
}

class Stocks {
  Stocks({
    this.symbol,
    this.name,
    this.currency,
    this.exchange,
    this.country,
    this.type,
  });

  final String? symbol;
  final String? name;
  final String? currency;
  final String? exchange;
  final String? country;
  final String? type;

  Stocks copyWith({
    String? symbol,
    String? name,
    String? currency,
    String? exchange,
    String? country,
    String? type,
  }) =>
      Stocks(
        symbol: symbol ?? this.symbol,
        name: name ?? this.name,
        currency: currency ?? this.currency,
        exchange: exchange ?? this.exchange,
        country: country ?? this.country,
        type: type ?? this.type,
      );

  factory Stocks.fromJson(Map<String, dynamic> json) => Stocks(
    symbol: json["symbol"],
    name: json["name"],
    currency: json["currency"],
    exchange: json["exchange"],
    country: json["country"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "symbol": symbol,
    "name": name,
    "currency": currency,
    "exchange": exchange,
    "country": country,
    "type": type,
  };
}
