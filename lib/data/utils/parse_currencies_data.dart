import 'dart:convert';

import 'package:http/http.dart';

import '../models/view_model/currency_model/currency_view_model.dart';

class ParseCurrenciesData {
  static List<CurrencyViewModel> parseCurrencies(Response response) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<CurrencyViewModel> currencies =
        data['data'].values.map<CurrencyViewModel>((currencyData) => CurrencyViewModel.fromJson(currencyData)).toList();

    return currencies;
  }

  static double parseExcahngeCurrencies(Response response, String currency) {
    final Map<String, dynamic> data = json.decode(response.body);
    final num excahnge = data['data'][currency];

    return excahnge.toDouble();
  }
}
