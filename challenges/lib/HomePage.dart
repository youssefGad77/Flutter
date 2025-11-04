import 'package:challenges/TexttFiled.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(50.0),
        child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ),
            itemBuilder:(context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Texttfiled()));
                  },
                  child: Container(

                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.white,
                    
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 2
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        icons[index],
                        SizedBox(height: 20,),
                        Text(titles[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        SizedBox(height: 3,),
                        Text(amount[index])
                      ],
                    ),
                            
                  ),
                ),
              );
            },
          ),
      ),
      );
        
      
  }
}
List<Icon> icons = [Icon(Icons.watch,color: Colors.deepPurpleAccent,size: 45,),
Icon(Icons.headphones,color: Colors.deepPurpleAccent,size: 45,),
Icon(Icons.laptop , color: Colors.deepPurpleAccent,size: 45,),
Icon(Icons.camera_alt ,color: Colors.deepPurpleAccent,size: 45,),
Icon(Icons.smartphone, color: Colors.deepPurpleAccent,size: 45,),
Icon(Icons.tablet , color: Colors.deepPurpleAccent,size: 45,)];

List<String> titles = ["Smart Watch","Headphones","Laptop","Camera","SmartPhone","Tablet"];
List <String> amount = ["\$ 1200.00","\$ 50.00","\$ 950.00","\$ 400.00","\$ 500.00","\$ 540.00",];