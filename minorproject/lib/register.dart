

import 'package:flutter/material.dart';
import 'package:minorproject/main.dart';

import 'global.dart';


class register extends StatefulWidget {
  const register({ Key? key }) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 130,
              ),
            Container(
              color: Colors.black,
              height: 80,
              width: 350,
              
              child: Align(
              alignment: Alignment.center,
               child: Text(
               'Register Here',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 50,
  
            ),
          ),
        ),
      ),
      SizedBox(
        height: 40,
      ),

      TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Display Name',
              prefixIcon: Icon(Icons.person),
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
              name=value;
            },
            ),

            
      TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.mail),
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
              email=value;
              },

            ),

            
      TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
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
                      autofocus: false,
                      obscureText: true,
                      onChanged: (value){
                        password=value;
                      },

                ),

      SizedBox(
        height: 50,
      ),


       SizedBox(
              width: 300,
              height: 50,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MyHomePage(title: '',);
              }
              )
              );
              },child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 20),),
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