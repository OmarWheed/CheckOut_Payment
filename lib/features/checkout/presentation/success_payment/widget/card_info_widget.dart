import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/images/logo.svg",
          ),
          const SizedBox(
            width: 22,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Credit Card',
                style: Styles.textStyleBold18,
              ),
              Text(
                'Mastercard **78',
                style: Styles.textStyle18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
