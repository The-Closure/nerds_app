import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/table_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/table_repository.dart';

class GetTableUseCase implements UseCase<DataState<List<TableEntity>>, int> {
  final TableRepository _tableRepository;

  GetTableUseCase(this._tableRepository);

  @override
  Future<DataState<List<TableEntity>>> call({int? params}) {
    return _tableRepository.getTables(idRoom: params!);
  }
}

class PostTableUseCase implements UseCase<DataState<TableEntity>, TableEntity> {
  final TableRepository _tableRepository;

  PostTableUseCase(this._tableRepository);

  @override
  Future<DataState<TableEntity>> call({TableEntity? params}) {
    return _tableRepository.postTable(newTableEntity: params!);
  }
}

class PutTableUseCase implements UseCase<DataState<TableEntity>, TableEntity> {
  final TableRepository _tableRepository;

  PutTableUseCase(this._tableRepository);

  @override
  Future<DataState<TableEntity>> call({TableEntity? params, int? id}) {
    return _tableRepository.putTable(newTableEntity: params!, id: id!);
  }
}

class DeletTableUseCase implements UseCase<DataState<String>, int> {
  final TableRepository _tableRepository;

  DeletTableUseCase(this._tableRepository);

  @override
  Future<DataState<String>> call({int? params}) {
    return _tableRepository.deletTable(id: params!);
  }
}
