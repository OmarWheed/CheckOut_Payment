import 'package:checkout_payment/core/utils/failure.dart';
import 'package:checkout_payment/core/utils/stripe_services.dart';
import 'package:checkout_payment/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentInput});
}

class CheckoutRepoImp extends CheckoutRepo {
  StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentInput}) async {
    try {
      await stripeService.makePayment(paymentInput: paymentInput);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
