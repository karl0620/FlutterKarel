import 'package:demo_flutter/Dosen/dashboarddosen.dart';
import 'package:demo_flutter/Mahasiswa/dashboardmahasiswa.dart';
import 'package:demo_flutter/Matakuliah/dashboardmk.dart';
import 'package:demo_flutter/pertemuan1.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/pertemuan2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pertemuan3 extends StatefulWidget {
  const Pertemuan3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Pertemuan3State createState() => _Pertemuan3State();
}

class _Pertemuan3State extends State<Pertemuan3> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Henry Tan"),
                accountEmail: Text("henrikus20@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                      "HT",
                      style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              ListTile(
                title: Text('Data Mahasiswa'),
                trailing: Icon(Icons.people),
                subtitle: Text('Menu CRUD Data Mahasiswa'),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardMahasiswa(title: 'Dashboard Mahasiswa')),
                  );
                },
              ),
              ListTile(
                title: Text('Data Dosen'),
                trailing: Icon(Icons.people_outline),
                subtitle: Text('Menu CRUD Data Dosen'),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardDosen(title: 'Dashboard Dosen')),
                  );
                },
              ),
              ListTile(
                title: Text('Data Mata Kuliah'),
                trailing: Icon(Icons.people_outline),
                subtitle: Text('Menu CRUD Mata Kuliah'),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardMK(title: 'Dashboard Mata Kuliah')),
                  );
                },
              ),
              Divider(
                color: Colors.black,
                height: 20,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                title: Text('Logout'),
                trailing: Icon(Icons.exit_to_app),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pertemuan1(title: 'Log In')),
                  );
                },
              ),
            ]
          ),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Dshboard',
            ),
          ],
        ),
      ),
    );
  }
}