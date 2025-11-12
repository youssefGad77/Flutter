import 'package:ecommerce_provider/countaty_provider.dart';
import 'package:ecommerce_provider/item_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartpage extends StatelessWidget {
  List<cartdata> carts;

  cartpage({super.key, required this.carts});

  @override
  Widget build(BuildContext context) {
    var providerob = Provider.of<CountatyProvider>(listen: false, context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child : Consumer<CountatyProvider>(
            builder: (context, value, child) =>
            ListView.builder(
              itemCount: value.cartsPro(carts).length,
              itemBuilder: (context, index) {
                final p = value.cartsPro(carts)[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      p.item.leadingIcon,
                      size: 40,
                      color: Colors.teal,
                    ),
                    title: Text(
                      p.item.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Price: \$${p.item.subtitle}"),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            providerob.mines(p, carts, index);
                          },
                        ),
                        Consumer<CountatyProvider>(
                          builder: (context, value, child) => Text(
                            "${value.countatyPro(p)}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            providerob.add(p);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(color: Colors.teal),
            child: Center(
              child: Consumer<CountatyProvider>(
                builder: (context, value, child) => Text(
                  "Total: \$${providerob.totalPrice(carts)}",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
        ], 
      ),
    
    );
  }
}
