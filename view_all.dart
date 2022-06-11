import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'main.dart';



class View_All extends StatefulWidget {

  @override
  State<View_All> createState() => _View_AllState();
}

class _View_AllState extends State<View_All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future:mydb.query('phonebook'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.hasData==false){
            return Text("no data");
          }
          else
          {
            return ListView.builder(
              itemCount:snapshot.data.length ,
                itemBuilder:(context, index)
            {
              return MyCard(snapshot.data[index]["name"],snapshot.data[index]["phone"]);
            });
          }},
      ),
    );
  }
}