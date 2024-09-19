import 'package:checkout_payment/core/widget/custom_bottom.dart';
import 'package:checkout_payment/features/presentation/bill_form.dart';
import 'package:flutter/material.dart';

class AddCardBody extends StatelessWidget {
  const AddCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 25),
          Expanded(child: Image.asset('assets/images/basket.png')),
          const SizedBox(height: 25),
          const BillDetails(),
          const CustomBottom(
            text: 'Complete Payment',
          )
        ],
      ),
    );
  }
}
