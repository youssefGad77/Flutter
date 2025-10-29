import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productpage extends StatelessWidget {
  const Productpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu,color: Colors.black,),
        title: Text("Dashboard",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add,color: Colors.black,),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("List Of Accounts : " , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Row(
            children: [
                 Expanded(
            child: Container(
              
              decoration: BoxDecoration(color: Colors.purpleAccent),
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(color: Colors.deepOrange),

          )),
          Expanded(child: Container(

          )),
            ],
          )
       
        ],
      ),
    );
  }
}