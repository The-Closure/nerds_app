// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Reservations {
  int type;
  String time;
  int num_of_seats;
  int room_id;
  int table_id;
  int period_of_reservations;
  Reservations({
    required this.type,
    required this.time,
    required this.num_of_seats,
    required this.room_id,
    required this.table_id,
    required this.period_of_reservations,
  });

  Reservations copyWith({
    int? type,
    String? time,
    int? num_of_seats,
    int? room_id,
    int? table_id,
    int? period_of_reservations,
  }) {
    return Reservations(
      type: type ?? this.type,
      time: time ?? this.time,
      num_of_seats: num_of_seats ?? this.num_of_seats,
      room_id: room_id ?? this.room_id,
      table_id: table_id ?? this.table_id,
      period_of_reservations:
          period_of_reservations ?? this.period_of_reservations,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'time': time,
      'num_of_seats': num_of_seats,
      'room_id': room_id,
      'table_id': table_id,
      'period_of_reservations': period_of_reservations,
    };
  }

  factory Reservations.fromMap(Map<String, dynamic> map) {
    return Reservations(
      type: map['type'] as int,
      time: map['time'] as String,
      num_of_seats: map['num_of_seats'] as int,
      room_id: map['room_id'] as int,
      table_id: map['table_id'] as int,
      period_of_reservations: map['period_of_reservations'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Reservations.fromJson(String source) =>
      Reservations.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Reservations(type: $type, time: $time, num_of_seats: $num_of_seats, room_id: $room_id, table_id: $table_id, period_of_reservations: $period_of_reservations)';
  }

  @override
  bool operator ==(covariant Reservations other) {
    if (identical(this, other)) return true;

    return other.type == type &&
        other.time == time &&
        other.num_of_seats == num_of_seats &&
        other.room_id == room_id &&
        other.table_id == table_id &&
        other.period_of_reservations == period_of_reservations;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        time.hashCode ^
        num_of_seats.hashCode ^
        room_id.hashCode ^
        table_id.hashCode ^
        period_of_reservations.hashCode;
  }
}
