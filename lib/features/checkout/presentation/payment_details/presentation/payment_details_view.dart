import 'package:checkout_payment/core/widget/custom_app_bar.dart';
import 'package:checkout_payment/features/checkout/presentation/payment_details/widget/payment_details_body.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Payment Details"),
      body: const PaymentDetailsBody(),
    );
  }
}

//Package
//?Flutter credit Card
