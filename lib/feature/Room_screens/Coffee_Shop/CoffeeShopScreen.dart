import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reservations/feature/Room_screens/Meeting_Room/meeting_room_screen.dart';
import 'package:reservations/feature/Room_screens/Study_Room/study_room_screen.dart';

class CoffeeShopScreen extends StatelessWidget {
  const CoffeeShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: Image.asset('asset/cosel logo.png'),
        title: Text('Welcome to COSEL' , style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MeetingRoomScreen(),
                      ));
                  },
                  child: Container(
                    width: 108,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                       color: Color(0xffEFEFF2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("asset/Vector_pink.png"),
                          Text('Meeting Room', style: TextStyle(color: Colors.black , fontSize: 12 , fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 108,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                       gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xffF48FAC),
                            Color(0xffF1658D),
                          ], 
                        ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("asset/Vector_white.png"),
                        Text('Coffee Shop ', style: TextStyle(color: Colors.white , fontSize: 12 , fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudyRoomScreen(),
                      ));
                  },
                  child: Container(
                    width: 108,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                       color: Color(0xffEFEFF2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("asset/study.png"),
                          Text('Study Room', style: TextStyle(color: Colors.black , fontSize: 12 , fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 333,
              height: 177,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                 image: DecorationImage(image: AssetImage('asset/labtob.png')),
                 
              ),     
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, 
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Coffee Shop', style: TextStyle(fontSize: 18 , color: Colors.white),),
                        Text('Check Our Menu', style: TextStyle(fontSize: 18 , color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Celebrate the irrisistible flavor of coffee in our range of espresso , cocktails and ice drinks' , style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
            ),
               SizedBox(
                width: 210,
                height: 210,
                 child: Image.asset(
                  'asset/coffee.png'),
               ),
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
                              'Book Now',style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.w500),),
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