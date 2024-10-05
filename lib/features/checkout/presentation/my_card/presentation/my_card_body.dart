import 'package:checkout_payment/core/widget/custom_bottom.dart';
import 'package:checkout_payment/features/checkout/data/repo/checkout_repo.dart';
import 'package:checkout_payment/features/checkout/presentation/manger/cubit/payment_cubit.dart';
import 'package:checkout_payment/features/checkout/presentation/my_card/presentation/bill_form.dart';
import 'package:checkout_payment/features/checkout/presentation/my_card/presentation/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              // Navigator.of(context).pushNamed(RouteName.paymentDetails);
              showModalBottomSheet(
                context: context,
                builder: (context) => BlocProvider(
                  create: (context) =>
                      PaymentCubit(checkoutRepo: CheckoutRepoImp()),
                  child: const PaymentMethodBottomSheet(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
