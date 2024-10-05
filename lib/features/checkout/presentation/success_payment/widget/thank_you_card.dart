import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/core/widget/order_details.dart';
import 'package:checkout_payment/features/checkout/presentation/success_payment/widget/card_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 66),
          child: Text(
            "Thank you!",
            style: Styles.textStyle25,
          ),
        ),
        const Text(
          "Your transaction was successful",
          style: Styles.textStyle20,
        ),
        const SizedBox(
          height: 42,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              const OrderDetails(
                  text: "Date",
                  value: '01/24/2023',
                  textStyle: Styles.textStyleBold18),
              const SizedBox(
                height: 20,
              ),
              const OrderDetails(
                  text: "Time",
                  value: '10:15 AM',
                  textStyle: Styles.textStyleBold18),
              const SizedBox(
                height: 20,
              ),
              const OrderDetails(
                text: "To",
                value: 'Sam Louis',
                textStyle: Styles.textStyleBold18,
              ),
              const Divider(
                height: 60,
                color: Color(0xffC7C7C7),
                thickness: 2,
              ),
              const OrderDetails(
                text: "Total",
                value: r'$50.97',
                textStyle: Styles.textStyle24,
              ),
              const SizedBox(
                height: 30,
              ),
              const CardInfoWidget(),
              const SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FontAwesomeIcons.barcode,
                    size: 85,
                    weight: 142,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 58,
                    width: 115,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Colors.green, width: 1.5),
                      ),
                    ),
                    child: Text(
                      'PAID',
                      style: Styles.textStyle24.copyWith(color: Colors.green),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
