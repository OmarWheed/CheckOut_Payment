import 'dart:convert';
import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/core/utils/dio_services.dart';
import 'package:checkout_payment/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/data/model/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../features/checkout/data/model/response_ephemer_key_model/response_ephemer_key_model.dart';

class StripeService {
  final DioServices _dioServices = DioServices();

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await _dioServices.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      body: paymentIntentInputModel.toJson(),
    );

    return PaymentIntentModel.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  }

  Future<ResponseEphemerKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await _dioServices.post(
      url: 'https://api.stripe.com/v1/ephemeral_keys',
      token: ApiKeys.secretKey,
      headers: {
        'Authorization': 'Bearer ${ApiKeys.secretKey}',
        'content-type': 'application/x-www-form-urlencoded',
        'Stripe-Version': '2024-06-20'
      },
      body: {'customer': customerId},
    );

    return ResponseEphemerKeyModel.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  }

  // Future<ResponseCustomerModel> createCustomer(
  //     InputCustomerModel customer) async {
  //   var response = await _dioServices.post(
  //     url: 'https://api.stripe.com/v1/customers',
  //     token: ApiKeys.secretKey,
  //     body: customer.toJson(),
  //   );

  //   return ResponseCustomerModel.fromJson(
  //       jsonDecode(response.body) as Map<String, dynamic>);
  // }

  Future initPaymentSheet(
      {required String paymentIntentClientSecret,
      required String customerId,
      required String customerEphemeralKey}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      merchantDisplayName: "omar",
      customerId: customerId,
      customerEphemeralKeySecret: customerEphemeralKey,
      paymentIntentClientSecret: paymentIntentClientSecret,
    ));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required PaymentIntentInputModel paymentInput}) async {
    var paymentIntentModel = await createPaymentIntent(paymentInput);
    var EphemeralKey = await createEphemeralKey(customerId: ApiKeys.customerId);
    await initPaymentSheet(
      customerId: ApiKeys.customerId,
      paymentIntentClientSecret: paymentIntentModel.clientSecret!,
      customerEphemeralKey: EphemeralKey.secret!,
    );
    await displayPaymentSheet();
  }
}
