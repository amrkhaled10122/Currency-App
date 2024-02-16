abstract class AppStrings {
  //Server Repo
  static const apiHost = 'https://api.freecurrencyapi.com/v1';
  static const apiKey = 'fca_live_dwSIApMlwwkIGoZ2nNlD8vs6vDv3q79SEZjw1k5m';
  static const currencyAPi = '$apiHost/currencies?apikey=$apiKey';
  static String exchangeAPi(String baseCurrency, String currencies) =>
      '$apiHost/latest?apikey=$apiKey&currencies=$currencies&base_currency=$baseCurrency';
  //Shared Prefrences Strings
  static const introPageSeen = "intro_page_seen";
  static const storedLanguageCode = 'language_code';
}
