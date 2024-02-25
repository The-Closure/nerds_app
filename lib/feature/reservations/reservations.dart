import 'package:dashbord_cafe/core/resources/colors.dart';
import 'package:dashbord_cafe/feature/reservations/busy.dart';
import 'package:dashbord_cafe/feature/reservations/reserved.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Reservations extends StatelessWidget {
  const Reservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 246, 255, 1),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.article_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ],
            ),
            centerTitle: true,
            backgroundColor: darkBlue,
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Busy',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Reserved',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
          ),
          body: TabBarView(children: [Busy(), Reserved()]),
        ),
      ),
    );
  }
}
