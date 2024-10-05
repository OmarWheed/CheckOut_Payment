import 'dart:convert';

class InputEphemeralKeyModel {
  final String customerId;

  InputEphemeralKeyModel({required this.customerId});

  toJson() {
    return {
      'customer': customerId,
    };
  }

  factory InputEphemeralKeyModel.fromJson(Map<String, dynamic> json) {
    return InputEphemeralKeyModel(
      customerId: json['customer'],
    );
  }
}
