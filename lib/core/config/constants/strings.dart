/// This abstract class contains static constants representing strings used in the application.
abstract class AppStrings {
  // Server Repo
  /// Base URL for the currency API.
  static const apiHost = 'https://api.freecurrencyapi.com/v1';

  /// API key for accessing the currency API.
  static const apiKey = 'fca_live_dwSIApMlwwkIGoZ2nNlD8vs6vDv3q79SEZjw1k5m';

  /// API endpoint for retrieving the list of currencies.
  static const currencyAPI = '$apiHost/currencies?apikey=$apiKey';

  /// Generates the API endpoint for currency exchange rates.
  static String exchangeAPI(String baseCurrency, String currencies) =>
      '$apiHost/latest?apikey=$apiKey&currencies=$currencies&base_currency=$baseCurrency';

  /// Generates the API endpoint for historical exchange rates.
  static String historyAPI(String baseCurrency, String currencies, String date) =>
      '$apiHost/historical?apikey=$apiKey&currencies=$currencies&base_currency=$baseCurrency&date=$date';

  // Shared Preferences Strings
  /// Key for storing whether the intro page has been seen.
  static const introPageSeen = "intro_page_seen";

  /// Key for storing the selected language code in shared preferences.
  static const storedLanguageCode = 'language_code';
}
