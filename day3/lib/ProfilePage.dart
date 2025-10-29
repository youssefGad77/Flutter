import 'package:day3/HelloPage.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        // leading: Icon(Icons.bac, color: Colors.black),
        title: Text("Profle Challenge", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings, color: Colors.black),
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(flex: 2,child: 
          
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Hellopage()));
            },
            child: 
            Container(
              width: 100,
              height: 100,
              child: Text("Hello", style: TextStyle(fontSize: 20)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.blueAccent,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(20.0),
            ),
          ),
          ),
          Expanded(flex: 1,
            child: Container(
              width: 100,
              height: 100,
              child: Text("Gad", style: TextStyle(fontSize: 20)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.redAccent,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(20.0),
            ),
          ),
        ],
      ),
    );
  }
}
