// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/constants/enums.dart';
import 'home_artbord2.dart';

class Artbord2 extends StatefulWidget {
  const Artbord2({super.key});

  @override
  State<Artbord2> createState() => _Artbord2State();
}

int selectedIndex = 0;
List<Widget> pages = [
  const HomeArtbord2(),
  const Scaffold(
    body: Text('data'),
  ),
  const Scaffold(),
  const Scaffold()
];

class _Artbord2State extends State<Artbord2> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    DateTime newdate = DateTime.now();
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: height * 2 / 10,
            leading: Container(),
            title: Text(
                '${WeekDays.values[(newdate.weekday) - 1].name}\n${newdate.day} ${Months.values[(newdate.month) - 1].name}\n'),
            actions: const [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(Icons.search),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            ]),
        body: pages[selectedIndex],
        bottomNavigationBar: NavigationBar(
          height: height / 10,
          backgroundColor: Colors.white,
          elevation: 0,
          // indicatorShape: CircleBorder(),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          // animationDuration: Duration(seconds: 3),
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIndex: selectedIndex,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'HomePage'),
            NavigationDestination(
                icon: Icon(Icons.calendar_month_outlined), label: 'calendar'),
            NavigationDestination(
                icon: Icon(Icons.chat_outlined), label: 'chat'),
            NavigationDestination(icon: Icon(Icons.person), label: 'profaile'),
          ],
        ));
  }
}
