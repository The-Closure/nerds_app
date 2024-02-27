// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

import 'package:equatable/equatable.dart';

class PlaceEntity extends Equatable {
  final num? id;
  final String? name;
  final List<dynamic>? locations;

  const PlaceEntity(this.id, this.name, this.locations);

  @override
  List<Object?> get props => [id, name, locations];

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'locations': locations,
    };
  }

  factory PlaceEntity.fromJson(Map<String, dynamic> map) {
    return PlaceEntity(
      map['id'] != null ? map['id'] as num : null,
      map['name'] != null ? map['name'] as String : null,
      map['locations'] != null ? List<dynamic>.from((map['locations'] as List<dynamic>)) : null,
    );
  }
}
