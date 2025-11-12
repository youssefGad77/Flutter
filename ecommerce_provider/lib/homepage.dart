import 'package:ecommerce_provider/cart_page.dart';
import 'package:ecommerce_provider/custom_gridtile.dart';
import 'package:ecommerce_provider/item_data.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  List<cartdata>carts=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return custom_gridtile(product: items[index], cart: carts);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => cartpage(carts: carts,)),
          );
        },
        backgroundColor: Colors.deepPurple[100],
        child: Icon(Icons.shopping_cart,color: Colors.teal,),
      ),
    );
  }
}
