import 'package:dashbord_cafe/core/usecases/usecase.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/repository/place_repository.dart';

class GetSavedPLaceUseCase implements UseCase<List<PlaceEntity>, void> {
  final PlaceRepository _placeRepository;

  GetSavedPLaceUseCase(this._placeRepository);

  @override
  Future<List<PlaceEntity>> call({void params}) {
    return _placeRepository.getSavedPlace();
  }
}
