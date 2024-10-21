// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Widget/buttoms.dart';
import 'package:flutter_application_3/Widget/tileItem.dart';
import 'package:flutter_application_3/profile_header.dart';

class DoctorScreenProfile extends StatelessWidget {
  const DoctorScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF265ed7),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              )),
          centerTitle: true,
          title: const Text('Doctor Profile',
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        // Profile_Header
        body:  Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),
              SizedBox(height: 20,) ,
                    // About
                 Text('About',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff2b2b34),
                        fontWeight: FontWeight.bold) 
                        ) , 
                        SizedBox(height: 5,) ,
                Text('Former Head of Psychological Department in Al kasr Hospital , Cairo University',
                    style: TextStyle(fontSize: 18, color: Color(0xff2b2b34), fontWeight: FontWeight.bold)), 
                   SizedBox(height: 20,) ,
                    // Address
                    Container(
                      padding: EdgeInsets.all(8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10) ,
                        color: Color(0xffe4f2fd) ,
                      ),

                      child: Column(
                        children: [
                          TileItTem(text: ' October Hospital', icon: Icons.local_hospital_rounded, ),
                          TileItTem(text: '25-9', icon: Icons.calendar_month_rounded, ),
                          TileItTem(text: 'Maadi ', icon: Icons.location_on_rounded, ),
                        ] )
                    ) , 
                  SizedBox(
                    height: 10,
                  ) ,
                  Divider(
                    height: 1, color: Colors.black, thickness: 2,
                  ) ,
                    SizedBox(
                    height: 50, )
                    , 
                    Row(
                      children: [
                        Text('Contact Info', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ) ,
                     Container(
                      padding: EdgeInsets.all(8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10) ,
                        color: Color(0xffe4f2fd) ,
                      ) , 
                  
                    child: Column(
                      children: [
                        Column(
                            children: [
                              TileItTem(text: 'DrJone@gmail.com', icon: Icons.email_sharp, ),
                              TileItTem(text: '010236419855', icon: Icons.phone_callback, ),
                              TileItTem(text: '010125525662 ', icon: Icons.phone_callback_sharp, ),
                            ],
                          ),
                      ],
                    ) 
                    ) ,
                     SizedBox(height: 50),

                     Buttoms(  color:Colors.green , text: ' Chat with dr John', onPressed: () {  },), 

                     Buttoms(  color:const Color(0xFF025EA9), text: ' Book an Appointment', onPressed: () {  },), 
           ] )
           ) 
             
                  
                    
            
            
          );
        

       
    
     
  }
}
