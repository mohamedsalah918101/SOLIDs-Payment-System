import 'payment_method.dart';

class CashPayment implements PaymentMethod{
  final String currencyType;

  CashPayment(this.currencyType);

  @override
  Future<bool> processPayment(double amount) async {
    print('Processing cash payment of $currencyType $amount');
    // Simulate payment processing
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  String getPaymentDetails() {
    return 'Cash Payment: $currencyType';
  }
}