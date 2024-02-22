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
  Map<String, dynamic> toJson(PlaceModel instance) => <String, dynamic>{
        'id': instance.id,
        'name': instance.name,
        'locations': instance.locations,
      };
  factory PlaceModel.fromEntity(PlaceEntity entity) {
    return PlaceModel(
        id: entity.id, name: entity.name, locations: entity.locations);
  }
}
