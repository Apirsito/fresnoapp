import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/features/register/data/models/type_document.model.dart';
import 'package:fresnoapp/features/register/domain/repository/register_respository.dart';
import 'package:fresnoapp/features/register/domain/usecases/register_usecase.dart';

class GetTypeDocumentUseCase extends RegisterUseCase<List<TypeDocumentModel>> {
  final RegisterRespository _registerRepository;

  // Constructor que recibe un repositorio de tareas.
  GetTypeDocumentUseCase(this._registerRepository);

  // Método para ejecutar el caso de uso y agregar una nueva tarea.
  @override
  Future<Either<ErrorModel, List<TypeDocumentModel>>> execute() {
    return _registerRepository.getTypeDocument();
  }
}
