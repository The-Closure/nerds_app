import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/table_entity.dart';

abstract class TableRepository {
  // API methods
  Future<DataState<List<TableEntity>>> getTables();
}
