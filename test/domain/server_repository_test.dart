import 'package:coin_currency/data/models/view_model/currency_model/currency_view_model.dart';
import 'package:coin_currency/domain/repositories/server_repository.dart';
import 'package:test/test.dart';

void main() {
  group('ServerRepository', () {
    late ServerRepository serverRepository;

    setUp(() {
      serverRepository = ServerRepository();
    });

    test('getCurrencies - success', () async {
      // Act
      final result = await serverRepository.getCurrencies();

      // Assert
      expect(result, isA<List<CurrencyViewModel>>());
    });

    test('getExchangeCurrency - success', () async {
      // Arrange
      const base = 'USD';
      const currency = 'EUR';

      // Act
      final result = await serverRepository.getExchangeCurrency(base: base, currency: currency);

      // Assert
      expect(result, isA<double>());
    });

    test('getExchangeCurrency - failure', () async {
      // Arrange
      const base = 'USD';
      const currency = 'EUR';

      // Act
      final result = await serverRepository.getExchangeCurrency(base: base, currency: currency);

      // Assert
      expect(result, equals(0.9277901434));
    });
  });
}
