import 'package:flutter/material.dart';
class AboutusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Aboutus')),
        body: Center(
            child: Text('Aboutus Page',
              style: TextStyle(fontSize: 25),)
        ));
  }
}