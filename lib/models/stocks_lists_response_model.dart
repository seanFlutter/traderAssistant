class StocksQueryResponse {
  StocksQueryResponse({
    required this.data,
    required this.status,
  });
  late final List<Stocks> data;
  late final String status;

  factory StocksQueryResponse.fromJson(Map<String, dynamic> json){
   // data = List.from(json['data']).map((e)=>Stocks.fromJson(e)).toList();
    var list = json["data"] as List;
    print('check: type here is ${list.runtimeType}');
   List<Stocks> dataa = list.map((e) => Stocks.fromJson(e)).toList();
   String statuss = json['status'];
   return StocksQueryResponse(data: dataa, status: statuss);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    _data['status'] = status;
    return _data;
  }
}

class Stocks {
  Stocks({
    required this.symbol,
    required this.name,
    required this.currency,
    required this.exchange,
    required this.country,
    required this.type,
  });
  late final String symbol;
  late final String name;
  late final String currency;
  late final String exchange;
  late final String country;
  late final String type;

  Stocks.fromJson(Map<String, dynamic> json){
    symbol = json['symbol'];
    name = json['name'];
    currency = json['currency'];
    exchange = json['exchange'];
    country = json['country'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['symbol'] = symbol;
    _data['name'] = name;
    _data['currency'] = currency;
    _data['exchange'] = exchange;
    _data['country'] = country;
    _data['type'] = type;
    return _data;
  }
}