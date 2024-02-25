import 'package:dashbord_cafe/core/config/bloc_integration.dart';
import 'package:dashbord_cafe/core/resources/colors.dart';
import 'package:dashbord_cafe/feature/homePage/home_info.dart';
import 'package:dashbord_cafe/feature/homePage/place_bloc/place_bloc.dart';
import 'package:dashbord_cafe/feature/reservations/reservations.dart';
import 'package:dashbord_cafe/feature/homePage/rooms/room_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaceBloc(),
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: InfoPage(),
        );
      }),
    );
  }
}

List<Widget> pages = [Reservations(), HomeInfo(), RoomCategory()];
int selectedIndix = 1;

class InfoPage extends StatelessWidget {
  InfoPage({super.key});

  void initState() {}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaceBloc(),
      child: BlocConsumer<PlaceBloc, PlaceState>(
        listener: (context, state) {
          if (state is NavigateToNewBarState) {
            selectedIndix = state.newIndex;
          }
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
              indicatorColor: lightBlue,
              backgroundColor: darkBlue,
              selectedIndex: selectedIndix,
              onDestinationSelected: (value) {
                context
                    .read<PlaceBloc>()
                    .add(NavigateToNewBarEvent(newIndex: value));
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
