import 'package:checkout_payment/features/checkout/my_card/presentation/my_card_body.dart';
import 'package:flutter/material.dart';

import 'package:checkout_payment/core/utils/styles.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text('My Cart'),
        titleTextStyle: Styles.textStyle25,
      ),
      body: const AddCardBody(),
    );
  }
}

