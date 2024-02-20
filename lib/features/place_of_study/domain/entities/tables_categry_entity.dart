// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

class TablesCategryEntity extends Equatable {
  final int? id;
  final int? num_of_seats;
  final String? shape;
  const TablesCategryEntity({
    this.id,
    this.num_of_seats,
    this.shape,
  });

  @override
  List<Object?> get props => [id, num_of_seats, shape];
}
