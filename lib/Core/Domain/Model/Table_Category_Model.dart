// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:my_reservations/Core/Domain/Model/Base_model.dart';

class TableCategoryModel extends BaseModel {
  String Shape;
  int num_of_seats = 4;
  TableCategoryModel({
    required this.Shape,
    required this.num_of_seats,
  });

  TableCategoryModel copyWith({
    String? Shape,
    int? num_of_seats,
  }) {
    return TableCategoryModel(
      Shape: Shape ?? this.Shape,
      num_of_seats: num_of_seats ?? this.num_of_seats,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Shape': Shape,
      'num_of_seats': num_of_seats,
    };
  }

  factory TableCategoryModel.fromMap(Map<String, dynamic> map) {
    return TableCategoryModel(
      Shape: map['Shape'] as String,
      num_of_seats: map['num_of_seats'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory TableCategoryModel.fromJson(String source) => TableCategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TableCategoryModel(Shape: $Shape, num_of_seats: $num_of_seats)';

  @override
  bool operator ==(covariant TableCategoryModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.Shape == Shape &&
      other.num_of_seats == num_of_seats;
  }

  @override
  int get hashCode => Shape.hashCode ^ num_of_seats.hashCode;
}
