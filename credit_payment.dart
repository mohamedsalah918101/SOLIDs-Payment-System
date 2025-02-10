import 'payment_method.dart';

class CreditPayment implements PaymentMethod {
  final String cardNumber;
  final String expiryDate;

  CreditPayment(this.cardNumber, this.expiryDate);

  @override
  Future<bool> processPayment(double amount) async {
    print('Processing credit card payment of \$$amount');
    print('Card details: **** **** **** ${cardNumber.substring(cardNumber.length - 4)}');
    // Simulate payment processing
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  String getPaymentDetails() {
    return 'Credit Card Payment (Card ending in ${cardNumber.substring(cardNumber.length - 4)}';
  }
}