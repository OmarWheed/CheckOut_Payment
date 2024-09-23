import 'package:checkout_payment/core/widget/custom_app_bar.dart';
import 'package:checkout_payment/features/checkout/my_card/presentation/my_card_body.dart';
import 'package:flutter/material.dart';


class MyCardView extends StatelessWidget {
  const MyCardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'My Cart'),
      body: const AddCardBody(),
    );
  }
}
