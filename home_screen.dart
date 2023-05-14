

import 'package:flutter/material.dart';
import 'package:flutterbasic/screens/aboutus_screen.dart';
import 'package:flutterbasic/screens/gallery_screen.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: Drawer(
        child:Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.amber,
              child: Center(child: Icon(Icons.face,size: 100,)),),

              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)
                  =>HomeScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Gallery'),
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>AboutusScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Aboutus'),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)
                  =>GalleryScreen()));
                },
              ),


          ],
        )
      ),
      body: Center(
        child: Text('Home Page',
      style: TextStyle(fontSize: 25),)
    ));
  }
}