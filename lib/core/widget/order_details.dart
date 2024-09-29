import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  final String text;
  final String value;
  final TextStyle? textStyle;

  const OrderDetails({
    super.key,
    required this.text,
    required this.value,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: textStyle ?? Styles.textStyle18,
        ),
        Text(
          value,
          style: textStyle ?? Styles.textStyle18,
        ),
      ],
    );
  }
}
