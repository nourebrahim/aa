import 'package:flutter/material.dart';

import 'package:untitled20/view_all.dart';

import 'add_new.dart';
import 'delete.dart';
import 'edit.dart';

class home extends StatefulWidget {

  @override
  State<home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_New()));
        }, child: Text('add new')),
        SizedBox(height: 5,),
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>View_All()));
        }, child: Text('View all')),
        SizedBox(height: 5,),
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit()));
        }, child: Text('Edit')),
        SizedBox(height: 5,),
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Delete()));
        }, child: Text('Delete'))

      ],),
    );
  }
}