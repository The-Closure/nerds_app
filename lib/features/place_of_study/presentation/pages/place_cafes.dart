// ignore_for_file: prefer_const_constructors

import 'package:dashbord_cafe/config/theme/bloc/theme_app_bloc.dart';
import 'package:dashbord_cafe/config/theme/bloc/theme_app_state.dart';
import 'package:dashbord_cafe/features/place_of_study/data/models/place_model.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_bloc.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/place/bloc/place_of_cafes_state.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/widgets/place_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class PlaceCafes extends StatelessWidget {
  const PlaceCafes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: BlocBuilder<ThemeAppBloc, ThemeData>(
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
        )),
        appBar: _buildAppbar(context),
        body: _buildBody(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Post()));
        }));
  }

  _buildAppbar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Place Cafes',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        GestureDetector(
          onTap: () => {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Icon(Icons.bookmark, color: Colors.black),
          ),
        ),
      ],
    );
  }

  _buildBody() {
    return BlocBuilder<PlaceOfCafesBloc, PlaceOfCafesState>(
      builder: (_, state) {
        if (state is PlacesLoadingState) {
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state is PlacesErrorState) {
          return const Center(child: Icon(Icons.refresh));
        }
        if (state is PlacesDoneState) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return PlaceWidject(
                place: state.places![index],
                onplacePressed: (article) => {},
              );
            },
            itemCount: state.places!.length,
          );
        }
        return const SizedBox();
      },
    );
  }

  // void _onArticlePressed(BuildContext context, PlaceEntity placse) {
  //   Navigator.pushNamed(context, '/ArticleDetails', arguments: placse);
  // }

  // void _onShowSavedArticlesViewTapped(BuildContext context) {
  //   Navigator.pushNamed(context, '/SavedArticles');
  // }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceOfCafesBloc, PlaceOfCafesState>(
      builder: (context, state) {
        return FloatingActionButton(onPressed: () {
       context.read<PlaceOfCafesBloc>().add(PostPlace(
              placeEntity: PlaceModel(
            name: 'name',
            locations: const ['acs', 'acwac0'],
          )));
        });
      },
    );
  }
}
