import 'package:flutter/material.dart';

import 'item_data.dart';

class Buttonprovider extends ChangeNotifier
{

  String textbutton(   ItemData product)
  {
  
    if(product.added == true)
    {
      return "Added ";
    }
    return "Add to Cart";
  }
  void changeadd (ItemData product)
  {
    product.added = !product.added;
    notifyListeners();
  }
  Color changecolor(ItemData product)
  {
    if(product.added == true)
    {
    return Colors.red;
    }
    return Colors.teal;
  }
  void addToCart(ItemData item, List<cartdata> carts) 
  {
    bool exists = carts.any((cart) => cart.item == item);
    if (!exists && !item.added) {
      carts.add(cartdata(item: item, countaty: 1));
      notifyListeners();
    }
  }
}