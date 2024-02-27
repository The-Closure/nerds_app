// ignore_for_file: prefer_const_constructors

import 'package:dashbord_cafe/features/place_of_study/presentation/pages/page_login.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/page_sign_up.dart';
import 'package:flutter/material.dart';

class PageFirst extends StatelessWidget {
  const PageFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/cosel logo.png'),
            Text(
              'LOOKING FOR A COZY STUDY SPOT',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            Text(
              'COSEL creates studying spaces that help students go further, faster by building a positive community dreaming of a better tomorrow.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageLogin(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffF05984),
                    width: 1,
                  ),
                  color: Color(0xffF05984),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 311,
                height: 56,
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSignup()));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff3B3A36),
                    width: 2,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'Create account',
                    style: TextStyle(
                        color: Color(0xff3B3A36),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                width: 311,
                height: 56,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
