// To parse this JSON data, do
//
//     final stocksListResponse = stocksListResponseFromJson(jsonString);

import 'dart:convert';

StocksListResponse stocksListResponseFromJson(String str) => StocksListResponse.fromJson(json.decode(str));

String stocksListResponseToJson(StocksListResponse data) => json.encode(data.toJson());

class StocksListResponse {
  StocksListResponse({
    this.data,
    this.status,
  });

  List<Stocks>? data;
  String? status;

  factory StocksListResponse.fromJson(Map<String, dynamic> json) => StocksListResponse(
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

  String? symbol;
  String? name;
  Currency? currency;
  Exchange? exchange;
  Country? country;
  Type? type;

  factory Stocks.fromJson(Map<String, dynamic> json) => Stocks(
    symbol: json["symbol"],
    name: json["name"],
    currency: currencyValues.map![json["currency"]],
    exchange: exchangeValues.map![json["exchange"]],
    country: countryValues.map![json["country"]],
    type: typeValues.map![json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "symbol": symbol,
    "name": name,
    "currency": currencyValues.reverse[currency],
    "exchange": exchangeValues.reverse[exchange],
    "country": countryValues.reverse[country],
    "type": typeValues.reverse[type],
  };
}

enum Country { GERMANY, CHINA, SOUTH_KOREA, HONG_KONG, MALAYSIA, TAIWAN, INDIA, UNITED_KINGDOM, ITALY, MEXICO, SAUDI_ARABIA, JAPAN, AUSTRALIA, SINGAPORE, FRANCE, VENEZUELA_BOLIVARIAN_REPUBLIC_OF, NORWAY, SWEDEN, THAILAND, NETHERLANDS, DENMARK, UNITED_KINGDOM_OF_GREAT_BRITAIN_AND_NORTHERN_IRELAND, SPAIN, HUNGARY, SOUTH_AFRICA, IRELAND, UNITED_STATES, CANADA, BRAZIL, GREECE, INDONESIA, FINLAND, SWITZERLAND, BRITISH_VIRGIN_ISLANDS, CHILE, ARGENTINA, THE_NETHERLANDS, NEW_ZEALAND, VENEZUELA, BELGIUM, ISRAEL, QATAR, RUSSIAN_FEDERATION, PHILIPPINES, TURKEY, LATVIA, AUSTRIA, DOMINICAN_REPUBLIC, PORTUGAL, POLAND, LITHUANIA, LUXEMBOURG, CZECH_REPUBLIC, BERMUDA, GUERNSEY, ESTONIA, KOREA, EMPTY, GUAM, KAZAKHSTAN, LEBANON, PAPUA_NEW_GUINEA, GIBRALTAR, PANAMA, CYPRUS, JERSEY, EGYPT, COLOMBIA, PUERTO_RICO, BAHAMAS, CAYMAN_ISLANDS, BELIZE, PERU, MONACO, SRI_LANKA, MACEDONIA_THE_FORMER_YUGOSLAV_REPUBLIC_OF, ROMANIA, GHANA, KYRGYZSTAN, SERBIA, ISLE_OF_MAN, NIGERIA, PAKISTAN, ANGUILLA, MALTA, MONGOLIA, MONTENEGRO, URUGUAY, SLOVENIA, UNITED_ARAB_EMIRATES, CURACAO, BARBADOS, BELARUS, GEORGIA, SAINT_MARTIN_FRENCH_PART, NAMIBIA, SLOVAKIA, VIETNAM, LIECHTENSTEIN }

final countryValues = EnumValues({
  "Anguilla": Country.ANGUILLA,
  "Argentina": Country.ARGENTINA,
  "Australia": Country.AUSTRALIA,
  "Austria": Country.AUSTRIA,
  "Bahamas": Country.BAHAMAS,
  "Barbados": Country.BARBADOS,
  "Belarus": Country.BELARUS,
  "Belgium": Country.BELGIUM,
  "Belize": Country.BELIZE,
  "Bermuda": Country.BERMUDA,
  "Brazil": Country.BRAZIL,
  "British Virgin Islands": Country.BRITISH_VIRGIN_ISLANDS,
  "Canada": Country.CANADA,
  "Cayman Islands": Country.CAYMAN_ISLANDS,
  "Chile": Country.CHILE,
  "China": Country.CHINA,
  "Colombia": Country.COLOMBIA,
  "Curacao": Country.CURACAO,
  "Cyprus": Country.CYPRUS,
  "Czech Republic": Country.CZECH_REPUBLIC,
  "Denmark": Country.DENMARK,
  "Dominican Republic": Country.DOMINICAN_REPUBLIC,
  "Egypt": Country.EGYPT,
  "": Country.EMPTY,
  "Estonia": Country.ESTONIA,
  "Finland": Country.FINLAND,
  "France": Country.FRANCE,
  "Georgia": Country.GEORGIA,
  "Germany": Country.GERMANY,
  "Ghana": Country.GHANA,
  "Gibraltar": Country.GIBRALTAR,
  "Greece": Country.GREECE,
  "Guam": Country.GUAM,
  "Guernsey": Country.GUERNSEY,
  "Hong Kong": Country.HONG_KONG,
  "Hungary": Country.HUNGARY,
  "India": Country.INDIA,
  "Indonesia": Country.INDONESIA,
  "Ireland": Country.IRELAND,
  "Isle of Man": Country.ISLE_OF_MAN,
  "Israel": Country.ISRAEL,
  "Italy": Country.ITALY,
  "Japan": Country.JAPAN,
  "Jersey": Country.JERSEY,
  "Kazakhstan": Country.KAZAKHSTAN,
  "Korea": Country.KOREA,
  "Kyrgyzstan": Country.KYRGYZSTAN,
  "Latvia": Country.LATVIA,
  "Lebanon": Country.LEBANON,
  "Liechtenstein": Country.LIECHTENSTEIN,
  "Lithuania": Country.LITHUANIA,
  "Luxembourg": Country.LUXEMBOURG,
  "Macedonia, the former Yugoslav Republic of": Country.MACEDONIA_THE_FORMER_YUGOSLAV_REPUBLIC_OF,
  "Malaysia": Country.MALAYSIA,
  "Malta": Country.MALTA,
  "Mexico": Country.MEXICO,
  "Monaco": Country.MONACO,
  "Mongolia": Country.MONGOLIA,
  "Montenegro": Country.MONTENEGRO,
  "Namibia": Country.NAMIBIA,
  "Netherlands": Country.NETHERLANDS,
  "New Zealand": Country.NEW_ZEALAND,
  "Nigeria": Country.NIGERIA,
  "Norway": Country.NORWAY,
  "Pakistan": Country.PAKISTAN,
  "Panama": Country.PANAMA,
  "Papua New Guinea": Country.PAPUA_NEW_GUINEA,
  "Peru": Country.PERU,
  "Philippines": Country.PHILIPPINES,
  "Poland": Country.POLAND,
  "Portugal": Country.PORTUGAL,
  "Puerto Rico": Country.PUERTO_RICO,
  "Qatar": Country.QATAR,
  "Romania": Country.ROMANIA,
  "Russian Federation": Country.RUSSIAN_FEDERATION,
  "Saint Martin (French part)": Country.SAINT_MARTIN_FRENCH_PART,
  "Saudi Arabia": Country.SAUDI_ARABIA,
  "Serbia": Country.SERBIA,
  "Singapore": Country.SINGAPORE,
  "Slovakia": Country.SLOVAKIA,
  "Slovenia": Country.SLOVENIA,
  "South Africa": Country.SOUTH_AFRICA,
  "South Korea": Country.SOUTH_KOREA,
  "Spain": Country.SPAIN,
  "Sri Lanka": Country.SRI_LANKA,
  "Sweden": Country.SWEDEN,
  "Switzerland": Country.SWITZERLAND,
  "Taiwan": Country.TAIWAN,
  "Thailand": Country.THAILAND,
  "The Netherlands": Country.THE_NETHERLANDS,
  "Turkey": Country.TURKEY,
  "United Arab Emirates": Country.UNITED_ARAB_EMIRATES,
  "United Kingdom": Country.UNITED_KINGDOM,
  "United Kingdom of Great Britain and Northern Ireland": Country.UNITED_KINGDOM_OF_GREAT_BRITAIN_AND_NORTHERN_IRELAND,
  "United States": Country.UNITED_STATES,
  "Uruguay": Country.URUGUAY,
  "Venezuela": Country.VENEZUELA,
  "Venezuela, Bolivarian Republic of": Country.VENEZUELA_BOLIVARIAN_REPUBLIC_OF,
  "Vietnam": Country.VIETNAM
});

enum Currency { EUR, CNY, KRW, HKD, MYR, TWD, USD, INR, SEK, NOK, MXN, SAR, GBP, JPY, AUD, SGD, THB, DKK, HUF, ZAC, CAD, BRL, IDR, CHF, ARS, CLP, NZD, ILA, EMPTY, QAR, RUB, TRY, CZK, EGP }

final currencyValues = EnumValues({
  "ARS": Currency.ARS,
  "AUD": Currency.AUD,
  "BRL": Currency.BRL,
  "CAD": Currency.CAD,
  "CHF": Currency.CHF,
  "CLP": Currency.CLP,
  "CNY": Currency.CNY,
  "CZK": Currency.CZK,
  "DKK": Currency.DKK,
  "EGP": Currency.EGP,
  "": Currency.EMPTY,
  "EUR": Currency.EUR,
  "GBP": Currency.GBP,
  "HKD": Currency.HKD,
  "HUF": Currency.HUF,
  "IDR": Currency.IDR,
  "ILA": Currency.ILA,
  "INR": Currency.INR,
  "JPY": Currency.JPY,
  "KRW": Currency.KRW,
  "MXN": Currency.MXN,
  "MYR": Currency.MYR,
  "NOK": Currency.NOK,
  "NZD": Currency.NZD,
  "QAR": Currency.QAR,
  "RUB": Currency.RUB,
  "SAR": Currency.SAR,
  "SEK": Currency.SEK,
  "SGD": Currency.SGD,
  "THB": Currency.THB,
  "TRY": Currency.TRY,
  "TWD": Currency.TWD,
  "USD": Currency.USD,
  "ZAC": Currency.ZAC
});

enum Exchange { FSX, MUNICH, SZSE, KRX, HKEX, MYX, TWSE, XSTU, XETR, BSE, LSE, MTA, BMV, TADAWUL, JPX, XSAP, ASX, XDUS, SGX, EURONEXT, BVCC, XHAM, OSE, NSE, OMX, SET, OMXC, BME, JSE, SSE, ISE, NYSE, TSXV, BOVESPA, OTC, ASE, TSX, NASDAQ, IDX, OMXH, SIX, BVS, BCBA, NEO, CSE, NZX, TASE, QE, MOEX, BIST, XHAN, XBER, OMXV, PSE, OMXT, OMXR, CBOE, VSE, EGX, IEX }

final exchangeValues = EnumValues({
  "ASE": Exchange.ASE,
  "ASX": Exchange.ASX,
  "BCBA": Exchange.BCBA,
  "BIST": Exchange.BIST,
  "BME": Exchange.BME,
  "BMV": Exchange.BMV,
  "Bovespa": Exchange.BOVESPA,
  "BSE": Exchange.BSE,
  "BVCC": Exchange.BVCC,
  "BVS": Exchange.BVS,
  "CBOE": Exchange.CBOE,
  "CSE": Exchange.CSE,
  "EGX": Exchange.EGX,
  "Euronext": Exchange.EURONEXT,
  "FSX": Exchange.FSX,
  "HKEX": Exchange.HKEX,
  "IDX": Exchange.IDX,
  "IEX": Exchange.IEX,
  "ISE": Exchange.ISE,
  "JPX": Exchange.JPX,
  "JSE": Exchange.JSE,
  "KRX": Exchange.KRX,
  "LSE": Exchange.LSE,
  "MOEX": Exchange.MOEX,
  "MTA": Exchange.MTA,
  "Munich": Exchange.MUNICH,
  "MYX": Exchange.MYX,
  "NASDAQ": Exchange.NASDAQ,
  "NEO": Exchange.NEO,
  "NSE": Exchange.NSE,
  "NYSE": Exchange.NYSE,
  "NZX": Exchange.NZX,
  "OMX": Exchange.OMX,
  "OMXC": Exchange.OMXC,
  "OMXH": Exchange.OMXH,
  "OMXR": Exchange.OMXR,
  "OMXT": Exchange.OMXT,
  "OMXV": Exchange.OMXV,
  "OSE": Exchange.OSE,
  "OTC": Exchange.OTC,
  "PSE": Exchange.PSE,
  "QE": Exchange.QE,
  "SET": Exchange.SET,
  "SGX": Exchange.SGX,
  "SIX": Exchange.SIX,
  "SSE": Exchange.SSE,
  "SZSE": Exchange.SZSE,
  "Tadawul": Exchange.TADAWUL,
  "TASE": Exchange.TASE,
  "TSX": Exchange.TSX,
  "TSXV": Exchange.TSXV,
  "TWSE": Exchange.TWSE,
  "VSE": Exchange.VSE,
  "XBER": Exchange.XBER,
  "XDUS": Exchange.XDUS,
  "XETR": Exchange.XETR,
  "XHAM": Exchange.XHAM,
  "XHAN": Exchange.XHAN,
  "XSAP": Exchange.XSAP,
  "XSTU": Exchange.XSTU
});

enum Type { EQUITY, COMMON, COMMON_STOCK, AMERICAN_DEPOSITARY_RECEIPT, REAL_ESTATE_INVESTMENT_TRUST_REIT, UNIT, GDR, CLOSED_END_FUND, ETF, DEPOSITARY_RECEIPT, PREFERRED_STOCK, LIMITED_PARTNERSHIP, OTHER_SECURITY_TYPE, WARRANT, STRUCTURED_PRODUCT, EXCHANGE_TRADED_NOTE, RIGHT, FUND, TRUST, INDEX, UNIT_OF_BENEFICIAL_INTEREST, MUTUALFUND, NEW_YORK_REGISTERED_SHARES }

final typeValues = EnumValues({
  "American Depositary Receipt": Type.AMERICAN_DEPOSITARY_RECEIPT,
  "Closed-end Fund": Type.CLOSED_END_FUND,
  "Common": Type.COMMON,
  "Common Stock": Type.COMMON_STOCK,
  "Depositary Receipt": Type.DEPOSITARY_RECEIPT,
  "EQUITY": Type.EQUITY,
  "ETF": Type.ETF,
  "Exchange-traded Note": Type.EXCHANGE_TRADED_NOTE,
  "FUND": Type.FUND,
  "GDR": Type.GDR,
  "Index": Type.INDEX,
  "Limited Partnership": Type.LIMITED_PARTNERSHIP,
  "MUTUALFUND": Type.MUTUALFUND,
  "New York Registered Shares": Type.NEW_YORK_REGISTERED_SHARES,
  "OTHER_SECURITY_TYPE": Type.OTHER_SECURITY_TYPE,
  "Preferred Stock": Type.PREFERRED_STOCK,
  "Real Estate Investment Trust (REIT)": Type.REAL_ESTATE_INVESTMENT_TRUST_REIT,
  "Right": Type.RIGHT,
  "STRUCTURED_PRODUCT": Type.STRUCTURED_PRODUCT,
  "Trust": Type.TRUST,
  "Unit": Type.UNIT,
  "Unit Of Beneficial Interest": Type.UNIT_OF_BENEFICIAL_INTEREST,
  "Warrant": Type.WARRANT
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
