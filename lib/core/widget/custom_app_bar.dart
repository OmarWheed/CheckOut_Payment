import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required String title}) {
  return AppBar(
    centerTitle: true,
    leading: const Icon(Icons.arrow_back),
    title: Text(title),
    titleTextStyle: Styles.textStyle25,
  );
}
