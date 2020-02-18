import 'package:flutter/material.dart';
import 'package:nureeza2/screens/login1.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String titleString = "ยินดีต้อนรับRee";

  Widget valueXText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.nature,
              size: 36.0,
              color: Colors.purple[400],
            ),
            hintText: 'Enter value X'),
      ),
    );
  }

  Widget valueYText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.nature,
              size: 36.0,
              color: Colors.purple[400],
            ),
            hintText: 'Enter value X'),
      ),
    );
  }

  Widget buttonRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Calculator'),
        onPressed: () {
          var route = MaterialPageRoute(
              builder: (BuildContext context) => login1Page());
          Navigator.of(context).push(route);
        },
      ),
    );
  }

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
            children: <Widget>[valueXText(), valueYText(), buttonRegis()],
          ),
        ),
      ),
    );
  }
}
