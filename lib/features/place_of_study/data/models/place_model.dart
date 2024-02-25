import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';

// @Entity(tableName: 'Place',primaryKeys: ['id'])
class PlaceModel extends PlaceEntity {
  const PlaceModel({
    num? id,
    String? name,
    List<dynamic>? locations,
  }) : super(id, name, locations);

  factory PlaceModel.fromJson(Map<String, dynamic> map) {
    return PlaceModel(
     id: map['id'] != null ? map['id'] as num : null,

      name: map['name'] ?? "",
      locations: map['locations'] ?? "",
    );
  }
  factory PlaceModel.fromEntity(PlaceEntity entity) {
    return PlaceModel(
        id: entity.id, name: entity.name, locations: entity.locations);
  }
}
