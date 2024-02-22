import 'package:flutter/material.dart';

PageController controller = PageController();
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: controller,
      children: const [
      FirstDetailsScreen(),
      SceondDetailsScreen(),
      ThirdDetailsScreen(),
    ],);

    
  }
}

class FirstDetailsScreen extends StatefulWidget {
  const FirstDetailsScreen({super.key});

  @override
  State<FirstDetailsScreen> createState() => _FirstDetailsScreenState();
}
class _FirstDetailsScreenState extends State<FirstDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('asset/onedetails.png' , 
              fit: BoxFit.cover,
               ),
             Text('Learn anytime and anywhere',style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 24), textAlign: TextAlign.center,), 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                      setState(() {
                          // color = Colors.red;
                      });
                      },
                      child: AnimatedContainer(
                        curve:  Curves.easeIn,
                        width: 10,
                        height: 10 ,
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff91D7E0),
                        ),
                         duration: Duration(seconds: 3),
                      ),
                    ),
                    SizedBox(width: 8,),
                    AnimatedContainer(
                      width: 10,
                      height: 10 ,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD5D4D4),
                      ),
                       duration: Duration(seconds: 3),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      width: 10,
                      height: 10 ,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD9D9D9),
                      ),
                    ),
                    ],
                ),
              InkWell(
                onTap: () {
                  controller.nextPage(duration: Duration(seconds:1), curve: Curves.easeInCubic );   
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
                      'Next',style: TextStyle(color: Colors.white),),
                  ),
                  width: 311,
                  height: 56,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


////////////////////////////////!


class SceondDetailsScreen extends StatefulWidget {
  const SceondDetailsScreen({super.key});

  @override
  State<SceondDetailsScreen> createState() => _SceondDetailsScreenState();
}
class _SceondDetailsScreenState extends State<SceondDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('asset/twodetails.png' , 
              fit: BoxFit.cover,
               ),
             Text('Find The perfect Space',style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 24), textAlign: TextAlign.center,), 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                      setState(() {
                          // color = Colors.red;
                      });
                      },
                      child: AnimatedContainer(
                        curve:  Curves.easeIn,
                        width: 10,
                        height: 10 ,
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      color: Color(0xffD5D4D4),
                        ),
                         duration: Duration(seconds: 3),
                      ),
                    ),
                    SizedBox(width: 8,),
                    AnimatedContainer(
                      width: 10,
                      height: 10 ,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        color: Color(0xff91D7E0),
                      ),
                       duration: Duration(seconds: 3),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      width: 10,
                      height: 10 ,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD9D9D9),
                      ),
                    ),
                    ],
                ),
              InkWell(
                onTap: () {
                  controller.nextPage(duration: Duration(seconds:1), curve: Curves.easeInCubic );   
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
                      'Next',style: TextStyle(color: Colors.white),),
                  ),
                  width: 311,
                  height: 56,
                ),
              )
            ],
          ),
        ),
      ),
      );
  }
}




class ThirdDetailsScreen extends StatefulWidget {
  const ThirdDetailsScreen({super.key});

  @override
  State<ThirdDetailsScreen> createState() => _ThirdDetailsScreenState();
}
class _ThirdDetailsScreenState extends State<ThirdDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('asset/threedetails.png' , 
              fit: BoxFit.cover,
               ),
             Text('Define Cozy spot? it’s us ',style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 24), textAlign: TextAlign.center,), 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                
                      },
                      child: AnimatedContainer(
                        curve:  Curves.easeIn,
                        width: 10,
                        height: 10 ,
                        decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                        shape: BoxShape.circle,
                        ),
                         duration: Duration(seconds: 3),
                      ),
                    ),
                    SizedBox(width: 8,),
                    AnimatedContainer(
                      width: 10,
                      height: 10 ,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD5D4D4),
                      ),
                       duration: Duration(seconds: 3),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      width: 10,
                      height: 10 ,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        color: Color(0xff91D7E0),
                      ),
                    ),
                    ],
                ),
              InkWell(
                onTap: () {
                  controller.nextPage(duration: Duration(seconds:1), curve: Curves.easeInCubic );   
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
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
                      'Start',style: TextStyle(color: Colors.white),),
                  ),
                  width: 311,
                  height: 56,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

