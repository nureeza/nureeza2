import 'package:flutter/material.dart';

class login1Page extends StatefulWidget {
  @override
  _login1PageState createState() => _login1PageState();
}

class _login1PageState extends State<login1Page> {
  final String titleString = "ผลลัพธ์";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
