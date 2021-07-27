import 'package:flutter/material.dart';

import 'account.dart';
import 'global.dart';
import 'logout.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class homescreen extends StatefulWidget {
  const homescreen({ Key? key }) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

 class _homescreenState extends State<homescreen> {

   late Razorpay _razorpay;
 // _razorpay = Razorpay();
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }
  
  void openCheckout()  {
    // ignore: unused_local_variable
    var options = {
      'key': 'rzp_test_WX5eOE6EQwdYpz',
      'amount': 50000,
      'name': 'Bright',
      'description': 'Payment',
      'prefill': {'contact': '9237892738', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };
   try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint("Fail");
    }
  }


  
@override  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 90,
              color: Colors.green,
              child: Center( 
              child: ListTile(
              title: Text(name,style: TextStyle(fontSize: 20.0,color: Colors.black45),),
              leading: Icon(Icons.face),
              trailing: Icon(Icons.arrow_forward),
              
              onTap: (){
                print("User name");
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return account();

                }));
              },
            ),
              ),
            ),
            
          
            
            ListTile(
              
              leading: Icon(Icons.widgets,size: 20.0,),
              title: Text("Order history",style: TextStyle(color: Colors.black,fontSize: 20.0),),
              onTap: (){
                print("Order history");
              },
            ),
            
        
            ListTile(
              title: Text("Help & Support",style: TextStyle(color: Colors.black,fontSize: 20.0),),
              leading: Icon(Icons.help,size: 20.0,),
              onTap: (){
                print("User click on Help");
                
              },
            ),
            
        
            ListTile(
              title: Text("Logout",style: TextStyle(fontSize: 20.0,color: Colors.black),),
              leading: Icon(Icons.logout,size: 20.0,),
              onTap: (){
                print("User click on logout");
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return logout();
                },
                ),
                );
              },
            )
            
            
          ],
        ),
        ),

      
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Welcome ",style: TextStyle(color: Colors.green,fontSize: 60),),

            SizedBox(
              height: 50,
            ),

             SizedBox(
              width: 300,
              height: 50,
            child: ElevatedButton(onPressed: (){
              openCheckout();
                
            
              
              },child: Text("Go to payment page",style: TextStyle(color: Colors.black,fontSize: 20),),
             style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue
            ),
            ),
            ),
            







          ],

        ),
        ),
      
    );
  }
  }

 