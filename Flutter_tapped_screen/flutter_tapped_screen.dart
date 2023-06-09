import 'package:flutter/material.dart';

void main()
{
  runApp(MyWidget());
}
class MyWidget extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
  
}
class MyState extends State
{
  int count=0;

  void updateCount()
  {
    count=count+1;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text("Stateful Widget",
          style:  TextStyle(fontSize:30.0,
            fontWeight:FontWeight.bold),
          textAlign: TextAlign.center,),
          backgroundColor: Colors.deepOrange,
        ),
        body:  Center(
          child:  Text("$count times Tapped...",
            style: TextStyle(fontSize: 40.0,
            fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
        ),
        floatingActionButton:
         FloatingActionButton(onPressed: updateCount,
        child:  Icon(Icons.add),
        backgroundColor: Colors.deepOrange,),
    ),
    );
  }
  
}