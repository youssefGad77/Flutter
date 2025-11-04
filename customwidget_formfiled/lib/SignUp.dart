import 'package:customwidget_formfiled/Custom_FormField.dart';
import 'package:customwidget_formfiled/Login.dart';
import 'package:customwidget_formfiled/counter.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final Formkey = GlobalKey<FormState>();
    final namecontroller = TextEditingController();
    final emailcontroller = TextEditingController();
    final passcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Signup Page" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ,color: Colors.white ),),
      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,),
              child: Icon(Icons.account_circle , size: 150,color: const Color.fromARGB(255, 250, 221, 0),),
            ),
            Form(
              key: Formkey ,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: Column(
                  children: [
                    TextCustomForm(
                      icon: Icons.email,
                      label: "Full Name",
                      
                      validator: (value) {
                        if(value!.isEmpty|| value == ""){
                          return "PLease Enter Name Bec IT's Required";
                        }
                        return null;
                      },
                      controller: namecontroller,
                    ),
                    SizedBox(height: 20,),
                    TextCustomForm(
                      icon: Icons.email,
                      label: "Email",
                      
                      validator: (value) {
                        if(value!.isEmpty|| value == ""){
                          return "PLease Enter Email Bec IT's Required";
                        }
                        if(!value.contains("@gmail.com")){
                          return "Email Is Not Valid";
                        }
                        return null;
                      },
                      controller: emailcontroller,
                    ),
                    SizedBox(height: 20,),
                    TextCustomForm(
                      icon: Icons.lock, 
                      label: "Password",
                       validator: (value){
                        if(value!.isEmpty|| value == ""){
                          return "PLease Enter Password Bec IT's Required";
                        }
                        if(value.length < 8){
                          return "Password Must Be At Least 8 chars";
                        }
                        return null;
                       },
                       obsecure: true,
                        controller: passcontroller
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){
                      if(Formkey.currentState!.validate()){
                        print("Good Job!"); 
                      }
                    }, 
                    
                    style:  ElevatedButton.styleFrom(backgroundColor: Colors.teal,padding: EdgeInsets.only(left: 150,right: 150,bottom: 20,top: 20)),
                    
                    child: Text("Create Account" ,
                    style: TextStyle(fontSize: 18.5 , fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    
                    ),
                    SizedBox(height: 10,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Countterr()));
                    }, child: Text("Already Have Account? Login"))
                    
                  ],
                ),
              ),
            )
          ],
        ),
        
      );

  }
}