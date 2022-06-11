import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  String name,phone;
  MyCard(this.name,this.phone);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        SizedBox(width: 10,),
        Text(phone)
      ],
    );
  }
}