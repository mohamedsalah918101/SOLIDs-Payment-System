import 'payment_method.dart';
import 'payment_processor.dart';
import 'payment_validator.dart';

class StandardPaymentProcessor implements PaymentProcessor {
  @override
  final PaymentMethod paymentMethod;
  @override
  final PaymentValidator validator;

  StandardPaymentProcessor(this.paymentMethod, this.validator);

  @override
  Future<bool> process(double amount) async {
    if (!validator.validatePayment(amount)) {
      return false;
    }

    try {
      final bool success = await paymentMethod.processPayment(amount);
      if (success) {
        print('Payment processed successfully');
        print('Payment details: ${paymentMethod.getPaymentDetails()}');
      } else {
        print('Payment processing failed');
      }
      return success;
    } catch (e) {
      print('Error processing payment: $e');
      return false;
    }
  }
}
