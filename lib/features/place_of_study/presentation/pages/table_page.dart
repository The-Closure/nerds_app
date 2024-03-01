import 'package:dashbord_cafe/features/place_of_study/domain/entities/table_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/table/bloc/table_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/table/bloc/table_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/table/bloc/table_state.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/widgets/table_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key, required this.idRoom, required this.idCategry});
  final int idRoom;
  final int idCategry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: BlocProvider(
          create: (context) => sl<TableBloc>()..add(GetTables(idRoom: idRoom)),
          child: BlocConsumer<TableBloc, TableState>(
            listener: (context, state) {
              if (state is TablesLoadingState) {
                print('hello');
              }
            },
            builder: (context, state) {
              if (state is TablesDoneState) {
                List<TableEntity> TablesByCategry = [];
                for (var element in state.tables!) {
                  if (element.category_id == idCategry) {
                    TablesByCategry.add(element);
                  }
                }
                return (TablesByCategry.isEmpty)
                    ? Center(child: Text('no Table yet '))
                    : ListView.builder(
                        itemCount: TablesByCategry.length,
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {},
                            child: TableWidget(
                              index: index,
                              table: TablesByCategry[index],
                            )));
              } else if (state is TablesErrorState) {
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
