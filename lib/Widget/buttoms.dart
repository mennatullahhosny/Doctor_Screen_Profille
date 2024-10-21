// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Buttoms extends StatelessWidget {
  const Buttoms({
    super.key,
    required this.color,
    required this.text,
    required this.onPressed, // Add this line
  });
  final Color color;
  final String text;
  final VoidCallback onPressed; // Add this line

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: ElevatedButton(
        onPressed: onPressed, // Use the onPressed callback
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50), // Full width
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ), // Rounded corners
          backgroundColor: color, // Set the button color
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}