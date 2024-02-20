// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'package:equatable/equatable.dart';

class TableEntity extends Equatable {
  final int? id;
  final int? status;
  final int? category_id;
  final int? room_id;
  final List<dynamic>? available_seats;
  final String? message;
  const TableEntity({
    this.id,
    this.status,
    this.category_id,
    this.room_id,
    this.available_seats,
    this.message,
  });

  @override
  List<Object?> get props {
    return [
      id,
      status,
      category_id,
      room_id,
      available_seats,
      message,
    ];
  }
}
