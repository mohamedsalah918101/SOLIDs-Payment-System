abstract class PaymentMethod{
  Future<bool> processPayment(double amount);
  String getPaymentDetails();
}