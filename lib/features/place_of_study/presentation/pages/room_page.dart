// ignore_for_file: prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names

import 'package:dashbord_cafe/features/place_of_study/domain/entities/room_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/room/bloc/room_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/room/bloc/room_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/room/bloc/room_state.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/pages/room_category_page.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/widgets/room_widget.dart';
import 'package:dashbord_cafe/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key, required this.idPlace, required this.idCategry});
  final int idPlace;
  final int idCategry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
          create: (context) =>
              sl<RoomOfCafesBloc>()..add(GetRooms(idPlace: idPlace)),
          child: BlocConsumer<RoomOfCafesBloc, RoomState>(
            listener: (context, state) {
              if (state is RoomsLoadingState) {
                print('hello');
              }
            },
            builder: (context, state) {
              if (state is RoomsDoneState) {
                List<RoomEntity> roomsByCategry = [];
                for (var element in state.rooms!) {
                  if (element.category_id == idCategry) {
                    roomsByCategry.add(element);
                  }
                }
                return (roomsByCategry.isEmpty)
                    ? Center(child: Text('no room yet '))
                    : ListView.builder(
                        itemCount: roomsByCategry.length,
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (contaxt) => TableCategoryPage(
                                            idRoom: roomsByCategry[index].id,
                                          )));
                            },
                            child: RoomWidget(
                              onRoomPressed: (room) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (contaxt) => TableCategoryPage(
                                            idRoom: roomsByCategry[index].id,
                                          ))),
                              index: index,
                              room: roomsByCategry[index],
                            )));
              } else if (state is RoomsErrorState) {
                return Center(child: Text(state.exception!.message!));
              } else {
                return Center(
                  child: Center(
                    child: Text(state.toString()),
                  ),
                );
              }
            },
          )),
    );
  }
}
