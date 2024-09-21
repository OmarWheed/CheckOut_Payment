import 'package:checkout_payment/core/routes/on_generate_route.dart';
import 'package:checkout_payment/features/checkout/my_card/views/my_card_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CheckoutApp(
    appRoute: AppRoute(),
  ));
}

class CheckoutApp extends StatelessWidget {
  final AppRoute appRoute;
  const CheckoutApp({super.key, required this.appRoute});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRoute.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Checkout',
      home: const MyCardView(),
    );
  }
}
