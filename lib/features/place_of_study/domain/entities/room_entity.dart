// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'package:equatable/equatable.dart';

class RoomEntity extends Equatable {
  final int? id;
  final int? max_num_of_chairs;
  final int? status;
  final int? placeId;
  final int? category_id;
  const RoomEntity({
    this.id,
    this.max_num_of_chairs,
    this.status,
    this.placeId,
    this.category_id,
  });

  @override
  List<Object?> get props {
    return [
      id,
      max_num_of_chairs,
      status,
      placeId,
      category_id,
    ];
  }
}
