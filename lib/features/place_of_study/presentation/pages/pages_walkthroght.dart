// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, sized_box_for_whitespace, sort_child_properties_last, use_key_in_widget_constructors
// sized_box_for_whitespace, sort_child_properties_last, use_key_in_widget_constructors, unused_label
import 'package:flutter/material.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/page1.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/page2.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/page3.dart';

// void main() {
//   runApp(MyApp());
// }
class PagesWalkthroght extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // debugShowCheckedModeBanner: false,
        body: PageView(
          children: [
            HomePage1(),
            HomePage2(),
            HomePage3(),
          ],
        ));
  }
}


















/* class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 71),
                    child: Text('skip')
                  ),Image.asset(
                  'assets/1.png'),
                  Text('Write Lists'),
                  Text('Write your tasks in a list and check them when done!'),
                  Image.asset(
                  'assets/page-1/images/frame-4-Y9x.png'),
                  TextButton(onPressed: onPressed, child: Text('Next')),
                  
                
                  
                ],
              ),
            )));
  }
  onPressed(){
    print('hello');
  }
} */