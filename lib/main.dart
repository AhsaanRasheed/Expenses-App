import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 40),
                width: double.infinity,
                // color: Colors.blue,
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),),
                height: MediaQuery.of(context).size.height * 0.18,
                child: Text('Expenses tracker',
                textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 25,
                   ),
                ),
                
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 25 ,left: 25, right: 25, bottom: 15),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('What You have'),
                        Text('PKR 98,346', style: TextStyle(color: Colors.black, fontSize: 20),),
                        SizedBox(height: 20,),
      
                        Row(
                          children: [
                            Container(
                              height: 57,
                              width: 80,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0), 
                              borderRadius: BorderRadius.circular(10) ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text('Cash', style: TextStyle(color: Colors.black),),
                                  SizedBox(height: 6,),
                                  Text('98,346', style: TextStyle(color: Colors.black, fontSize: 10),)
                                ],),
                              ),
                              
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 57,
                              width: 80,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0), 
                              borderRadius: BorderRadius.circular(10) ),
                            
                              // child: Text('+', style: TextStyle(color: Colors.black, fontSize: 30),),
                                  // Text('Cash', style: TextStyle(color: Colors.black),),
                                  child: FlatButton(
                                    onPressed: (){}, 
                                    child: Icon(Icons.add))
                              ),
                              
                            
                          ],
                        )
                      ],
                    ),
                  ),
                  
                  
                ),
              ),
      
              Padding(
                padding: const EdgeInsets.only( left: 25, right: 25, bottom: 20 ),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Your Monthly Expense', style: TextStyle(color: Colors.black, fontSize: 20),),
                        Text('PKR 98,346', ),
                        SizedBox(height: 20,),
      
                        Row(
                          children: [
                            Container(
                              height: 57,
                              width: 80,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0), 
                              borderRadius: BorderRadius.circular(10) ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text('Cash', style: TextStyle(color: Colors.black),),
                                  SizedBox(height: 6,),
                                  Text('98,346', style: TextStyle(color: Colors.black, fontSize: 10),)
                                ],),
                              ),
                              
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 57,
                              width: 80,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0), 
                              borderRadius: BorderRadius.circular(10) ),
                            
                              // child: Text('+', style: TextStyle(color: Colors.black, fontSize: 30),),
                                  // Text('Cash', style: TextStyle(color: Colors.black),),
                                  child: FlatButton(
                                    onPressed: (){}, 
                                    child: Icon(Icons.add))
                              ), 
                          ],
                        )
                      ],
                    ),
                  ), 
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                width: double.infinity,
                child: Text('Recent Transactions', 
                textAlign: TextAlign.left, 
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
                ),

                Card(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: ListTile(
                  
                  leading: CircleAvatar(
                    radius: 30,
                    
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      // child: FittedBox(
                      //     child: Text(
                      //         '\$${transaction[index].amount.toStringAsFixed(2)}')),
                    ),
                  ),
                  title: Text(
                    'Travel',
                    style: Theme.of(context).textTheme.title,
                  ),
                  subtitle:
                      Text('Cash'),
                  
                  trailing: 
                  MediaQuery.of(context).size.width > 360 ? 
                  FlatButton.icon(
                    icon: Icon(Icons.delete), 
                    label: Text('Delete'),
                    onPressed: () => {}, 
                    ):
                   IconButton(
                    icon: Icon(Icons.delete),
                    color: Theme.of(context).errorColor,
                    onPressed: () => {},
                  ),
                ),
              )
            ],
          ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
