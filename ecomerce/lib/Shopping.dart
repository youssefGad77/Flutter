import 'package:ecomerce/ProductModel.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final List<Product> products;
  const CartPage({super.key, required this.products});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Shopping",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: widget.products.isNotEmpty
          ? ListView.builder(
              itemCount: widget.products
                  .where((product) => product.quantity > 0)
                  .length,
              itemBuilder: (context, index) {
                final product = widget.products[index];
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 0.2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Icon(widget.products[index].icon, size: 35),
                    title: Expanded(
                      child: Text(
                        widget.products[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    subtitle: Expanded(
                      child: Text(
                        "${widget.products[index].price.toString()}\$",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.products[index].quantity += 1;
                            });
                          },
                          child: Icon(Icons.add),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                          ),
                        ),
                        Text(
                          widget.products[index].quantity.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.products[index].quantity -= 1;
                            });
                          },
                          child: Icon(Icons.remove),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          : Center(
              child: Text(
                "Your cart is empty",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
    );
  }
}
