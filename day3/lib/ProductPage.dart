import 'package:day3/Custom_Accounts.dart';
import 'package:day3/Custom_Records.dart';
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
                 
          ListOfAccounts(title: "Bank Information", color: Colors.purpleAccent, amount: 2500.00),
          SizedBox(width: 15,),
          ListOfAccounts(title: "Credit Card", color: Colors.deepOrangeAccent, amount: 1500.00),
          SizedBox(width: 15,),
          ListOfAccounts(title: "Cash", color: Colors.teal, amount: 800.00)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                  height: 130,
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("\$4800.00",style: TextStyle(color: Colors.redAccent,fontSize: 30),),Text("Total Balance",style: TextStyle(color: Colors.grey,fontSize:15 ),)
                    ],
                  ),
                ),
              )
            ],
          ),
          Text("List Records Overview",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListRecords(txt1: "Groceries", txt2: "Credit Card", txt3: "Sunday", Containercolor: Colors.deepOrangeAccent, amount: 5000.00, IconColor: Colors.white, txt2Color: Colors.grey, AmountColor: Colors.redAccent,icon: Icons.shopping_cart,),
                
                Padding(
                  padding: const EdgeInsets.only(top:5),
                  child: ListRecords(txt1: "Clothes", txt2: "Cash", txt3: "26/8/2025", Containercolor: Colors.purple, amount: 20000.00, IconColor: Colors.white, txt2Color: Colors.grey, AmountColor: Colors.deepPurple,icon: Icons.home,),
                )

              ],
            ),
          )
        ],
        
      ),
    );
  }
}