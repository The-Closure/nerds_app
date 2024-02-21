// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:my_reservations/Core/Domain/Model/Base_model.dart';

class ReservationsModel extends BaseModel {
  num id;
  int type;
  num room_id;
  num table_id;
  num num_of_seats;
  String time;
  int period_of_reservations;
  ReservationsModel({
    required this.id,
    required this.type,
    required this.room_id,
    required this.table_id,
    required this.num_of_seats,
    required this.time,
    required this.period_of_reservations,
  });

  ReservationsModel copyWith({
    num? id,
    int? type,
    num? room_id,
    num? table_id,
    num? num_of_seats,
    String? time,
    int? period_of_reservations,
  }) {
    return ReservationsModel(
      id: id ?? this.id,
      type: type ?? this.type,
      room_id: room_id ?? this.room_id,
      table_id: table_id ?? this.table_id,
      num_of_seats: num_of_seats ?? this.num_of_seats,
      time: time ?? this.time,
      period_of_reservations: period_of_reservations ?? this.period_of_reservations,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'room_id': room_id,
      'table_id': table_id,
      'num_of_seats': num_of_seats,
      'time': time,
      'period_of_reservations': period_of_reservations,
    };
  }

  factory ReservationsModel.fromMap(Map<String, dynamic> map) {
    return ReservationsModel(
      id: map['id'] as num,
      type: map['type'] as int,
      room_id: map['room_id'] as num,
      table_id: map['table_id'] as num,
      num_of_seats: map['num_of_seats'] as num,
      time: map['time'] as String,
      period_of_reservations: map['period_of_reservations'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReservationsModel.fromJson(String source) => ReservationsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReservationsModel(id: $id, type: $type, room_id: $room_id, table_id: $table_id, num_of_seats: $num_of_seats, time: $time, period_of_reservations: $period_of_reservations)';
  }

  @override
  bool operator ==(covariant ReservationsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.type == type &&
      other.room_id == room_id &&
      other.table_id == table_id &&
      other.num_of_seats == num_of_seats &&
      other.time == time &&
      other.period_of_reservations == period_of_reservations;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      type.hashCode ^
      room_id.hashCode ^
      table_id.hashCode ^
      num_of_seats.hashCode ^
      time.hashCode ^
      period_of_reservations.hashCode;
  }
}
