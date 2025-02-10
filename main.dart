import 'basic_payment_validator.dart';
import 'cash_payment.dart';
import 'credit_payment.dart';
import 'standard_payment_processor.dart';

void main() async {
  final validator = BasicPaymentValidator();

  // Test cash payment
  final cashPayment = CashPayment('EGP');
  final cashProcessor = StandardPaymentProcessor(cashPayment, validator);
  print('\nTesting Cash Payment: ');
  await cashProcessor.process(100.0);

  // Test credit payment
  final creditPayment = CreditPayment('1234567890123456', '12/25');
  final creditProcessor = StandardPaymentProcessor(creditPayment, validator);
  print('\nTesting Credit Payment: ');
  await creditProcessor.process(250.0);

  // Test invalid amount
  print('\nTesting Invalid Amount: ');
  await cashProcessor.process(-50.0);
}