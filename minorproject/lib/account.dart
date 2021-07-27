

import 'package:flutter/material.dart';

import 'global.dart';
import 'homescreen.dart';

class account extends StatefulWidget {
  const account({ Key? key }) : super(key: key);

  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Icon(Icons.person_rounded,size: 200,color: Colors.green,),
            Text(name,style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 10,
            ),
            Text(email,style: TextStyle(fontSize: 20),),
            
          SizedBox(
            width: 400,

            child:  TextField(
              
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Add address',
              prefixIcon: Icon(Icons.email),
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white70,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.green, width: 2),
               ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
            ),
            onChanged: (value){
              address=value;
              
            },
            ),
        ),
        SizedBox(
          height: 50,
        ),


        SizedBox(
          width: 140,
          
          height: 40,
      
        
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return homescreen();

            }));

          }, child: Text("Submit"),
          style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen
            ),
          
          ),
        ),









          ],

        ),
        ),
      
    );
  }
}