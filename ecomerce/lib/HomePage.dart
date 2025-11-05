import 'package:ecomerce/Cutom_Product.dart';
import 'package:ecomerce/ProductModel.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Product>products = [
    Product(name : "Smart Watch",icon: Icons.watch, price: 500),
    Product(name : "Laptop",icon: Icons.laptop, price: 20000),
    Product(name : "HeadPhones",icon: Icons.headphones, price: 300),
    Product(name : "Phone", icon: Icons.phone, price: 1200),
    Product(name : "Tablet",icon: Icons.tablet,price: 100),
    Product(name : "Camera",icon: Icons.camera,price: 20),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Shopping",style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
      ) ,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
           itemCount: products.length,
           itemBuilder: (context, index) {
             return Productcart(
              product: products[index],
             );
           },
          ),
      ),
    );
  }
}