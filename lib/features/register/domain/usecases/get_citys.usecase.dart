// Caso de uso para agregar una nueva tarea.
import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/features/register/data/models/city.model.dart';
import 'package:fresnoapp/features/register/domain/repository/register_respository.dart';
import 'package:fresnoapp/features/register/domain/usecases/register_usecase.dart';

class GetCitysUseCase
    extends RegisterUseCaseWithParameter<List<CityModel>, String> {
  final RegisterRespository _registerRepository;

  // Constructor que recibe un repositorio de tareas.
  GetCitysUseCase(this._registerRepository);

  // Método para ejecutar el caso de uso y agregar una nueva tarea.
  @override
  Future<Either<ErrorModel, List<CityModel>>> execute(String parameter) {
    return _registerRepository.getCitys(parameter);
  }
}
