import 'package:fimber/fimber.dart';

import '../../data/utils/parse_currencies_data.dart';
import 'package:http/http.dart';
import '../../core/config/constants/strings.dart';
import '../../data/models/view_model/currency_model/currency_view_model.dart';

/// Repository class responsible for handling server-related operations.
class ServerRepository {
  Client cl = Client();

  /// Retrieves a list of currencies from the server.
  ///
  /// The optional [date] parameter allows fetching historical data for a specific date.
  Future<List<CurrencyViewModel>> getCurrencies() async {
    final _response = await cl.get(Uri.parse(AppStrings.currencyAPI));

    if (_response.successResponse) {
      Fimber.e('Fetched currency items successfully 🤑');
      final _currencies = ParseCurrenciesData.parseCurrencies(_response);
      return _currencies;
    } else {
      Fimber.e('Problem occurred while fetching currency items 😥');
      return [];
    }
  }

  /// Retrieves the exchange rate between the specified base and target currencies.
  Future<double> getExchangeCurrency({required String base, required String currency}) async {
    final _response = await cl.get(Uri.parse(AppStrings.exchangeAPI(base, currency)));

    if (_response.successResponse) {
      Fimber.e('Fetched currency exchange rate successfully 🤑');
      return ParseCurrenciesData.parseExcahngeCurrencies(_response, currency);
    } else {
      Fimber.e('Problem occurred while fetching currency exchange rate 😥');
      return 1;
    }
  }
}

/// Extension on the Response class to determine if the HTTP response is successful.
extension ResponseExtension on Response {
  /// Returns true if the HTTP status code indicates a successful response (status code between 200 and 299).
  bool get successResponse => statusCode >= 200 && statusCode < 300;
}
