import 'package:checkout_payment/core/routes/route_name.dart';
import 'package:checkout_payment/core/widget/custom_bottom.dart';
import 'package:checkout_payment/features/checkout/my_card/presentation/bill_form.dart';
import 'package:checkout_payment/features/checkout/payment_details/widget/payment_method_list_view.dart';
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
          CustomBottom(
            text: 'Complete Payment',
            onTap: () {
              Navigator.of(context).pushNamed(RouteName.paymentDetails);
              // showModalBottomSheet(
              //   context: context,
              //   builder: (context) => const PaymentMethodBottomSheet(),
              // );
            },
          )
        ],
      ),
    );
  }
}

class PaymentMethodBottomSheet extends StatelessWidget { 
  const PaymentMethodBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          PaymentMethodListView(),
          SizedBox(
            height: 20,
          ),
          CustomBottom(text: "Continue"),
        ],
      ),
    );
  }
}
