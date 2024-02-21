// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RoomCategory {
  int id;
  String type;
  int place_id;
  int num_of_seats;
  RoomCategory({
    required this.id,
    required this.type,
    required this.place_id,
    required this.num_of_seats,
  });

  RoomCategory copyWith({
    int? id,
    String? type,
    int? place_id,
    int? num_of_seats,
  }) {
    return RoomCategory(
      id: id ?? this.id,
      type: type ?? this.type,
      place_id: place_id ?? this.place_id,
      num_of_seats: num_of_seats ?? this.num_of_seats,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'place_id': place_id,
      'num_of_seats': num_of_seats,
    };
  }

  factory RoomCategory.fromMap(Map<String, dynamic> map) {
    return RoomCategory(
      id: map['id'] as int,
      type: map['type'] as String,
      place_id: map['place_id'] as int,
      num_of_seats: map['num_of_seats'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomCategory.fromJson(String source) =>
      RoomCategory.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RoomCategory(id: $id, type: $type, place_id: $place_id, num_of_seats: $num_of_seats)';
  }

  @override
  bool operator ==(covariant RoomCategory other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.type == type &&
        other.place_id == place_id &&
        other.num_of_seats == num_of_seats;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        type.hashCode ^
        place_id.hashCode ^
        num_of_seats.hashCode;
  }
}
