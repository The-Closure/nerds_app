import 'package:flutter/material.dart';
import 'package:reservations/feature/Room_screens/Coffee_Shop/CoffeeShopScreen.dart';
import 'package:reservations/feature/Room_screens/Study_Room/study_room_screen.dart';

PageController controllerRoomsDetails = PageController();
class RoomsDetailsScreen extends StatelessWidget {
  const RoomsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    PageView(
      physics: AlwaysScrollableScrollPhysics(
        
      ),
      controller: controllerRoomsDetails,
      children: const [
      MeetingRoomScreen(),
      CoffeeShopScreen(),
      StudyRoomScreen(),
    ],);

    
  }
}


class MeetingRoomScreen extends StatelessWidget {
  const MeetingRoomScreen({super.key});

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
                Container(
                  width: 108,
                  height: 115,
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
                        Image.asset("asset/soccer.png"),
                        Text('Meeting Room', style: TextStyle(color: Colors.white , fontSize: 12 , fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                  controllerRoomsDetails.nextPage(duration: Duration(seconds:1), curve: Curves.easeInCubic );   
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => CoffeeShopScreen(),
                    //   ));
                  },
                  child: Container(
                    width: 108,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                       color: Color(0xffEFEFF2)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("asset/Vector.png"),
                          Text('Coffee Shop ', style: TextStyle(color: Colors.black , fontSize: 12 , fontWeight: FontWeight.bold),)
                        ],
                      ),
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
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                 gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xff7B9DE2),
                            Color(0xff3B3BC0),
                          ], 
                        ),
              ),     
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Looking for a safe', style: TextStyle(fontSize: 18 , color: Colors.white),),
                      Text(' stuying place ?', style: TextStyle(fontSize: 18 , color: Colors.white),)
                    ],
                  ),
                  Image.asset('asset/house.png')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('COSEL creates studying spaces that help students go further, faster by building a positive community dreaming of a better tomorrow.' , style: TextStyle(fontSize: 14),),
            ),
            ListTile(
              leading:Image.asset("asset/wifi.png"),
              title:Text('Hight speed internet' , style: TextStyle(fontSize: 16),),
      
            ),
            ListTile(
              leading:Image.asset("asset/pro.png"),
              title:Text('Projector' , style: TextStyle(fontSize: 16),),
      
            ),
            ListTile(
              leading:Image.asset("asset/board.png"),
              title:Text('Withe Board' , style: TextStyle(fontSize: 16),),
      
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