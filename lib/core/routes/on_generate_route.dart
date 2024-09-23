import 'package:checkout_payment/core/routes/route_name.dart';
import 'package:checkout_payment/features/checkout/payment_details/presentation/payment_details_view.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.paymentDetails:
        return MaterialPageRoute(builder: (context) => const PaymentDetails());

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
