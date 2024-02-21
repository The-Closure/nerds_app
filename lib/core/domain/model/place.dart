// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Place {
  int id;
  String name;
  List<String> locations;
  Place({
    required this.id,
    required this.name,
    required this.locations,
  });

  Place copyWith({
    int? id,
    String? name,
    List<String>? locations,
  }) {
    return Place(
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

  factory Place.fromMap(Map<String, dynamic> map) {
    return Place(
        id: map['id'] as int,
        name: map['name'] as String,
        locations: List<String>.from(
          (map['locations'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Place.fromJson(String source) =>
      Place.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Place(id: $id, name: $name, locations: $locations)';

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ locations.hashCode;
}
