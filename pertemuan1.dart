import 'package:flutter/material.dart';

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
              onPressed: ()=> pressDaftar(),
              color: Colors.deepPurpleAccent,
              child: Text(
                "Daftar",
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