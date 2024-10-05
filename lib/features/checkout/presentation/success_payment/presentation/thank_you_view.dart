import 'package:checkout_payment/core/widget/custom_app_bar.dart';
import 'package:checkout_payment/features/checkout/presentation/success_payment/widget/thank_you_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const ThankYouViewBody()),
    );
  }
}
