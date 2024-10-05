import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  final String img;
  final bool isActive;
  const PaymentMethodItem({
    super.key,
    this.isActive = false,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(left: 10),
      width: 103,
      height: 62,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border:
            Border.all(color: isActive ? Colors.green : Colors.black, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SvgPicture.asset(img),
    );
  }
}

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  int activeIndex = 0;

  final List<String> paymentMethods = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethods.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: PaymentMethodItem(
              isActive: activeIndex == index,
              img: paymentMethods[index],
            ),
          );
        },
      ),
    );
  }
}
