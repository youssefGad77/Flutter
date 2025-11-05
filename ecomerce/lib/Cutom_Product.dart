import 'dart:ffi';
import 'package:ecomerce/ProductModel.dart';
import 'package:flutter/material.dart';

class Productcart extends StatefulWidget {
  final Product product;

  const Productcart({super.key, required this.product});

  @override
  State<Productcart> createState() => _ProductcartState();
}

class _ProductcartState extends State<Productcart> {
  @override
  Widget build(BuildContext context) {
    bool added = widget.product.quantity > 0;
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(offset: Offset(0.1, 0.1) , blurRadius: 2 , spreadRadius: 0.2)],

      ),
      child: Column(
        children: [
          Icon(widget.product.icon, size: 60, color: Colors.teal),
          SizedBox(height: 10),
          Text(
            widget.product.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            widget.product.price.toString(),
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.product.quantity == 1;
                print(widget.product.quantity );
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: added ? Colors.red : Colors.teal,
            ),

            child: Text(
              added ? "Added" : "Add To Card",
              style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
