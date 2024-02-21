// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:reservations/core/domain/model/result_model.dart';

class RoomCategoriesModel extends ServiceResultModel{
 int id;
 String type; 
  RoomCategoriesModel({
    required this.id,
    required this.type,
  });

  RoomCategoriesModel copyWith({
    int? id,
    String? type,
  }) {
    return RoomCategoriesModel(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory RoomCategoriesModel.fromMap(Map<String, dynamic> map) {
    return RoomCategoriesModel(
      id: map['id'] as int,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomCategoriesModel.fromJson(String source) => RoomCategoriesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RoomCategoriesModel(id: $id, type: $type)';

  @override
  bool operator ==(covariant RoomCategoriesModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.type == type;
  }

  @override
  int get hashCode => id.hashCode ^ type.hashCode;
}
