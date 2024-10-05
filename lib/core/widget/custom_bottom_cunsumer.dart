import 'dart:developer';

import 'package:checkout_payment/core/routes/route_name.dart';
import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/core/widget/custom_bottom.dart';
import 'package:checkout_payment/features/checkout/data/model/amount_model/details.dart';
import 'package:checkout_payment/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/presentation/manger/cubit/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

import '../../features/checkout/data/model/amount_model/amount_model.dart';
import '../../features/checkout/data/model/item_model/item.dart';
import '../../features/checkout/data/model/item_model/item_model.dart';

class CustomBottomConsumer extends StatelessWidget {
  final int activeIndex;
  const CustomBottomConsumer({
    super.key,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacementNamed(RouteName.successPayment);
        }
        if (state is PaymentFailure) {
          log(state.errMessage);
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errMessage),
            duration: const Duration(seconds: 5),
          ));
        }
      },
      builder: (context, state) {
        return CustomBottom(
          onTap: () {
            if (activeIndex == 0) {
              PaymentIntentInputModel paymentIntentInputModel =
                  const PaymentIntentInputModel(
                      amount: "100",
                      currency: 'usd',
                      customerId: "cus_QyEmF0yLkul2fF");
              BlocProvider.of<PaymentCubit>(context)
                  .makePayment(paymentInput: paymentIntentInputModel);
            } else {
              var getData = getTransitionsData();
              executePaypalNavigate(context, getData);
            }
          },
          text: "Continue",
          isLoading: state is PaymentLoading ? true : false,
        );
      },
    );
  }

  void executePaypalNavigate(BuildContext context, ({AmountModel amount, ItemModel itemList, List<Item> listOfOrder}) getData) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientId,
        secretKey: ApiKeys.payPalSecretKey,
        transactions: [
          {
            "amount": getData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": getData.itemList.toJson()
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pop(context);
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }

  ({AmountModel amount, ItemModel itemList, List<Item> listOfOrder})
      getTransitionsData() {
    var amountModel = AmountModel(
        total: "100",
        currency: "USD",
        details: Details(
          subtotal: "100",
          shipping: "0",
          shippingDiscount: 0,
        ));

    List<Item> listOfOrder = [
      Item(
        name: 'apple',
        quantity: 4,
        price: "10",
        currency: "USD",
      ),
      Item(
        name: 'orange',
        quantity: 5,
        price: "12",
        currency: "USD",
      ),
    ];
    ItemModel itemList = ItemModel(items: listOfOrder);

    return (amount: amountModel, listOfOrder: listOfOrder, itemList: itemList);
  }
}
