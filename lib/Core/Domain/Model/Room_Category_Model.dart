// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:my_reservations/Core/Domain/Model/Base_model.dart';

class RoomCategoryModel extends BaseModel {
  num id;
  String type;
  RoomCategoryModel({
    required this.id,
    required this.type,
  });

  RoomCategoryModel copyWith({
    num? id,
    String? type,
  }) {
    return RoomCategoryModel(
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

  factory RoomCategoryModel.fromMap(Map<String, dynamic> map) {
    return RoomCategoryModel(
      id: map['id'] as num,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomCategoryModel.fromJson(String source) => RoomCategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RoomCategoryModel(id: $id, type: $type)';

  @override
  bool operator ==(covariant RoomCategoryModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.type == type;
  }

  @override
  int get hashCode => id.hashCode ^ type.hashCode;
}
