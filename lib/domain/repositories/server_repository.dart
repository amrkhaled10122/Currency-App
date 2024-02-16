import 'package:fimber/fimber.dart';

import '../../data/utils/parse_currencies_data.dart';
import 'package:http/http.dart';
import '../../core/config/constants/strings.dart';
import '../../data/models/view_model/currency_model/currency_view_model.dart';

class ServerRepository {
  final cl = Client();

  //Get Currencies Data
  Future<List<CurrencyViewModel>> getCurrencies(String? date) async {
    final _response = await cl.get(Uri.parse(AppStrings.currencyAPi));

    if (_response.successResponse) {
      Fimber.e('Fetched currency items successfully 🤑');
      final _currencies = ParseCurrenciesData.parseCurrencies(_response);
      return _currencies;
    } else {
      Fimber.e('Problem occured while fetching currency items 😥');
      return [];
    }
  }

  Future<double> getExchangeCurrency({required String base, required String currency}) async {
    final _response = await cl.get(Uri.parse(AppStrings.exchangeAPi(base, currency)));

    if (_response.successResponse) {
      Fimber.e('Fetched currency items successfully 🤑');

      return ParseCurrenciesData.parseExcahngeCurrencies(_response, currency);
    } else {
      Fimber.e('Problem occured while fetching currency items 😥');
      return 1;
    }
  }
}

extension ResponseExtension on Response {
  bool get successResponse => statusCode >= 200 && statusCode < 300;
}
