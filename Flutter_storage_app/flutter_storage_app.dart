import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  insert()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setString('email', te1.text);
    await prefs.setString('pass', te2.text);
  }

  read()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    email= (await prefs.getString('email'))!;
    pass = (await prefs.getString('pass'))!;

    setState(() {

    });
  }
  TextEditingController te1= TextEditingController();
  TextEditingController te2= TextEditingController();

  String email="-------------------------------------";
  String pass="--------------------------------------";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Storage Example",
          textAlign:TextAlign.center,
          style: TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.white
        ),),
        backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Form(child: Column(
              children: <Widget>[

                TextFormField(
                  controller: te1,
                  decoration: InputDecoration(
                    hintText: "Enter Email"
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 20.0)),

                TextFormField(
                  controller: te2,
                  decoration: InputDecoration(
                      hintText: "Enter Password"
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 20.0)),

                Row(
                  children: <Widget>[

                    ElevatedButton(onPressed:insert,
                    child: Text("INSERT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,),
                    ),

                    Padding(padding: EdgeInsets.only(right: 20.0)),

                    ElevatedButton(onPressed:read,
                      child: Text("READ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                        textAlign: TextAlign.center,),
                      ),
                  ],
                ),

                Padding(padding: EdgeInsets.only(top: 20.0)),

                Text("$email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal
                ),),

                Padding(padding: EdgeInsets.only(top: 20.0)),

                Text("$pass",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.normal
                  ),),

              ],
            )),
          ),
        ),

        floatingActionButton:
        FloatingActionButton(onPressed: null,
        child: Icon(Icons.exit_to_app),
        backgroundColor: Colors.pinkAccent,),
      ),
    );
  }

}