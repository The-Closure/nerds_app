// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:my_reservations/Core/Domain/Model/Base_model.dart';

class PlaceModel extends BaseModel {
  num id;
  String name;
  List<String> locations;
  List<String> rooms;
  PlaceModel({
    required this.id,
    required this.name,
    required this.locations,
    required this.rooms,
  });

  PlaceModel copyWith({
    num? id,
    String? name,
    List<String>? locations,
    List<String>? rooms,
  }) {
    return PlaceModel(
      id: id ?? this.id,
      name: name ?? this.name,
      locations: locations ?? this.locations,
      rooms: rooms ?? this.rooms,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'locations': locations,
      'rooms': rooms,
    };
  }

  factory PlaceModel.fromMap(Map<String, dynamic> map) {
    return PlaceModel(
      id: map['id'] as num,
      name: map['name'] as String,
      locations: map['locations'] as List<String> ,
      rooms: map['rooms'] as List<String> ,
     // locations: List<String>.from((map['locations'] as List<String>),
      //rooms: List<String>.from((map['rooms'] as List<String>),
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceModel.fromJson(String source) => PlaceModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PlaceModel(id: $id, name: $name, locations: $locations, rooms: $rooms)';
  }

  @override
  bool operator ==(covariant PlaceModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      listEquals(other.locations, locations) &&
      listEquals(other.rooms, rooms);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      locations.hashCode ^
      rooms.hashCode;
  }
}
