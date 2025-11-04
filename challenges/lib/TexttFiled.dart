import 'package:flutter/material.dart';

class Texttfiled extends StatelessWidget {
   Texttfiled({super.key});
final searchcontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       
             TextField(
              controller: searchcontroller,
              decoration: InputDecoration(
                label: Text("Search"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                
              ),
            ),
          ElevatedButton(onPressed: (){}, child: Text("data")),
          
        ],
      ),
    );
  }
}