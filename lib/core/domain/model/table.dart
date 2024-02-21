// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Table {
  int id;
  int status;
  int category_id;
  int room_id;
  String message;
  List<bool> available_seats;
  Table({
    required this.id,
    required this.status,
    required this.category_id,
    required this.room_id,
    required this.message,
    required this.available_seats,
  });

  Table copyWith({
    int? id,
    int? status,
    int? category_id,
    int? room_id,
    String? message,
    List<bool>? available_seats,
  }) {
    return Table(
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

  factory Table.fromMap(Map<String, dynamic> map) {
    return Table(
        id: map['id'] as int,
        status: map['status'] as int,
        category_id: map['category_id'] as int,
        room_id: map['room_id'] as int,
        message: map['message'] as String,
        available_seats: List<bool>.from(
          (map['available_seats'] as List<bool>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Table.fromJson(String source) =>
      Table.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Table(id: $id, status: $status, category_id: $category_id, room_id: $room_id, message: $message, available_seats: $available_seats)';
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
