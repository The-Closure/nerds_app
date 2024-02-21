// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:my_reservations/Core/Domain/Model/Base_model.dart';

class RoomModel extends BaseModel {
  num id;
  int max_num_of_chairs;
  int status;
  int placeId;
  RoomModel({
    required this.id,
    required this.max_num_of_chairs,
    required this.status,
    required this.placeId,
  });

  RoomModel copyWith({
    num? id,
    int? max_num_of_chairs,
    int? status,
    int? placeId,
  }) {
    return RoomModel(
      id: id ?? this.id,
      max_num_of_chairs: max_num_of_chairs ?? this.max_num_of_chairs,
      status: status ?? this.status,
      placeId: placeId ?? this.placeId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'max_num_of_chairs': max_num_of_chairs,
      'status': status,
      'placeId': placeId,
    };
  }

  factory RoomModel.fromMap(Map<String, dynamic> map) {
    return RoomModel(
      id: map['id'] as num,
      max_num_of_chairs: map['max_num_of_chairs'] as int,
      status: map['status'] as int,
      placeId: map['placeId'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomModel.fromJson(String source) => RoomModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RoomModel(id: $id, max_num_of_chairs: $max_num_of_chairs, status: $status, placeId: $placeId)';
  }

  @override
  bool operator ==(covariant RoomModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.max_num_of_chairs == max_num_of_chairs &&
      other.status == status &&
      other.placeId == placeId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      max_num_of_chairs.hashCode ^
      status.hashCode ^
      placeId.hashCode;
  }
}
