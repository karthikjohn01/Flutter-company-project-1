import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<int> age= [
    33,34,35,36,37,38,39,40

  ];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
            Text(
              "HOW OLD ARE YOU?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          
            Text(
              "THIS HELPS US CREATE YOUR PERSONALIZED PLAN",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            
            Container(
              
              
              child: Expanded(
                
                
                child: ListView.builder(
                
                  itemCount: age.length,
                  itemBuilder: (context, index) {
                    bool isSelected = index == selectedIndex;
                    return TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        }
                        );
                      
                        
              
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              age[index].toString(),
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.grey,
                                fontSize: 20,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                    
                              ),
                            
                            ),
                          ),
                          if (isSelected)
                            Container(
                              height: 3,
                              width: 100,
                              
                              
                              color: Colors.lime,
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  MaterialButton(
                    color: Colors.lime,
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}