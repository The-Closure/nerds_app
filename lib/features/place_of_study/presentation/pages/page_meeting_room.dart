// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PageMeetingRoom extends StatelessWidget {
  const PageMeetingRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 333,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xff7B9DE2),
                  Color(0xff3B3BC0),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Text(
                            '12 Spots available',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Text(
                        'Looking for a safe studing place?',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Welcome to COSEL',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/house.png')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0, left: 30),
            child: Text(
              'COSEL creates studying spaces that help students go further, faster by building a positive community dreaming of a better tomorrow.  ',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/images/wifi.png"),
                  title: Text(
                    'Hight speed internet',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ListTile(
                  leading: Image.asset("assets/images/pro.png"),
                  title: Text(
                    'Projector',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ListTile(
                  leading: Image.asset("assets/images/board.png"),
                  title: Text(
                    'Withe Board',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
