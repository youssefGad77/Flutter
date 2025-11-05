import 'package:flutter/material.dart';

class TeamButtons extends StatelessWidget {
 TeamButtons({super.key,required this.counter , required this.txt});
String txt;
int counter = 0;
int teamcounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){
        teamcounter += counter;
      }, child: Text(txt,style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),),
      
    );
  }
}