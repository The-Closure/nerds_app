import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/tables_categry_entity.dart';

abstract class TablesCategryRepository {
  // API methods
  Future<DataState<List<TablesCategryEntity>>> getTablesCategrys();

  Future<DataState<TablesCategryEntity>> postTablesCategry(
      {required TablesCategryEntity newTablesCategryEntity});

  Future<DataState<TablesCategryEntity>> putTablesCategry(
      {required int id, required TablesCategryEntity newTablesCategryEntity});

  Future<DataState<String>> deletTablesCategry({required int id});
}
