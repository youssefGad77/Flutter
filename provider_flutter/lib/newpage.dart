import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/Gesture_Class.dart';

class newone extends StatelessWidget {
  const newone({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Consumer<gesture>(builder: (context, value, child) {
                  
                  return GestureDetector(
                    onTap: () {
                      value.change();
                    },
                    child: Container(
                       width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                        color: value.colour?Colors.red:Colors.white
                      ),
                    ),
                  );
                },
                    
                ),
                Consumer<gesture>(builder: (context, value, child) {
                  
                  return GestureDetector(
                    onTap: () {
                      value.changes();
                    },
                    child: Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                        color: value.colour?Colors.white:Colors.red
                      ),
                    ),
                  );
                },
                    
                )

                
              ],
            )
          ],
        ),
      ),
    );
  }
}