import 'package:flutter/material.dart';
import 'package:task4/second_page.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      appBar: AppBar(

        title: Text("Task 4"),
        

        actions: [
          InkWell(
            onTap: (){
              print("user want to sign in");


            },child: Center(
              child: Text("  Sign in  ",style: TextStyle(fontSize: 15),),),
            
            
            ),
          Divider(
            thickness: 2,
            color: Colors.black,

          ),
          InkWell(
          
            onTap: (){
              print("User want to sign up");
              

            },child: Center(
              child: Text("  Sign up",style: TextStyle(fontSize: 15,),),
              
             ),
            ),
          
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Login",style: TextStyle(fontSize: 20.0,color: Colors.black45),),
              trailing: Icon(Icons.login),
              onTap: (){
                print("User click on Login");
              },
            ),
           
            Divider(
              color: Colors.black,
              thickness: 2,
            ),

            ListTile(
              title: Text("Logout",style: TextStyle(color: Colors.black26,fontSize: 20.0),),
              trailing: Icon(Icons.logout,size: 20.0,),
              onTap: (){
                print("User click on logout");
              },
            ),
            
            Divider(
              color: Colors.black,
              thickness: 2,
            ),

            ListTile(
              title: Text("Help",style: TextStyle(color: Colors.black,fontSize: 20.0),),
              trailing: Icon(Icons.help,size: 20.0,),
              onTap: (){
                print("User click on Help");
                
              },
            ),
            
            Divider(
              color: Colors.black,
              thickness: 2,
            ),

            ListTile(
              title: Text("Contact us",style: TextStyle(fontSize: 20.0,color: Colors.black),),
              trailing: Icon(Icons.contact_support_sharp,size: 20.0,),
              onTap: (){
                print("User click on contact us");
              },
            )
            
            
          ],
        ),
        ),
     



      body: Center(
        
        
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
           Text("Welcome User to App first screen",style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
           Image.network('https://static.thenounproject.com/png/424020-200.png'),
            Image.asset('assets/facebooklogo.png',height: 100,width: 150,),
            Image.asset('assets/youtubelogo.jpg',height: 100,width: 150,),

            TextField(
              autocorrect: true,
              autofocus: true,
              decoration: InputDecoration(
                icon: Icon(Icons.print),
                border: OutlineInputBorder(),
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image,size: 50,
               ),
               Icon(Icons.access_alarms,size: 50,
               ),
               Icon(Icons.add_chart,size: 50,),
              ],
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return SecondScreen();
                  }
                ),
              );
              }, child: Text("Submit",style: TextStyle(fontSize: 20),),),


          ],
        ),
      ),
    
    );
  }
}




