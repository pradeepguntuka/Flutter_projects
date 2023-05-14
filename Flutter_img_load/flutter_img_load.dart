import 'package:flutter/material.dart';
/*
void main(){
  runApp(MaterialApp(home: Scaffold(
    appBar: AppBar(title: Text('MOON'),),
    body: Center(
      child: Image(
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/c/c9/Moon.jpg'),
        //image: AssetImage('assets/img/logo.png'),
      ),
    ),
  )
  ));
*/

/*
void main()=>runApp(MyAPP());
*/

void main(){
   runApp(MyAPP());

}
class MyAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('MOON'),),
      body: Center(
        child: Image(
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/c/c9/Moon.jpg'),
          //image: AssetImage('assets/img/logo.png'),
        ),
      ),
    )
    );
  }
}