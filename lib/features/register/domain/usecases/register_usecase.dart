// Interfaz para casos de uso de tareas.
import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';

abstract class RegisterUseCaseWithParameter<T, G> {
  // Método para ejecutar el caso de uso y obtener una lista de modelos de tareas.
  Future<Either<ErrorModel, T>> execute(G parameter);
}

abstract class RegisterUseCase<T> {
  // Método para ejecutar el caso de uso y obtener una lista de modelos de tareas.

  Future<Either<ErrorModel, T>> execute();
}
