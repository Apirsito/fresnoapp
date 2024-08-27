import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/features/register/data/models/request_user.model.dart';
import 'package:fresnoapp/features/register/domain/repository/register_respository.dart';
import 'package:fresnoapp/features/register/domain/usecases/register_usecase.dart';

class PostUserUseCase
    extends RegisterUseCaseWithParameter<int, RequestUserModel> {
  final RegisterRespository _registerRepository;

  // Constructor que recibe un repositorio de tareas.
  PostUserUseCase(this._registerRepository);

  // Método para ejecutar el caso de uso y agregar una nueva tarea.

  @override
  Future<Either<ErrorModel, int>> execute(RequestUserModel parameter) {
    return _registerRepository.postUser(parameter);
  }
}
