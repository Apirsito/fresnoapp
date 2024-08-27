import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/features/register/data/models/department.model.dart';
import 'package:fresnoapp/features/register/domain/repository/register_respository.dart';
import 'package:fresnoapp/features/register/domain/usecases/register_usecase.dart';

class GetDepartamentsUseCase extends RegisterUseCase<List<DepartmentModel>> {
  final RegisterRespository _registerRepository;

  // Constructor que recibe un repositorio de tareas.
  GetDepartamentsUseCase(this._registerRepository);

  // Método para ejecutar el caso de uso y agregar una nueva tarea.
  @override
  Future<Either<ErrorModel, List<DepartmentModel>>> execute() {
    return _registerRepository.getDepartments();
  }
}
