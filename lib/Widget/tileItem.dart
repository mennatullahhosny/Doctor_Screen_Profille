// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TileItTem extends StatelessWidget {
  const TileItTem({
    super.key,
    required this.text,
    required this.icon
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Icon(
            icon ,  color: Color(0xff245ddd),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      
    ]);
  }
}
