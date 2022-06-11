import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'main.dart';

class Add_New extends StatefulWidget {

  @override
  State<Add_New> createState() => Add_new();
}

class Add_new extends State<Add_New> {
  TextEditingController Name=new TextEditingController();
  TextEditingController Phone=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextField(controller: Name,decoration: InputDecoration(
            labelText: 'Name' ,border: OutlineInputBorder()
        ),),
        SizedBox(height: 5,),

        TextField(controller: Phone,decoration: InputDecoration(
            labelText: 'Phone' ,border: OutlineInputBorder()
        ),),
        SizedBox(height: 5,),
        FlatButton(onPressed: () async {
          String a=Name.text.toString();
          String b=Phone.text.toString();
          await mydb.insert("phonebook", <String, dynamic>{"name": a, "phone":b,}, conflictAlgorithm:ConflictAlgorithm.replace);
        }, child: Text('Save'))
      ],),
    );
  }
}