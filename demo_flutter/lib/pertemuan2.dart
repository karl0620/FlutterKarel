import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/pertemuan1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pertemuan3.dart';


class Pertemuan2 extends StatefulWidget {
  const Pertemuan2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Pertemuan2State createState() => _Pertemuan2State();
}

class _Pertemuan2State extends State<Pertemuan2> {
  final _formKey = GlobalKey<FormState>();
  String _nama = 'Henrikus Karel Dwiputra';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
    ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
          children: [
            Text(
              'Wellcome $_nama',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setInt("is_login", 0);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Pertemuan1(title: "Halo Karel",)),
                );
              },
              color: Colors.deepPurpleAccent,
              child: Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setInt("is_login", 2);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Pertemuan3(title: "Card View Karel",)),
                );
              },
              color: Colors.deepPurpleAccent,
              child: Text(
                "Card View",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}