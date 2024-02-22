import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/tables_categry_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/tables_categry_repository.dart';

class GetTablesCategryUseCase
    implements UseCase<DataState<List<TablesCategryEntity>>, void> {
  final TablesCategryRepository _tablesCategryRepository;

  GetTablesCategryUseCase(this._tablesCategryRepository);

  @override
  Future<DataState<List<TablesCategryEntity>>> call({void params}) {
    return _tablesCategryRepository.getTablesCategrys();
  }
}

class PostTablesCategryUseCase
    implements UseCase<DataState<TablesCategryEntity>, TablesCategryEntity> {
  final TablesCategryRepository _tablesCategryRepository;

  PostTablesCategryUseCase(this._tablesCategryRepository);

  @override
  Future<DataState<TablesCategryEntity>> call({TablesCategryEntity? params}) {
    return _tablesCategryRepository.postTablesCategry(
        newTablesCategryEntity: params!);
  }
}

class PutTablesCategryUseCase
    implements UseCase<DataState<TablesCategryEntity>, TablesCategryEntity> {
  final TablesCategryRepository _tablesCategryRepository;

  PutTablesCategryUseCase(this._tablesCategryRepository);

  @override
  Future<DataState<TablesCategryEntity>> call(
      {TablesCategryEntity? params, int? id}) {
    return _tablesCategryRepository.putTablesCategry(
        newTablesCategryEntity: params!, id: id!);
  }
}

class DeletTablesCategryUseCase implements UseCase<DataState<String>, int> {
  final TablesCategryRepository _tablesCategryRepository;

  DeletTablesCategryUseCase(this._tablesCategryRepository);

  @override
  Future<DataState<String>> call({int? params}) {
    return _tablesCategryRepository.deletTablesCategry(id: params!);
  }
}
