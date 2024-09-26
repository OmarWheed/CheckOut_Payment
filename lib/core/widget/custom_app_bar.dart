import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({
  String? title,
}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {},
    ),
    title: Text(title ?? ''),
    backgroundColor: Colors.transparent,
    titleTextStyle: Styles.textStyle25,
  );
}
