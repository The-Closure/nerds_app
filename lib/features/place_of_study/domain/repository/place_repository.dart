import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';

abstract class PlaceRepository {
  // API methods
  Future<DataState<List<PlaceEntity>>> getplaces();

  // Database methods
  Future<List<PlaceEntity>> getSavedPlace();

  Future<void> savePlace(PlaceEntity place);

  Future<void> removePlace(PlaceEntity place);
}
