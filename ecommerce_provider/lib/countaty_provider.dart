import 'package:ecommerce_provider/item_data.dart';
import 'package:flutter/material.dart';

class CountatyProvider extends ChangeNotifier {
  void add(cartdata item) {
    item.countaty++;
    notifyListeners();
  }

  void mines(cartdata item, List<cartdata> items, int index) {
    if (item.countaty == 1) {
      item.countaty = 0;
      items.removeAt(index);
      item.item.added = false;
    } 
    else {
      item.countaty--;
    }
    notifyListeners();
  }

  double totalPrice(List<cartdata> items) {
    double prices = 0;
    for (var p in items) {
      prices += p.countaty * p.item.subtitle;
    }
    return prices;
  }

  int countatyPro(cartdata cart) {
    return cart.countaty;
  }
  List<cartdata> cartsPro(List<cartdata> items) {
    return items;
  }
}
