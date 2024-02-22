import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account' , style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
             TextField(
                      // controller: password,          
                      decoration: InputDecoration(
                        label: Text('First name'),
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
                        label: Text('Last Name'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                   
             TextField(
                      // controller: password,          
                      decoration: InputDecoration(
                        label: Text('Email'),
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
                    SizedBox(height: 20,),
             TextField(
                      // controller: password,
                      obscureText: true,                    
                      decoration: InputDecoration(
                        label: Text('Comfirm Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                   
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                              'Create Account',style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.w500),),
                          ),
                          width: 311,
                          height: 56,
                        ),
                       ),
                     ],
                    )
                  ),
          ],
        ),
      ),
    );
  }
}