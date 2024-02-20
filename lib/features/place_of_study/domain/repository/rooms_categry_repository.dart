import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/romms_categry_entity.dart';

abstract class RoomsCategryRepository {
  // API methods
  Future<DataState<List<RoomsCategryEntity>>> getRoomsCategrys();
}
