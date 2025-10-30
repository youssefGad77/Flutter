import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfAccounts extends StatelessWidget {
const ListOfAccounts({super.key, required this.title, required this.color, required this.amount});
final String title;
final Color color;
final double amount;
  @override
  Widget build(BuildContext context) {
    return 
    
    Expanded(
              child: Container(
                
                decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(20),border: Border.all(width: 2,color: Colors.black)),
                height: 130,
               
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(title,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),Text("\$ $amount",style: TextStyle(color: Colors.white,fontSize: 20))
                  ],
                )
              
              ),
            );
  }
}