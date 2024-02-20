import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/place_repository.dart';

class GetPlaceUseCase implements UseCase<DataState<List<PlaceEntity>>, void> {
  final PlaceRepository _placeRepository;

  GetPlaceUseCase(this._placeRepository);

  @override
  Future<DataState<List<PlaceEntity>>> call({void params}) {
    return _placeRepository.getplaces();
  }
}
