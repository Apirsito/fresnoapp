import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/features/register/data/models/city.model.dart';
import 'package:fresnoapp/features/register/data/models/deparment.model.dart';
import 'package:fresnoapp/features/register/data/models/request_user.model.dart';
import 'package:fresnoapp/features/register/data/models/type_document.model.dart';
import 'package:fresnoapp/features/register/domain/repository/register_respository.dart';

class RegisterRepositoryImpl implements RegisterRespository {
  @override
  Future<Either<ErrorModel, List<CityModel>>> getCitys(int idDepartment) {
    // TODO: implement getCitys
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, List<DeparmentModel>>> getDeparments() {
    // TODO: implement getDeparments
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, List<TypeDocumentModel>>> getTypeDocument() {
    // TODO: implement getTypeDocument
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, List<int>>> postUser(RequestUserModel requestUser) {
    // TODO: implement postUser
    throw UnimplementedError();
  }
}
