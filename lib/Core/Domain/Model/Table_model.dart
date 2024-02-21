// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:my_reservations/Core/Domain/Model/Base_model.dart';

class TableModel extends BaseModel {
  num id;
  List<bool> available_seats;
  int status;
  num category_id;
  num room_id;
  TableModel({
    required this.id,
    required this.available_seats,
    required this.status,
    required this.category_id,
    required this.room_id,
  });

  TableModel copyWith({
    num? id,
    List<bool>? available_seats,
    int? status,
    num? category_id,
    num? room_id,
  }) {
    return TableModel(
      id: id ?? this.id,
      available_seats: available_seats ?? this.available_seats,
      status: status ?? this.status,
      category_id: category_id ?? this.category_id,
      room_id: room_id ?? this.room_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'available_seats': available_seats,
      'status': status,
      'category_id': category_id,
      'room_id': room_id,
    };
  }

  factory TableModel.fromMap(Map<String, dynamic> map) {
    return TableModel(
      id: map['id'] as num,
      available_seats: map['available_seats'] as List<bool> ,
     // available_seats: List<bool>.from((map['available_seats'] as List<bool>)),
      status: map['status'] as int,
      category_id: map['category_id'] as num,
      room_id: map['room_id'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory TableModel.fromJson(String source) => TableModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TableModel(id: $id, available_seats: $available_seats, status: $status, category_id: $category_id, room_id: $room_id)';
  }

  @override
  bool operator ==(covariant TableModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      listEquals(other.available_seats, available_seats) &&
      other.status == status &&
      other.category_id == category_id &&
      other.room_id == room_id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      available_seats.hashCode ^
      status.hashCode ^
      category_id.hashCode ^
      room_id.hashCode;
  }
  }
