import 'package:ecommerce_provider/buttonProvider.dart';
import 'package:ecommerce_provider/item_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class custom_gridtile extends StatelessWidget {
  const custom_gridtile({
    super.key,
    required this.product, required this.cart,
  });

  final ItemData product;
  final List<cartdata>cart ;

  @override
  Widget build(BuildContext context) {
    var providerob = Provider.of<Buttonprovider>(listen: false,context);
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.solid),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.teal,
              radius: 30,
              child: Icon(product.leadingIcon, size: 40),
            ),
             SizedBox(height: 15),
            Text(
              product.title,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 5),
            Text("\$${product.subtitle}",style: TextStyle(fontSize: 15,),),
             SizedBox(height: 15),
            Consumer<Buttonprovider>(
                builder: (context, value, child) =>ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: value.changecolor(product),foregroundColor: Colors.white),
              onPressed: (){
              providerob.addToCart(product, cart);
              providerob.changeadd(product);
            }, child: Text(value.textbutton(product))),),

          ],
        ),
      ),
    );
  }
}


