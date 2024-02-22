import 'package:flutter/material.dart';

class RegistrationMethodScreen extends StatelessWidget {
  const RegistrationMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('asset/cosel logo.png'),
            Text('LOOKING FOR ACOZY STUDY SPOT' , style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700),),
            Text('COSEL creates studying spaces that help students go further, faster by building a positive community dreaming of a better tomorrow.' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400),),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    
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
            
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                
              },
              child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                        color: Color(0xff3B3A36),
                          width: 2,
                        ),
                        color:Colors.white ,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          'Create account',style: TextStyle(color: Color(0xff3B3A36) , fontSize: 16 , fontWeight: FontWeight.w500),),
                      ),
                      width: 311,
                      height: 56,
                    ),
            ),       
              ],
            ),
        
          ],
        ),
      ),
    );
  }
}