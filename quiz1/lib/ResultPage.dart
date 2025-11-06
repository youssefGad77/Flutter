import 'package:flutter/material.dart';
import 'package:quiz1/Homepage.dart';

class Resultpage extends StatefulWidget {
  final double res;
   Resultpage({super.key,
   required this.res
   });

  @override
  State<Resultpage> createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
 
 String statuss(){
  
    if(widget.res < 18.5){
    return "Under Weight";
  }else if(widget.res >=18.5 && widget.res < 25){
    return "Normal";
  }else{
    return "Over Weight";
  }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
         title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 20, color: Colors.white,),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Your Result",style: TextStyle(color: Colors.white,fontSize: 35),)
          ],
         )
         ,
         Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(109, 74, 73, 73),
            
          ),
          width: 480,
          height: 480,
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("${statuss()}",style: TextStyle(fontSize: 20,color: Colors.green),),
              ),
              SizedBox(height: 20,),
              Text("${widget.res.toStringAsFixed(1)}",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
            ],
          ),
         )
        ],
      ),
      bottomNavigationBar: ElevatedButton(onPressed: (){
        
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
      foregroundColor: Colors.white
      ), child: 
      Text("RE-Calculate",style: TextStyle(fontSize: 20),)),
    );
  }
}