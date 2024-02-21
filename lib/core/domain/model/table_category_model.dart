// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:reservations/core/domain/model/result_model.dart';

class TableCategories extends ServiceResultModel{
  int id;
  int num_of_seats;
  String shape;
  TableCategories({
    required this.id,
    required this.num_of_seats,
    required this.shape,
  });

  TableCategories copyWith({
    int? id,
    int? num_of_seats,
    String? shape,
  }) {
    return TableCategories(
      id: id ?? this.id,
      num_of_seats: num_of_seats ?? this.num_of_seats,
      shape: shape ?? this.shape,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'num_of_seats': num_of_seats,
      'shape': shape,
    };
  }

  factory TableCategories.fromMap(Map<String, dynamic> map) {
    return TableCategories(
      id: map['id'] as int,
      num_of_seats: map['num_of_seats'] as int,
      shape: map['shape'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TableCategories.fromJson(String source) => TableCategories.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TableCategories(id: $id, num_of_seats: $num_of_seats, shape: $shape)';

  @override
  bool operator ==(covariant TableCategories other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.num_of_seats == num_of_seats &&
      other.shape == shape;
  }

  @override
  int get hashCode => id.hashCode ^ num_of_seats.hashCode ^ shape.hashCode;
}
