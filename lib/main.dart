import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool pressBlack = false;
  bool pressRed = false;
  bool pressGreen = false;
  bool pressYellow = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(97,124,139,1),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundColor: Color.fromRGBO(53, 131, 164,1),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage:AssetImage("assets/gamer.png"),
                ),
              ),
              Text(
                "Mohamed Ilyes Bennacer",
                style: 
                  TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8,),
              Text(
                "STUDENT",
                style: 
                  TextStyle(
                    color: Color.fromRGBO(172, 216, 214,1),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3.4
                  ),
              ),
              SizedBox(
                width: 100.40,
                height: 15.0,
                child: 
                  Divider(
                    color: Colors.cyan.shade200
                  ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: 
                  ListTile(
                    leading: Icon(Icons.call,color: Color.fromRGBO(0, 121, 107,1)),
                    title: Text("+213542392529",style: TextStyle(color: Color.fromRGBO(0, 121, 107,1)),),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: 
                  ListTile(
                    leading: Icon(Icons.email,color: Color.fromRGBO(0, 121, 107,1)),
                    title: Text("bennacer@gmail.com",style: TextStyle(color: Color.fromRGBO(0, 121, 107,1)),),
                ),
              ),
            ]  
          ),
        ),
      )
    );
  }
}