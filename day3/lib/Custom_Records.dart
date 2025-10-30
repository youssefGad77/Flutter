import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListRecords extends StatelessWidget {
  const ListRecords({super.key, required this.txt1, required this.txt2, required this.txt3, required this.Containercolor, required this.amount, required this.IconColor, required this.txt2Color, required this.AmountColor, required this.icon});
final String txt1;
final String txt2;
final String txt3;
final Color Containercolor;
final Color IconColor;
final Color txt2Color;
final Color AmountColor;
final double amount;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    
                       Container(
                        decoration: BoxDecoration(color: Containercolor ,borderRadius: BorderRadius.circular(20),border: Border.all(width: 2)),
                        height: 70,
                        width: 80,
                        child: Icon(icon,color: IconColor,),
                      ),
                      SizedBox(width:10 ,),
                      Column(
                        children: [
                           Text(txt1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           Text(txt2,style:TextStyle(color:txt2Color) ,)
                        ],
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200.0),
                          child: Column(
                            children: [
                              Text(txt3,style:TextStyle(color: Colors.grey) ,),
                              Text("\$ $amount", style: TextStyle(color: AmountColor)),
                            ],
                          ),
                        )
                         
                         
                       
                      

                  ],
                );
  }
}