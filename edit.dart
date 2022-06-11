import 'package:flutter/material.dart';

import 'main.dart';

class Edit extends StatefulWidget {


  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();
  TextEditingController n3=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextField(controller: n1,decoration: InputDecoration(
            labelText: 'n1' ,border: OutlineInputBorder()
        ),),
        SizedBox(height: 5,),

        TextField(controller: n2,decoration: InputDecoration(
            labelText: 'New Name' ,border: OutlineInputBorder()
        ),),
        SizedBox(height: 5,),

        TextField(controller: n3,decoration: InputDecoration(
            labelText: 'New Phone' ,border: OutlineInputBorder()
        ),),
        FlatButton(onPressed: () async {
          String a=n1.text.toString();
          String b=n2.text.toString();
          String c=n3.text.toString();
          await mydb.update("phonebook",<String,dynamic>{"name":b,"phone":c},where:"name=?",whereArgs:[a]);

        }, child: Text('save'))
      ],),
    );
  }
}