import 'package:checkout_payment/core/routes/route_name.dart';
import 'package:checkout_payment/features/checkout/payment_details/presentation/payment_details_view.dart';
import 'package:checkout_payment/features/checkout/success_payment/presentation/thank_you_view.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.paymentDetails:
        return MaterialPageRoute(builder: (context) => const PaymentDetails());
      case RouteName.successPayment:
        return MaterialPageRoute(builder: (context) => const ThankYouView());

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text('Unknown route'),
                  ),
                ));
    }
  }
}
