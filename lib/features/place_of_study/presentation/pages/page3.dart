


// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:100),
              child: Image.asset('assets/images/cafe3.jpg', width: 220),
            ),
            Text(
              'Check Progress',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            SizedBox(
              width: 279,
              height: 87,
              child: Text(
                'See how much you have done from your tasks',
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            ),
            Container(
              width: 60,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: ShapeDecoration(
                      color: Color(0xFF8AA7B4),
                      shape: OvalBorder(),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                /*  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.black],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter), */
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                color: Color(0xFF8BA8B5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Let’s Start',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              width: 200,
              height: 54,
            )
          ],
        ),
      ),
    );
  }
}
