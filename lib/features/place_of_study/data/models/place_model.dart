import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';

// @Entity(tableName: 'Place',primaryKeys: ['id'])
class PlaceModel extends PlaceEntity {
  const PlaceModel({
    int? id,
    String? name,
    List<dynamic>? locations,
  }) : super(id, name, locations);

  factory PlaceModel.fromJson(Map<String, dynamic> map) {
    return PlaceModel(
      name: map['name'] ?? "",
      locations: map['locations'] ?? "",
    );
  }

  factory PlaceModel.fromEntity(PlaceEntity entity) {
    return PlaceModel(
        id: entity.id, name: entity.name, locations: entity.locations);
  }
}
