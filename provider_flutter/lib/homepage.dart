import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/Class_Swith.dart';
import 'package:provider_flutter/class_Name.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
  var con=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var swithprov = Provider.of<swi>(context,listen: false);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                

                Consumer<swi>(builder: (context, val, child) {
                  return Switch(
                    value: val.switched ,
                     onChanged:(val)=>{
                      swithprov.sw(val)
                     },
                      );
                },),

                Consumer<swi>(builder: (context, value, child) {
                  return Text(value.switched ?"ON":"OFF");
                },)

                
              ],
            )
          ],
        ),
      ),
    );
  }
}