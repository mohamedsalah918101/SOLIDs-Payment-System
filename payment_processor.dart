import 'payment_method.dart';
import 'payment_validator.dart';

abstract class PaymentProcessor{
  final PaymentMethod paymentMethod;
  final PaymentValidator validator;

  PaymentProcessor(this.paymentMethod, this.validator);

  Future<bool> process(double amount);
}