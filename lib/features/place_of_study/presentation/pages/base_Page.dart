// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:dashbord_cafe/config/theme/bloc/theme_app_bloc.dart';
import 'package:dashbord_cafe/config/theme/bloc/theme_app_state.dart';
import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/reservation_model.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/reservattion/bloc/reservation_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/reservattion/bloc/reservation_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/reservattion/bloc/reservation_state.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/page_meeting_room.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/place_cafes.dart';
import 'package:dashbord_cafe/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';

import 'page_coffe_shop.dart';
import 'page_events.dart';
import 'page_study_room.dart';

int selectedIndex = 0;

class Basepage extends StatefulWidget {
  const Basepage({super.key});
// String user = config.get<SharedPreferences>().getString('user')!;
  @override
  State<Basepage> createState() => _BasepageState();
}

class _BasepageState extends State<Basepage> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: NavigationBar(
          height: height / 10,
          backgroundColor: Colors.white,
          elevation: 0,
          // indicatorShape: CircleBorder(),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          // animationDuration: Duration(seconds: 3),
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIndex: selectedIndex,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'HomePage'),
            NavigationDestination(
                icon: Icon(Icons.favorite), label: 'favorite'),
            NavigationDestination(
                icon: Icon(Icons.notifications_none_sharp),
                label: 'notifications'),
            NavigationDestination(icon: Icon(Icons.person), label: 'profaile'),
          ],
        ));
  }
}

List<Widget> pages = [
  Home(),
  PlaceCafes(),
  Scaffold(
    appBar: AppBar(),
    drawer: Drawer(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    )),
              ),
              Expanded(
                  child: ListTile(
                title: Text(
                  ' userModel.name',
                ),
                subtitle: Text('serModel.email'),
              ))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: Text('Home Page'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          BlocBuilder<ThemeAppBloc, ThemeData>(
            builder: (context, state) {
              return Column(
                children: [
                  SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: Shimmer.fromColors(
                      baseColor: Colors.red,
                      highlightColor: Colors.yellow,
                      child: Text(
                        'Shimmer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Switch(
                      value: state == darkThemeData(),
                      onChanged: (val) {
                        context.read<ThemeAppBloc>().add(SwitcherThemeApp());
                      }),
                ],
              );
            },
          ),
          ListTile(
            title: Text('languge'),
            leading: Icon(Icons.language_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text('Account'),
            leading: Icon(Icons.account_balance_wallet_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text('order'),
            leading: Icon(Icons.account_box_rounded),
            onTap: () {},
          ),
          ListTile(
            title: Text('About Us'),
            leading: Icon(Icons.help),
            onTap: () {},
          ),
          ListTile(
            title: Text('cantact Us'),
            leading: Icon(Icons.phone_sharp),
            onTap: () {
              // await launchURL(url);
            },
          ),
          ListTile(
            title: Text('log out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () async {},
          ),
        ]),
      ),
    ),
  ),
  Scaffold()
];
String value = '';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ReservationBloc>()..add(GetReservations()),
      child: DefaultTabController(
        // animationDuration: Duration(seconds: 4),
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              // centerTitle: true,
              // leading: Container(),
              title: Text(
                'Welcome to COSEL',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              bottom: TabBar.secondary(
                
                enableFeedback: true,
                padding: EdgeInsets.all(10),
                indicator: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(45, 141, 153, 187),
                    const Color.fromARGB(255, 238, 106, 106)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                // automaticIndicatorColorAdjustment: true,
                splashBorderRadius: BorderRadius.all(Radius.circular(100)),
                // tabAlignment: TabAlignment.start,
                unselectedLabelColor: Colors.red,
                labelColor: Colors.white,
                indicatorColor: null,
                dividerColor: null,
                // controller: TabController(length: 3, vsync: this),
                tabs: [
                  Tab(

                      icon:  FaIcon(FontAwesomeIcons.peopleGroup),
                      height: 100,
                      child: Text('Meeting Room')),
                  Tab(
                      icon: FaIcon(FontAwesomeIcons.clockRotateLeft),
                      height: 100,
                      child: Text('coffe Shop')),
                  Tab(
                      icon: FaIcon(FontAwesomeIcons.schoolLock),
                      height: 100,
                      child: Text('Study Room')),
                  Tab(
                      icon: FaIcon(FontAwesomeIcons.peopleRoof),
                      height: 100,
                      child: Text('Events')),
                ],
              ),
            ),
            body: TabBarView(
              
              children: [
              PageMeetingRoom(),
              PageCoffeShop(),
              PageStudyRoom(),
              PageEvents()
            ]),
            floatingActionButton:
                BlocBuilder<ReservationBloc, ReservationState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      context.read<ReservationBloc>().add(PostReservation(
                          reservationEntity: ReservationModel()));
                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text('Book now')),
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}
