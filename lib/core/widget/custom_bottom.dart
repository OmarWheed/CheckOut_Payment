import 'package:flutter/material.dart';

import 'package:checkout_payment/core/utils/styles.dart';

class CustomBottom extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomBottom({
    super.key,
    required this.text,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin:const EdgeInsets.symmetric(vertical:16), 
        padding:const EdgeInsets.symmetric(horizontal: 75,vertical: 23),
        decoration: BoxDecoration(
          
          color: const Color(0xff34A853),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: Styles.textStyle22,
        ),
      ),
    );
  }
}
