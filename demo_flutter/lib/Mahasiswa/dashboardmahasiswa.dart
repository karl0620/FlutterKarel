import 'package:flutter/material.dart';
import 'package:demo_flutter/pertemuan2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardMahasiswa extends StatefulWidget {
  const DashboardMahasiswa({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DashboardMahasiswaState createState() => _DashboardMahasiswaState();
}

class _DashboardMahasiswaState extends State<DashboardMahasiswa> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: GestureDetector(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Henrikus Karel Dwiputra"),
                  subtitle: Text("72190327"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

