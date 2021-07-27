
import 'package:flutter/material.dart';
import 'package:minorproject/register.dart';

import 'login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'minor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      


      body: Center(
        
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSChqguPYnHqfaekYE0WoRCenwOTWFO7-icGw&usqp=CAU"),
            SizedBox(
              height: 30,
            ),

            SizedBox(
              width: 300,
              height: 50,
            child: ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return login();

              },
              ),
              );  
            }, child: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 20),),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreenAccent
            ),
            ),
            ),
            SizedBox(
              height: 30,
            ),

            SizedBox(
              width: 300,
              height: 50,
            child: ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return register();

              },
              ),
              );  
            }, child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 20),),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreenAccent
            ),
            ),
            ),



          ],
        ),
      ),
    
    );
  }
}