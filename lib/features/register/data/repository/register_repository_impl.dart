import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/features/register/data/datasources/register_remote_datasource.dart';
import 'package:fresnoapp/features/register/data/models/city.model.dart';
import 'package:fresnoapp/features/register/data/models/department.model.dart';
import 'package:fresnoapp/features/register/data/models/request_user.model.dart';
import 'package:fresnoapp/features/register/data/models/type_document.model.dart';
import 'package:fresnoapp/features/register/domain/repository/register_respository.dart';

class RegisterRepositoryImpl implements RegisterRespository {
  final RegisterRemoteDatasource _registerRemoteDataSource;

  RegisterRepositoryImpl(this._registerRemoteDataSource);

  @override
  Future<Either<ErrorModel, List<CityModel>>> getCitys(int idDepartment) {
    return _registerRemoteDataSource.getCitys(idDepartment);
  }

  @override
  Future<Either<ErrorModel, List<DepartmentModel>>> getDeparments() {
    return _registerRemoteDataSource.getDeparments();
  }

  @override
  Future<Either<ErrorModel, List<TypeDocumentModel>>> getTypeDocument() {
    return _registerRemoteDataSource.getTypeDocument();
  }

  @override
  Future<Either<ErrorModel, int>> postUser(RequestUserModel requestUser) {
    return _registerRemoteDataSource.postUser(requestUser);
  }
}
