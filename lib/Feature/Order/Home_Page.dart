import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_reservations/Feature/Order/Meeting_Room.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text('Welcome to COSEL' , style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w500 , color: Color.fromRGBO(49, 56, 79, 1)),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TabBar(tabs: [
            Container(
              width: 108,
              height: 115,
              decoration: BoxDecoration(
                gradient:LinearGradient(colors: [Color.fromRGBO(244, 143, 172, 0.62),Color.fromRGBO(241, 101, 141, 1)]),
                borderRadius: BorderRadius.circular(15) ,
              ),
              child:Center(
                child: SizedBox(
                  height: 70,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Image.asset('lib/Core/Resources/assets/soccer.png'),
                      ),
                      Text('Meeting Room',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600 , color: Colors.white),),
                    ],
                  ),
                ),
              ) ,
            ),
            Container(
              width: 108,
              height: 115,
              decoration: BoxDecoration(
                color: Color.fromRGBO(239, 239, 242, 1),
                //gradient:LinearGradient(colors: [Color.fromRGBO(244, 143, 172, 0.62),Color.fromRGBO(241, 101, 141, 1)]),
                borderRadius: BorderRadius.circular(15) ,
              ),
              child:Center(
                child: SizedBox(
                  height: 70,
                  child: Column(
                    children: [
                      Image.asset('lib/Core/Resources/assets/Group.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Coffee Shop',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600 , color: Color.fromRGBO(49, 56, 79, 1)),),
                      ),
                    ],
                  ),
                ),
              ) ,
            ),
            Container(
              width: 108,
              height: 115,
              decoration: BoxDecoration(
                color: Color.fromRGBO(239, 239, 242, 1),
               // gradient:LinearGradient(colors: [Color.fromRGBO(244, 143, 172, 0.62),Color.fromRGBO(241, 101, 141, 1)]),
                borderRadius: BorderRadius.circular(15) ,
              ),
              child:Center(
                child: SizedBox(
                  height: 70,
                  child: Column(
                    children: [
                      Image.asset('lib/Core/Resources/assets/study.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Study Room',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600 , color: Color.fromRGBO(49, 56, 79, 1)),),
                      ),
                    ],
                  ),
                ),
              ) ,
            ),
                    ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 400,
              height: 470,
              child: TabBarView(children: [
                Container(
                  child: MeetingRoom(),
                  ),
                Container(
                  child:FlutterLogo() ,
                
                  ),
                Container(
                  child: FlutterLogo() ,
                  ),
              ]),
            ),
          ),
        ],
      ),
      ));
  }
}
