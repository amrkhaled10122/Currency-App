import '../models/view_model/currency_model/currency_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FetchCurrenciesForConversionModal {
  static List<CurrencyViewModel> fetchCurrencies(
    List<CurrencyViewModel> currencyModelList,
    AppLocalizations localization,
    String? currencyCode,
  ) {
    List<CurrencyViewModel> _currenciesList = <CurrencyViewModel>[];
    _currenciesList = currencyModelList.map((element) {
      return CurrencyViewModel(
        code: element.code,
        name: element.name,
        namePlural: element.namePlural,
        symbol: element.symbol,
        isSelected: element.code == currencyCode ? true : false,
      );
    }).toList();

    return _currenciesList;
  }
}
