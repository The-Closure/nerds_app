// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:reservations/core/domain/model/result_model.dart';



class TableModel extends ServiceResultModel{
  int id;
  String status;
  int category_id;
  int room_id;
  String message;
  List<bool> available_seats;
  TableModel({
    required this.id,
    required this.status,
    required this.category_id,
    required this.room_id,
    required this.message,
    required this.available_seats,
  });
 

  TableModel copyWith({
    int? id,
    String? status,
    int? category_id,
    int? room_id,
    String? message,
    List<bool>? available_seats,
  }) {
    return TableModel(
      id: id ?? this.id,
      status: status ?? this.status,
      category_id: category_id ?? this.category_id,
      room_id: room_id ?? this.room_id,
      message: message ?? this.message,
      available_seats: available_seats ?? this.available_seats,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status': status,
      'category_id': category_id,
      'room_id': room_id,
      'message': message,
      'available_seats': available_seats,
    };
  }

  factory TableModel.fromMap(Map<String, dynamic> map) {
    return TableModel(
      id: map['id'] as int,
      status: map['status'] as String,
      category_id: map['category_id'] as int,
      room_id: map['room_id'] as int,
      message: map['message'] as String,
      available_seats: List<bool>.from((map['available_seats'] as List<bool>),
    ),
    );
  }

  String toJson() => json.encode(toMap());

  factory TableModel.fromJson(String source) => TableModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TableModel(id: $id, status: $status, category_id: $category_id, room_id: $room_id, message: $message, available_seats: $available_seats)';
  }

  @override
  bool operator ==(covariant TableModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.status == status &&
      other.category_id == category_id &&
      other.room_id == room_id &&
      other.message == message &&
      listEquals(other.available_seats, available_seats);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      status.hashCode ^
      category_id.hashCode ^
      room_id.hashCode ^
      message.hashCode ^
      available_seats.hashCode;
  }
}
