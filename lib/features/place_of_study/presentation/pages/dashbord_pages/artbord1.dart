
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection_container.dart';



List<Widget> pages = [Reservations(), Scaffold(), Scaffold()];
int selectedIndix = 1;

class InfoPage extends StatelessWidget {
  InfoPage({super.key});

  void initState() {}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PlaceOfCafesBloc>(),
      child: BlocConsumer<PlaceOfCafesBloc, PlaceOfCafesState>(
        listener: (context, state) {
          // if (state is PlacesDoneState) {
          //   selectedIndix = state.toString();
          // }
          // if (state is SuccessToLoadInfoData) {
          //   currentCenter = state.center;
          // }
        },
        builder: (context, state) {
          return Scaffold(
            body: pages[selectedIndix],
            bottomNavigationBar: NavigationBar(
              animationDuration: Duration(seconds: 3),
              elevation: 50,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              indicatorColor: Colors.white,
              backgroundColor: Colors.black,
              selectedIndex: selectedIndix,
              onDestinationSelected: (value) {
                context
                    .read<PlaceOfCafesBloc>()
                    .add(const GetPlaces());
              },
              destinations: [
                NavigationDestination(
                  icon: Icon(
                    Icons.article_outlined,
                    color: Colors.white,
                  ),
                  label: 'Reservations',
                ),
                NavigationDestination(
                    icon: Icon(Icons.home_filled, color: Colors.white),
                    label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.holiday_village_outlined,
                        color: Colors.white),
                    label: 'Halls'),
              ],
            ),
          );
        },
      ),
    );
  }
}

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
            backgroundColor: Colors.amber,
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

class Reserved extends StatelessWidget {
  const Reserved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          int reservedCount = 1;

          return ListView.builder(
            itemCount: reservedCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient:
                            LinearGradient(colors: [Colors.black, Colors.blue])),
                    child: ListTile(
                        title: Text('Table: 1'),
                        subtitle: Text('customer'),
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            'room',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.delete,
                            color: Colors.grey.shade100,
                          ),
                        )),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Busy extends StatelessWidget {
  const Busy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          int reservedCount = 1;

          return ListView.builder(
            itemCount: reservedCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient:
                            LinearGradient(colors: [Colors.black, Colors.blue])),
                    child: ListTile(
                        title: Text('Table: 1'),
                        subtitle: Text('customer'),
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            'room',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.delete,
                            color: Colors.grey.shade100,
                          ),
                        )),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
