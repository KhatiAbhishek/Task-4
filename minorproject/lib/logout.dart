import 'package:flutter/material.dart';

import 'package:minorproject/main.dart';


class logout extends StatefulWidget {
  const logout({ Key? key }) : super(key: key);

  @override
  _logoutState createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AlertDialog(
            title: Text('Are your sure want to logout?'),
            
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print("you choose no");
                  Navigator.of(context).pop(false);
                },
                child: Text('No'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MyHomePage(title: 'minor',);
                  }));
                },
                child: Text('Yes'),
              ),
            ],
          ),
        ),
    );
    
      
  }
}