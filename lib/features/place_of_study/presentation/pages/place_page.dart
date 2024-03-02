import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/place/bloc/place_of_cafes_state.dart';
import '../widgets/place_widget.dart';

class PagePlace extends StatelessWidget {
  const PagePlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocConsumer<PlaceOfCafesBloc, PlaceOfCafesState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        if (state is PlacesDoneState) {
          return ListView.builder(itemCount: state.places!.length,itemBuilder:(context, index) =>  PlaceWidget(place: state.places![index],),);
        } else  if (state is PlacesErrorState) {
          return Center(child: Text(state.exception!.message!),);
        }else  if (state is PlacesLoadingState) {
          return const Center(child: CircularProgressIndicator(),);
        } else {
        return Container();
        }
      },
    ),);
  }
}