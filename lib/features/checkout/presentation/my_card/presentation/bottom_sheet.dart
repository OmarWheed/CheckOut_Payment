import 'dart:developer';

import 'package:checkout_payment/core/widget/custom_bottom_cunsumer.dart';
import 'package:checkout_payment/features/checkout/presentation/payment_details/widget/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  State<PaymentMethodBottomSheet> createState() =>
      _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  int activeIndex = 0;

  final List<String> paymentMethods = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 62,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: paymentMethods.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                      log(activeIndex.toString());
                    });
                  },
                  child: PaymentMethodItem(
                    isActive: activeIndex == index,
                    img: paymentMethods[index],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomBottomConsumer(activeIndex: activeIndex),
        ],
      ),
    );
  }
}
