import 'package:flutter/material.dart';

class CustomWidgetData extends StatelessWidget {
  final String image;
  final String name;
  final String email;

  const CustomWidgetData({

    required this.image,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
          
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
            elevation: 2,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(image),
                ),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(email,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text(email,style: TextStyle(fontSize: 10,color: Colors.grey),)
                  ],
                )
              ],
            ),
          );
  }
}
