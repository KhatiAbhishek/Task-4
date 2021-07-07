import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({ Key? key }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second  Screen"),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },child: Icon(Icons.keyboard_backspace_outlined),
        ),
        
        ),



      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank you for submitting",style: TextStyle(fontSize: 50,color: Colors.blue),),
            
              
            
          ],
        ),
      ),
    );
    
  }
}