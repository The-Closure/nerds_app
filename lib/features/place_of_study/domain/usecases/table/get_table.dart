import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/Table_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/Table_repository.dart';

class GetTablesUseCase implements UseCase<DataState<List<TableEntity>>, void> {
  final TableRepository _tableRepository;

  GetTablesUseCase(this._tableRepository);

  @override
  Future<DataState<List<TableEntity>>> call({void params}) {
    throw UnimplementedError();
  }
}
