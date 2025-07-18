// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mental_health_app/components/excercise_tile.dart';
import 'package:mental_health_app/utils/emoticon_face.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  // List of Colors 
   final List<Color> colors=[Colors.orange.shade800,Colors.blue.shade800,Colors.purple.shade800,Colors.red.shade800,Colors.pink.shade300];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade100,
          unselectedItemColor: Colors.grey.shade500,
          selectedItemColor: Colors.blue.shade800,
          unselectedFontSize: 14.0,
          selectedFontSize: 18.0,
          currentIndex: 0,
          items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.window),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.mail),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "")
          ]
          ),
        body: SafeArea(
          child: Column(
            children: [
              // Greetings 
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,
                  vertical: 15.0),
                  child:  Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //text 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi ,Jared",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26
                            ),),
                            SizedBox(height: 5.0,),
                            Text("6 July 2024",
                            style: TextStyle(
                              color: Colors.blue.shade100,
                              fontSize: 14
                            ),)
                          ],
                        ),
                        //Notification 
                            
                        Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade600,
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: Icon(Icons.notification_add,
                          color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                            
                  // Search Bar 
                            
                  SizedBox(height: 20.0,),
                            
                  Container(
                    padding: EdgeInsets.all(17.0),
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(12.0),
                            
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search,
                        color: Colors.white,
                        size: 30,),
                        SizedBox(width: 4.0,),
                        Text("Search",
                        style: TextStyle(color: Colors.white,
                        fontSize: 18),),
                      ],
                    ),
                  ),  
                  SizedBox(height: 30.0,),
                            
                  // How Do you Feel 
                   Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0
                    ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("How do you feel?",
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),),
                          //
                          Icon(Icons.more_horiz,
                          color: Colors.white,)
                       ],
                     ),
                   ),
                   
                            
                   SizedBox(height: 20.0,),
                            
                   //Emoticons 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EmoticonFace(
                    emoji: "😞",
                    text: "Sad",
                   ),
                            
                   EmoticonFace(
                    emoji: "😃", 
                    text: "Well"
                    ),
                            
                    EmoticonFace(
                    emoji: "😒", 
                    text: "Pissed"
                    ),
                            
                    EmoticonFace(
                    emoji: "😍", 
                    text: "Lovely"
                    ),
                            
                    ],
                   ),
                ],
              ),
                  ),

                SizedBox(height: 20.0,),


               //Exercide container 
               
               Expanded(
                 child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 22.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                  ),
                   child: Column(
                     children: [

                      Divider(
                        thickness: 5,
                        color: Colors.grey.shade500,
                        indent: 160,
                        endIndent: 160,
                      ),

                      SizedBox(height: 10.0,),


                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Exercises",
                           style: TextStyle(color: Colors.grey.shade800,
                           fontSize: 20,
                           fontWeight: FontWeight.bold),),

                           Icon(Icons.more_horiz,
                           color: Colors.grey.shade800,)
                         ],
                       ),
                       // Tiles 
                       SizedBox(height: 15.0,),
                       Expanded(
                         child: ListView(
                          children: [
                            ExcerciseTile(
                              iconBackgroundColor: colors[0], 
                              icon: Icons.favorite,  
                              text: 'Speaking Skills', 
                              subTitle: '16 Exercises',
                              ),
                              ExcerciseTile(
                              iconBackgroundColor: colors[1], 
                              icon: Icons.person,  
                              text: 'Writing Skills', 
                              subTitle: '9 Exercises',
                              ),
                              ExcerciseTile(
                              iconBackgroundColor: colors[2], 
                              icon: Icons.favorite,  
                              text: 'Reading  Speed', 
                              subTitle: '10 Exercises',
                              ),
                          ]  
                         ),
                       )
                       
                     ],
                   ),
                 ),
               )      
          
            ],//main Column 
          ),
        ),

          
      ),
     );
  }
}
