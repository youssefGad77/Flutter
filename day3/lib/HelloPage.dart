import 'package:day3/ProductPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hellopage extends StatelessWidget {
  const Hellopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          // leading: Icon(Icons.menu, color: Colors.black),
          title: Text(
            "Profle Card",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings, color: Colors.black),
            ),
          ],
        ),
        
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.teal[100],borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.teal)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.account_circle , color: Colors.teal[250],size: 90,),
                Text("Eng. Aya Shawky",style: TextStyle(color: const Color.fromARGB(255, 1, 123, 111),fontSize: 25,fontWeight: FontWeight.bold),),
                Text("Flutter Devoloper | Trainer",style: TextStyle(color: Colors.grey),),
                Padding(padding: 
                EdgeInsetsGeometry.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      
                      Expanded(child: Container(
                        child: ElevatedButton.icon(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Productpage()));
                        }, label: Text("Message",style: TextStyle(color: Colors.white)), icon: Icon(Icons.message,color: Colors.white,) , style: ElevatedButton.styleFrom(backgroundColor: Colors.teal)),
                      )),
                    
                      SizedBox(width: 10,),
                      Expanded(child: Container(
                        child : ElevatedButton.icon(onPressed: (){}, label: Text("Call",style: TextStyle(color: Colors.white),) , icon: Icon(Icons.phone,color: Colors.white,), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent)
                      ))
                    ),
                    
                   
                  ],
                ),
                )
                
              ],
              
            ),
          )
        ],
       ) ,
    );
  }
}