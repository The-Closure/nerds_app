// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Room {
  int id;
  int max_num_of_chairs;
  int status;
  int placeId;
  int category_id;
  Room({
    required this.id,
    required this.max_num_of_chairs,
    required this.status,
    required this.placeId,
    required this.category_id,
  });

  Room copyWith({
    int? id,
    int? max_num_of_chairs,
    int? status,
    int? placeId,
    int? category_id,
  }) {
    return Room(
      id: id ?? this.id,
      max_num_of_chairs: max_num_of_chairs ?? this.max_num_of_chairs,
      status: status ?? this.status,
      placeId: placeId ?? this.placeId,
      category_id: category_id ?? this.category_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'max_num_of_chairs': max_num_of_chairs,
      'status': status,
      'placeId': placeId,
      'category_id': category_id,
    };
  }

  factory Room.fromMap(Map<String, dynamic> map) {
    return Room(
      id: map['id'] as int,
      max_num_of_chairs: map['max_num_of_chairs'] as int,
      status: map['status'] as int,
      placeId: map['placeId'] as int,
      category_id: map['category_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Room.fromJson(String source) =>
      Room.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Room(id: $id, max_num_of_chairs: $max_num_of_chairs, status: $status, placeId: $placeId, category_id: $category_id)';
  }

  @override
  bool operator ==(covariant Room other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.max_num_of_chairs == max_num_of_chairs &&
        other.status == status &&
        other.placeId == placeId &&
        other.category_id == category_id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        max_num_of_chairs.hashCode ^
        status.hashCode ^
        placeId.hashCode ^
        category_id.hashCode;
  }
}
