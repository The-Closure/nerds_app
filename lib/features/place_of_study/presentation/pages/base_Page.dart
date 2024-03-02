// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_function_literals_in_foreach_calls, file_names

import 'package:dashbord_cafe/config/theme/bloc/theme_app_bloc.dart';
import 'package:dashbord_cafe/config/theme/bloc/theme_app_state.dart';
import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'user_pages/place_page.dart';

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
  PagePlace(),
  Scaffold(),
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

