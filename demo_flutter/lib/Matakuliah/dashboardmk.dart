import 'package:flutter/material.dart';
import 'package:demo_flutter/pertemuan2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardMK extends StatefulWidget {
  const DashboardMK ({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DashboardMKState createState() => _DashboardMKState();
}

class _DashboardMKState extends State<DashboardMK> {
  @override
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
                  title: Text("SL3313"),
                  subtitle: Text("Pemrograman Mobile"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}