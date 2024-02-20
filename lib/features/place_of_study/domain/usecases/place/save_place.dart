import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/place_repository.dart';

class SavePlaceUseCase implements UseCase<void, PlaceEntity> {
  final PlaceRepository _placeRepository;

  SavePlaceUseCase(this._placeRepository);

  @override
  Future<void> call({PlaceEntity? params}) {
    return _placeRepository.savePlace(params!);
  }
}
