// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:reservations/core/domain/model/result_model.dart';

class RoomsModel extends ServiceResultModel{
  int category_id;
  int placeId;
  int id;
  int max_num_of_chairs;
  String status;
  RoomsModel({
    required this.category_id,
    required this.placeId,
    required this.id,
    required this.max_num_of_chairs,
    required this.status,
  });

  RoomsModel copyWith({
    int? category_id,
    int? placeId,
    int? id,
    int? max_num_of_chairs,
    String? status,
  }) {
    return RoomsModel(
      category_id: category_id ?? this.category_id,
      placeId: placeId ?? this.placeId,
      id: id ?? this.id,
      max_num_of_chairs: max_num_of_chairs ?? this.max_num_of_chairs,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category_id': category_id,
      'placeId': placeId,
      'id': id,
      'max_num_of_chairs': max_num_of_chairs,
      'status': status,
    };
  }

  factory RoomsModel.fromMap(Map<String, dynamic> map) {
    return RoomsModel(
      category_id: map['category_id'] as int,
      placeId: map['placeId'] as int,
      id: map['id'] as int,
      max_num_of_chairs: map['max_num_of_chairs'] as int,
      status: map['status'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomsModel.fromJson(String source) => RoomsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RoomsModel(category_id: $category_id, placeId: $placeId, id: $id, max_num_of_chairs: $max_num_of_chairs, status: $status)';
  }

  @override
  bool operator ==(covariant RoomsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.category_id == category_id &&
      other.placeId == placeId &&
      other.id == id &&
      other.max_num_of_chairs == max_num_of_chairs &&
      other.status == status;
  }

  @override
  int get hashCode {
    return category_id.hashCode ^
      placeId.hashCode ^
      id.hashCode ^
      max_num_of_chairs.hashCode ^
      status.hashCode;
  }
}
