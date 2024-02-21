import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_reservations/Feature/Auth/pagesForTest/First_Page_test.dart';

class RegisterPageTest extends StatelessWidget {
  const RegisterPageTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: Text(
            'Create Account',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(49, 56, 79, 1)),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 24),
            child: SizedBox(
              width: 328,
              height: 66,
              child: TextField(
                decoration: InputDecoration(
                  label: Text(
                    'First Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(131, 135, 149, 1),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(226, 227, 228, 1))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 24),
            child: SizedBox(
              width: 328,
              height: 66,
              child: TextField(
                decoration: InputDecoration(
                  label: Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(131, 135, 149, 1),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(226, 227, 228, 1))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 24),
            child: SizedBox(
              width: 328,
              height: 66,
              child: TextField(
                decoration: InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(131, 135, 149, 1),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(226, 227, 228, 1))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 24),
            child: SizedBox(
              width: 328,
              height: 66,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  label: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(131, 135, 149, 1),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(226, 227, 228, 1))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 24),
            child: SizedBox(
              width: 328,
              height: 66,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  label: Text(
                    'Confirm Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(131, 135, 149, 1),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(226, 227, 228, 1))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 130),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPageTest()));
              },
              child: Container(
                width: 311,
                height: 56,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 248, 250, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Color.fromRGBO(131, 135, 149, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
