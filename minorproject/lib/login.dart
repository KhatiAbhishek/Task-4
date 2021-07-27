

import 'package:flutter/material.dart';

import 'homescreen.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQHDGQd_JcM33D8spbgkw6BX7codTGUzxfLg&usqp=CAU"),
            //  TextField(
            // decoration: InputDecoration(
            //   border: OutlineInputBorder(
            //     borderRadius: Border.all(Radius.circular(10.0)), ),
            //   icon:  Icon(Icons.mail,
            //   labelText: ("Email"),
              
              TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Email Here',
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
                    ),

          
            
            
            SizedBox(
              height: 30,
            ),


             SizedBox(
              width: 300,
              height: 50,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
               return homescreen();
                
              }
              )
              );
              },child: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 20),),
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




          
        