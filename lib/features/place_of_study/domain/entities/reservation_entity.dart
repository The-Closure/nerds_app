// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'package:equatable/equatable.dart';

class ReservationEntity extends Equatable {
  final int? type;
  final String? time;
  final int? num_of_seats;
  final int? room_id;
  final int? table_id;
  final int? period_of_reservations;
  const ReservationEntity({
    this.type,
    this.time,
    this.num_of_seats,
    this.room_id,
    this.table_id,
    this.period_of_reservations,
  });

  @override
  List<Object?> get props {
    return [
      type,
      time,
      num_of_seats,
      room_id,
      table_id,
      period_of_reservations,
    ];
  }
}
