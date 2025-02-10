import 'payment_validator.dart';

class BasicPaymentValidator implements PaymentValidator{
  @override
  bool validatePayment(double amount){
    if(amount <= 0){
      print('Invalid amount: Amount must be greater then 0');
      return false;
    }
    return true;
  }
}