import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progmobflutter2021/apiservice.dart';
import 'package:progmobflutter2021/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:progmobflutter2021/model.dart';

class DashboardMhs extends StatefulWidget {
  const DashboardMhs({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DashboardMhsState createState() => _DashboardMhsState();
}

class _DashboardMhsState extends State<DashboardMhs> {
  final _formKey = GlobalKey<FormState>();
  List<Mahasiswa> lMhs = new List();
  FutureOr onGoBack(dynamic value){
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: (){},
            )
          ],
        ),
        body: FutureBuilder(
          future: ApiService().getMahasiswa(),
          builder: (BuildContext context,AsyncSnapshot<List<Mahasiswa>> snapshot){
            if(snapshot.hasError){
              return Center(
                  child: Text(
                      "Something wrong with message :" $(snapshot.error.toString())),
            );
            }else if(snapshot.connectionState == ConnectionState.done){
            lMhs = snapshot.data!;
            return ListView.builder(
              itemBuilder: (context,position) {
              return Card(
                margin: new EdgeInsets.symmetric(horizontal:5.0,vertical:1.0),
                  child: Container(
                    child: ListTile(
                    title: Text(lMhs[position].nama + " - " + lMhs[position].nim),
                      subtitle: Text(lMhs[position].email),
                      leading: CircleAvatar(
                      backgroundImage: NetworkImage(lMhs[position].foto),
            ),
            onLongPress: (){
            context : context;
            builder:(_) => new AlertDialog(
            content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            FlatButton(
            child: Text("Update"),
            onPressed: (){
            Navigator.pop(context);
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UpdateMhs(title: "Input Data Mahasiswa", mhs:lMhs[position],nimcari: lMhs[position].nim)),
            ).then(onGoBack);
            },
            ),
            Divider(
            color: Colors.black,
            height: 20,
            ),
            FlatButton(
            child: Text("Delete"),
            onPressed: () async{
            ApiService().deleteMhs(lMhs[position].nim);
            Navigator.pop(context);
            setState(() {});
            }
            )
            ]
            ),
            )
            },
            ),
            )
            );
            },
            itemCount: lMhs.length,
            );
            } else{
            return Center(
            child: CircularProgressIndicator(),
            );
            }
          },
        )
    );

  }

}