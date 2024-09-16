import 'package:checkout_payment/features/checkout/views/my_card_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
const CheckoutApp({super.key});
@override
Widget build(BuildContext context) {
return const MaterialApp(
  title: 'Checkout',
  
  home: MyCardView(),
);
}
}