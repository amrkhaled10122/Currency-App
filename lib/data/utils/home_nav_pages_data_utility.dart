import '../../presentation/pages/index.dart';

class HomeNavPagesDataUtility {
  static List getNavPages() {
    final _pages = [
      const CalculatorPage(),
      const CurrencyHistoryPage(),
    ];
    return _pages;
  }
}
