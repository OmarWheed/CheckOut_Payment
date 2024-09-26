import 'package:flutter/material.dart';

class CheckCircle extends StatelessWidget {
  const CheckCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: -50,
      right: 0,
      left: 0,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xFFD9D9D9),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xff34A853),
          child: Icon(
            Icons.check_sharp,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
