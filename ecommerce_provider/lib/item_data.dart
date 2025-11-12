import 'package:flutter/material.dart';

class ItemData {
  final String title;
  final double subtitle;
  final String rating;
  final IconData leadingIcon;
   bool added;

  ItemData({required this.added,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.leadingIcon,
  });
}
List<ItemData> items = [
  ItemData(title: "Smart Watch", subtitle: 250.00, leadingIcon: Icons.watch, rating: "4.3", added: false),
  ItemData(title: "Headphones", subtitle: 300.00, leadingIcon: Icons.headphones, rating: "4.3", added: false),
  ItemData(title: "Laptop", subtitle: 200.00, leadingIcon: Icons.laptop, rating: "4.3", added: false),
  ItemData(title: "Camera", subtitle: 400.00, leadingIcon: Icons.camera_alt, rating: "4.3", added: false),
  ItemData(title: "Mobile Phone", subtitle: 400.00, leadingIcon: Icons.phone, rating: "4.3", added: false),
  ItemData(title: "TV", subtitle: 400.00, leadingIcon: Icons.tv, rating: "4.3", added: false),

];
class cartdata
{
  final ItemData item;
   int countaty = 0;

  cartdata({required this.item, required this.countaty});
}