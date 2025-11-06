import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz1/ResultPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double height = 0;
  int weight = 0;
  int age = 0;
   double result = 0;
   var isMale = false;
   void ss(){
    isMale = !isMale;
   }
  void incrementW() {
    setState(() {
      weight++;
    });
  }

  void decrementW() {
    setState(() {
      if (weight > 0) {
        weight--;
      }
    });
  }

  void incrementA() {
    setState(() {
      age++;
    });
  }

  void decrementA() {
    setState(() {
      if (age > 0) {
        age--;
      }
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(109, 74, 73, 73),
                    ),
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: 70, color: Colors.white),
                        Text(
                          "Male",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                  setState(() {
                    ss();
                    
                  });
                },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(109, 74, 73, 73),
                    ),
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 70, color: Colors.white),
                        Text(
                          "Female",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(109, 74, 73, 73),
                    ),
                    width: 330,
                    height: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Height", style: TextStyle(color: Colors.grey)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${height.toStringAsFixed(1)} ",
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                              ),
                            ),
                            Text("cm", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Slider(
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                          min: 0,
                          max: 250,
                          activeColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(109, 74, 73, 73),
                    ),
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  71,
                                  91,
                                  101,
                                ),
                              ),
                              onPressed: () {
                                incrementW();
                              },
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  71,
                                  91,
                                  101,
                                ),
                              ),
                              onPressed: () {
                                decrementW();
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(109, 74, 73, 73),
                      ),
                      width: 150,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(color: Colors.white, fontSize: 45),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    71,
                                    91,
                                    101,
                                  ),
                                ),
                                onPressed: () {
                                  incrementA();
                                },
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    71,
                                    91,
                                    101,
                                  ),
                                ),
                                onPressed: () {
                                  decrementA();
                                },
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(onPressed: (){
        
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultpage(res: weight/pow(height/100, 2),)));
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
      foregroundColor: Colors.white
      ), child: 
      Text("Calculate",style: TextStyle(fontSize: 20),)),
    );
  }
}
