// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PlaceEntity extends Equatable {
  final int? id;
  final String? name;
  final List<dynamic>? locations;

  const PlaceEntity(this.id, this.name, this.locations);

  @override
  List<Object?> get props => [id, name, locations];
}
