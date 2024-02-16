import '../models/view_model/currency_model/currency_view_model.dart';

class FetchDefaultConversionItem {
  static CurrencyViewModel fetchItem() {
    return CurrencyViewModel(
      symbol: "€",
      name: "Euro",
      symbolNative: "€",
      decimalDigits: 2,
      rounding: 0,
      code: "EUR",
      namePlural: "Euros",
      type: "fiat",
    );
  }
}
