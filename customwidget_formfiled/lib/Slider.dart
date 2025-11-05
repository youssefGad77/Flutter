import 'package:flutter/material.dart';

class Sliderr extends StatefulWidget {
  const Sliderr({super.key});

  @override
  State<Sliderr> createState() => _SliderrState();
}

class _SliderrState extends State<Sliderr> {
  double sliderval = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter: ${sliderval.toStringAsFixed(1)}" , style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Slider(
              min: 0,
              max: 100,
              value: sliderval, 
              onChanged:(val){
                setState(() {
                  sliderval = val;
                });
              } ,
              activeColor: Colors.red,
           ),
          ],
        ),
      ),
    );
  }
}