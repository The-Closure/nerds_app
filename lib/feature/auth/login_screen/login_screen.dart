import 'package:flutter/material.dart';
import 'package:reservations/feature/Room_screens/Meeting_Room/meeting_room_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login' , style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
             TextField(
                      // controller: password,          
                      decoration: InputDecoration(
                        label: Text('Email or username'),
                      border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
             TextField(
                      // controller: password,
                      obscureText: true,                    
                      decoration: InputDecoration(
                        label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                    Text('Forgot your password?' , style: TextStyle( color: Color(0xffF05984) , fontSize: 14 , fontWeight: FontWeight.w400),),
                    SizedBox(height: 20,),
                  Text('Or sign in with'),
                    SizedBox(height: 20,),
                  Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                              color: Color(0xff1877F2),
                                width: 1,
                              ),
                              color: Color(0xff1877F2),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                'Continue with Facebook',style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.w500),),
                            ),
                            width: 328,
                            height: 54,
                          ),
                    SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(
                            boxShadow: [
                                BoxShadow(
                                  offset: const Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  blurRadius: 3.0,
                                  spreadRadius: 1.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ], 

                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                'Continue with Google',style: TextStyle(color: Colors.black , fontSize: 16 , fontWeight: FontWeight.w500),),
                            ),
                          width: 328,
                            height: 54,
                          ),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RoomsDetailsScreen(),
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
                          child: Center(
                            child: Text(
                              'Login',style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.w500),),
                          ),
                          width: 311,
                          height: 56,
                        ),
                ),
                    ],
                  )),
          ],
        ),
      ),
    );
  }
}