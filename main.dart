import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          body: Stack(
        children: [
          Container(
            color: Colors.black, // Dark overlay
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Text("Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                      ],
                    ),
                  ],
                ),

                 
                Text(
                  "HELLO ROOKIES,",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
                Text(
                  "ENTER YOUR INFORMATIONS BELOW OR \n LOGIN WITH ANOTHER ACCOUNT",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),

                 TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    label:Text("Email"),labelStyle: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),
                    border: UnderlineInputBorder()
                    ),
                 
                    ),

                     TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    label:Text("Password"),labelStyle: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),
                    border: UnderlineInputBorder()
                    ),
                 
                    ),

                    TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    label:Text("Password Again"),labelStyle: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),
                    border: UnderlineInputBorder()
                    ),
                 
                    ),

                    SizedBox(height: 40,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                  
                  children: [
                    
                      
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.apple, color: Colors.black),
                          ),
                        ]),


                        SizedBox(height: 40,),
                         CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.g_mobiledata, color: Colors.black),
                        ),



                         MaterialButton(
                      onPressed: () {
                        
                      },
                      color: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
])))


                    
                  
         ] ),


              ]))])));
        
  }
}