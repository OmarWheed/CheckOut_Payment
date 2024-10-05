import 'item.dart';

class ItemModel {
  final List<Item>? items;

  ItemModel({required this.items});

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
