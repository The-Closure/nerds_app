import 'package:flutter/material.dart';
import 'package:reservations/feature/auth/application_details_screen/details_screen.dart';
import 'package:reservations/feature/auth/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

PageController controller =PageController();


class _SplashScreenState extends State<SplashScreen> {
@override
  
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(milliseconds: 2400)).then((value) => setState(() {
       Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(            
                  children: [
                    SizedBox(height: 100,),
                    Image.asset('asset/cosel logo.png'),
                Text('COSEL' , style: TextStyle(fontSize: 72 , fontWeight: FontWeight.w500),),
 ],
                ),
                Image.asset('asset/Capture.PNG'),
              ],
            )
            ),
       ),
    );
  }
}

