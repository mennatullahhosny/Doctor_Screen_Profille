// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PhoneCard extends StatelessWidget {
  const PhoneCard({
    super.key,
    required this.number,
  });

  final String number;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFFe4f2fd),
      ),
      child: Row(children:  [
        Icon(Icons.phone),
        SizedBox(
          width: 5,
        ),
        Text(
          number,
          style: TextStyle(fontSize: 18),
        )
      ]),
    );
  }
}
