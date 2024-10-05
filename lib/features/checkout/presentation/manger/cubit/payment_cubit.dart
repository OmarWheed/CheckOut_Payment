import 'dart:developer';

import 'package:checkout_payment/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/data/repo/checkout_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit({required this.checkoutRepo}) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment({required PaymentIntentInputModel paymentInput}) async {
    emit(PaymentLoading());
    var data = await checkoutRepo.makePayment(paymentInput: paymentInput);
    data.fold(
        (l) => emit(
              PaymentFailure(
                l.errMessage,
              ),
            ),
        (r) => emit(
              PaymentSuccess(),
            ));
  }

  @override
  void onChange(Change<PaymentState> change) {
    log("${change.currentState}=======================> ${change.nextState}");
    super.onChange(change);
  }
}
