import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MeetingRoom extends StatelessWidget {
  const MeetingRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 161,
              width: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(123, 157, 226, 1),
                  Color.fromRGBO(59, 59, 192, 1)
                ]),
                boxShadow: [BoxShadow()] ,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 109,
                        height: 23,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            '12 Spots available',
                            style: TextStyle(
                                color: Color.fromRGBO(24, 24, 41, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Text(
                        'Looking for a safe \n stuying place ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Welcome to COSEL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Image.asset('lib/Core/Resources/assets/image 13.png'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'COSEL creates studying spaces that help \n students go further, faster by building a positive\n community dreaming of a better tomorrow.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(131, 135, 149, 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20 , left: 30),
            child: Row(
              children: [
                Icon(Icons.wifi),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Hight speed internet',
                    style: TextStyle(
                        color: Color.fromRGBO(49, 56, 79, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20, left: 30),
            child: Row(
              children: [
                Icon(Icons.radio),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Projector',
                    style: TextStyle(
                        color: Color.fromRGBO(49, 56, 79, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Row(
              children: [
                Icon(Icons.picture_in_picture_sharp),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Withe Board',
                    style: TextStyle(
                        color: Color.fromRGBO(49, 56, 79, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 311 ,
              height: 56 ,
              decoration: BoxDecoration(
                color: Color.fromRGBO(240, 89, 132, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(child: Text('Book Now'),),
            ),
          )
        ],
      ),
      //bottomNavigationBar: NavigationBar(destinations: destinations),
    );
  }
}
