// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:reservations/core/domain/model/result_model.dart';

class PlacesModel extends ServiceResultModel  {
  int id;
  String name;
  List<String> locations;
  PlacesModel({
    required this.id,
    required this.name,
    required this.locations,
  });

  PlacesModel copyWith({
    int? id,
    String? name,
    List<String>? locations,
  }) {
    return PlacesModel(
      id: id ?? this.id,
      name: name ?? this.name,
      locations: locations ?? this.locations,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'locations': locations,
    };
  }

  factory PlacesModel.fromMap(Map<String, dynamic> map) {
    return PlacesModel(
      id: map['id'] as int,
      name: map['name'] as String,
      locations: List<String>.from((map['locations'] as List<String>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory PlacesModel.fromJson(String source) => PlacesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PlacesModel(id: $id, name: $name, locations: $locations)';

  @override
  bool operator ==(covariant PlacesModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      listEquals(other.locations, locations);
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ locations.hashCode;
}
