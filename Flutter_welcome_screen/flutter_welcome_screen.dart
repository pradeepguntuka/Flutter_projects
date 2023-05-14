import 'package:flutter/material.dart';
void main(){
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget
{
  get face => null;

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
   home:Scaffold(
     appBar: AppBar(
       title: Text("Stateless Widget examole",
         textAlign: TextAlign.center,),
       backgroundColor: Colors.green,
       ),
     body: Center(
       child:Text("Welcome to My world",
       style:TextStyle(color:Colors.green,
         fontWeight: FontWeight.bold,
         fontSize:40.0),
       textAlign: TextAlign.center,),
     ),
     floatingActionButton:
      FloatingActionButton(onPressed: null,
       backgroundColor: Colors.green,
       child:Icon(Icons.face),),
   ),
   );
  }
}
