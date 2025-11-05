import 'package:customwidget_formfiled/Custom_Buttons.dart';
import 'package:flutter/material.dart';

class Teampoints extends StatefulWidget {
  const Teampoints({super.key});

  @override
  State<Teampoints> createState() => _TeampoitsState();
}

class _TeampoitsState extends State<Teampoints> {
int counterA = 0;
int counterB = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("BasketBall",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70,left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text("Team A",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                    Text("$counterA",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                    
                    
                  ],
                ),
                Column()
              ],
            )
          ],
        ),
      ),
    );
  }
}