import 'package:demo_flutter/pertemuan3.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/pertemuan2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pertemuan1 extends StatefulWidget {
  const Pertemuan1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Pertemuan1State createState() => _Pertemuan1State();
}

class _Pertemuan1State extends State<Pertemuan1> {
  String nama= "";

  void pressDaftar() {
    print("Wellcome");
  }

  void navigateLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int? isLogin = pref.getInt("is_login");
    if(isLogin == 1){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Pertemuan2(title: "Halo Karel",)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Input Nim",
                hintText: "Contoh: 72190327",
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Input Nama",
                hintText: "Contoh: Henrikus Karel Dwiputra",
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            RaisedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setInt("is_login", 1);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Pertemuan2(title: "Halo Karel",)),
                );
              },
              color: Colors.deepPurpleAccent,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setInt("is_login", 1);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Pertemuan3(title: "Card View",)),
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
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.deepPurpleAccent,
              child: Text(
                "Back",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}