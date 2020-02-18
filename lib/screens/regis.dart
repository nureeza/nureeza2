import 'package:flutter/material.dart';
import 'package:nureeza2/screens/regis1.dart';

class RegisPage extends StatefulWidget {
  @override
  _RegisPageState createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  final String titleString = "ลงชื่อเข้าใช้";



Widget enterNamet() {
                  return Container(
                  width: 250.0,
                  child: TextFormField(
        
        decoration: InputDecoration(
            icon: Icon(
              Icons.navigation,
              size: 36.0,
              color: Colors.purple[400],
            ),

            hintText: 'Enter Name'),
      ),
    );
  }

  Widget userName() {
                  return Container(
                  width: 250.0,
                  child: TextFormField(
        
        decoration: InputDecoration(
            icon: Icon(
              Icons.unarchive,
              size: 36.0,
              color: Colors.purple[400],
            ),

            hintText: 'UserName'),
      ),
    );
  }

  

 Widget passwordName() {
                  return Container(
                  width: 250.0,
                  child: TextFormField(
        
        decoration: InputDecoration(
            icon: Icon(
              Icons.vpn_key,
              size: 36.0,
              color: Colors.purple[400],
            ),

            hintText: 'password'),
      ),
    );
  }

Widget phonName() {
                  return Container(
                  width: 250.0,
                  child: TextFormField(
        
        decoration: InputDecoration(
            icon: Icon(
              Icons.phone,
              size: 36.0,
              color: Colors.purple[400],
            ),

            hintText: 'TelePhon'),
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
        onPressed: () {var route = MaterialPageRoute(
            builder: (BuildContext context) => Regis1Page());
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
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                 enterNamet(),
                 userName(),
                 passwordName(),
                 phonName()  ,
                 buttonRegis(),
                ],
              ),
            ),
      ),
    );
  }
}

