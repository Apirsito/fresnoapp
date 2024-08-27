// Repositorio abstracto para operaciones relacionadas con tareas.
import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/features/register/data/models/city.model.dart';
import 'package:fresnoapp/features/register/data/models/department.model.dart';
import 'package:fresnoapp/features/register/data/models/request_user.model.dart';
import 'package:fresnoapp/features/register/data/models/type_document.model.dart';

abstract class RegisterRespository {
  // Método para obtener una lista de tareas.
  Future<Either<ErrorModel, List<CityModel>>> getCitys(int idDepartment);

  // Método para agregar una nueva tarea.
  Future<Either<ErrorModel, List<DepartmentModel>>> getDepartments();

  // Método para eliminar una tarea.
  Future<Either<ErrorModel, List<TypeDocumentModel>>> getTypeDocument();

  // Método para marcar una tarea como exitosa.
  Future<Either<ErrorModel, int>> postUser(RequestUserModel requestUser);
}
