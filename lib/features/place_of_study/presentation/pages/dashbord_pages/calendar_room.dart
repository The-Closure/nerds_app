// ignore_for_file: constant_identifier_names, must_be_immutable

import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/reservation_room/bloc/reservation_room_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/reservation_room/bloc/reservation_room_state.dart';
import '../../widgets/shimmer_loading.dart';

class CalendarRoom extends StatelessWidget {
  CalendarRoom({super.key});
  List<List<Color>> colors = [
    <Color>[
      Color(0xff7B9DE2),
      Color(0xff3B3BC0),
    ],
    <Color>[
      Color.fromARGB(255, 226, 123, 190),
      Color.fromARGB(255, 120, 11, 130),
    ],
    <Color>[
      Color.fromARGB(255, 216, 226, 123),
      Color.fromARGB(255, 143, 192, 59),
    ],
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        body:  BlocConsumer<ReservationRoomBloc, ReservationRoomState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GetReservationsRoomDoneState) {
            return ListView.builder(
              itemCount: state.reservationsRoom!.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    width: width - 50,
                    height: height * 1.3 / 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          colors: colors[(index % 3 == 0)
                              ? 1
                              : (index % 3 == 1)
                                  ? 0
                                  : 2]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.reservationsRoom![index].place!.name!,
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: height * 0.1 / 10,
                          ),
                          Text(
                            'number of seats :${state.reservationsRoom![index].number_of_seats}\nperiod of reservations :${state.reservationsRoom![index].period_of_reservations}',
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else if (state is ReservationsRoomErrorState) {
            return Center(
              child: Text(state.exception!.message!),
            );
          } else {
            return const ShimmerLoading();
          }
        },
      ),
    );
  }
}
