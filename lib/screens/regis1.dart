import 'package:flutter/material.dart';
import 'package:nureeza2/screens/regis.dart';


class Regis1Page extends StatefulWidget {
  final String valueFromRegPage,
      valueFromRegPage1,
      valueFromRegPage2,
      valueFromRegPage3;
  Regis1Page(
      {Key key,
      this.valueFromRegPage,
      this.valueFromRegPage1,
      this.valueFromRegPage2,
      this.valueFromRegPage3})
      : super(key: key);

  @override
  _Regis1PageState createState() => _Regis1PageState();
}

class _Regis1PageState extends State<Regis1Page> {
  final String titleString = "กรุณาตรวจสอบข้อมูล";
  @override

Widget buttonRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Confirm'),
        onPressed: () {
          var route = MaterialPageRoute(
              builder: (BuildContext context) => RegisPage());
          Navigator.of(context).push(route);
        },
      ),
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text(
          "${widget.valueFromRegPage},\n${widget.valueFromRegPage1},\n${widget.valueFromRegPage2},\n${widget.valueFromRegPage3},\nbuttonRegis()"),
          
    );
  }
}
