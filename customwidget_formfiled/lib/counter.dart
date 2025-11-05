import 'package:flutter/material.dart';

class Countterr extends StatefulWidget {
  const Countterr({super.key});

  @override
  State<Countterr> createState() => _CountterrState();
}

class _CountterrState extends State<Countterr> {
  int counter = 0;
  bool st = false;
    
  void increment(){
    setState(() {
      counter++;
    });
    
  }
  void decrement(){
      
      if(counter > 0){
        setState(() {
        counter--;
      });
      }else{
        print("Num can't be below 0");
      }
    }
    void toggleee(bool value){
      setState(() {
        st = value;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter: $counter" , style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    increment();
                  }, child: Icon(Icons.add)),
                  SizedBox(height: 20,),
                  Switch(
                    value: st,
                    onChanged: toggleee,
                    activeThumbColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    decrement();
                  }, child: Icon(Icons.remove)),
                ],
              ),
              SizedBox(height: 20,),
              
            ],
          ),
      ),
      
    );
  }
}