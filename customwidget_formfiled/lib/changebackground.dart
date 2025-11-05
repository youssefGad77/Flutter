import 'package:flutter/material.dart';

class changecolor extends StatefulWidget {
  const changecolor({super.key});

  @override
  State<changecolor> createState() => _changecolorState();
}

class _changecolorState extends State<changecolor> {
  var col = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            col =!col;
            
          });
        },
        child: Expanded(
           child: Container(
                   
                color: col?Colors.white:Colors.blue,
               
  
              ),
            ),
          ),
        );
    
  }
}