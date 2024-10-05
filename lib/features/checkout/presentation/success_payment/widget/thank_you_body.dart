import 'package:checkout_payment/features/checkout/presentation/success_payment/widget/dash_line.dart';
import 'package:checkout_payment/features/checkout/presentation/success_payment/widget/green_check_circle.dart';
import 'package:checkout_payment/features/checkout/presentation/success_payment/widget/half_circle.dart';
import 'package:checkout_payment/features/checkout/presentation/success_payment/widget/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          HalfCircle(
            leftSide: -20,
          ),
          HalfCircle(
            rightSide: -20,
          ),
          CheckCircle(),
          DashedLine(),
        ],
      ),
    );
  }
}
