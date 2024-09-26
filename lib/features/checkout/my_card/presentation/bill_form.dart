import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/core/widget/order_details.dart';
import 'package:flutter/material.dart';

class BillDetails extends StatelessWidget {
  const BillDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderDetails(text: 'Order Subtotal', value: r"$ 42.97"),
        OrderDetails(text: 'Discount', value: r"$ 0"),
        OrderDetails(text: 'Shipping', value: r"$ 0"),
        Divider(
          color: Color(0xffC7C7C7),
        ),
        SizedBox(height: 15),
        OrderDetails(
          text: 'Total',
          value: r"$ 50.97",
          textStyle: Styles.textStyle24,
        ),
        SizedBox(height: 34),
      ],
    );
  }
}
