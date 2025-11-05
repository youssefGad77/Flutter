import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
 String txt = "";
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select Gender",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            RadioListTile(
              title: Text("Male"),
              value: "Male",
              groupValue: txt,
              onChanged: (value) {
                setState(() {
                  txt = value!;
                });
              },
              
            ),
            SizedBox(height: 10,),
            RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: txt,
              onChanged: (value) {
                setState(() {
                  txt = value!;
                });
              },
              
            ),
          ],
        ),
      ),
    );
  }
}