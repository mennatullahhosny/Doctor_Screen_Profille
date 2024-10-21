// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Widget/call_widget.dart';


class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipOval(
                child: Image.network(
              'https://c8.alamy.com/comp/2FJR92X/flat-male-doctor-avatar-in-medical-face-protection-mask-and-stethoscope-healthcare-vector-illustration-people-cartoon-avatar-profile-character-icon-2FJR92X.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )),
            SizedBox(
              width: 20,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Dr. John Doe',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF265ed7),
                      fontWeight: FontWeight.bold)),
              Text('Therapist',
                  style: TextStyle(fontSize: 18, color: Color(0xFF78777f), fontWeight: FontWeight.bold)),
              Row(children: [
                Icon(
                  Icons.star,
                  color: Color(0xFFFF9a10),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '3',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
              ]),
              Row(
                children: [
                  PhoneCard(
                    number: '1',
                  ),
                   SizedBox(
                  width: 5,
                ),
                  PhoneCard(
                    number: '2',
                  )
                ],
              )
            ])
          ],
        )
      ],
    );
  }
}
