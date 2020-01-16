import 'dart:convert';
import 'package:http/http.dart' as http;

const String url = 'https://apiv2.bitcoinaverage.com/indices/global/ticker/';
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<Map<String, double>> getConversionData(
      String internationalCurrency) async {
    Map<String, double> m = Map();
    for (String crypto in cryptoList) {
      try {
        String newUrl = url + '$crypto$internationalCurrency';
        dynamic data = await _fetchData(newUrl);
        double value = data['last'];
        m[crypto] = value;
      } catch (e) {
        print(e);
      }
    }
    return m;
  }

  Future<dynamic> _fetchData(url) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print(response.statusCode);
      throw 'Problem with request';
    }
  }
}
