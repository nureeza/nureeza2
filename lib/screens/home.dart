import 'package:flutter/material.dart';
import 'package:nureeza2/screens/login.dart';
import 'package:nureeza2/screens/regis.dart';

class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var textEditController = new TextEditingController();
  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController,
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Username',
            hintText: 'your@email.com'),
      ),
    );
  }

  var textEditController1 = new TextEditingController();
  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController1,
        decoration: InputDecoration(
            icon: Icon(
              Icons.vpn_key,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Password',
            hintText: 'Mode 6 character'),
      ),
    );
  }

  Widget buttonRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Login'),
        onPressed: () {
          var route =
              MaterialPageRoute(builder: (BuildContext context) => LoginPage());
          Navigator.of(context).push(route);
        },
      ),
    );
  }

  Widget buttonsRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.add_box,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Register'),
        onPressed: () {
          var route =
              MaterialPageRoute(builder: (BuildContext context) => RegisPage());
          Navigator.of(context).push(route);
        },
      ),
    );
  }

  Widget showWelcom() {
    return Text(
      'application Nureeza',
      style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.purple[400],
          fontStyle: FontStyle.italic),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showWelcom(),
              emailText(),
              passwordText(),
              buttonRegis(),
              buttonsRegis(),
            ],
          ),
        ),
      ),
    ));
  }
}
