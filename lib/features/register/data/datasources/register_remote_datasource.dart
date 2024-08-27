import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/enviroments/environments.dart';
import 'package:fresnoapp/features/register/data/models/city.model.dart';
import 'package:fresnoapp/features/register/data/models/department.model.dart';
import 'package:fresnoapp/features/register/data/models/request_user.model.dart';
import 'package:fresnoapp/features/register/data/models/type_document.model.dart';
import 'package:http/http.dart' as http;

class RegisterRemoteDatasource {
  final client = http.Client();
  Future<Either<ErrorModel, List<CityModel>>> getCitys(int idDepartment) async {
    try {
      final response = await client.get(Uri.parse(
          "${Environment.baseUrl}/equivalencia/DIVIPOLA/$idDepartment"));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        final cities =
            jsonData.map((city) => CityModel.fromJson(city)).toList();
        return Right(cities);
      } else {
        return Left(ErrorModel(
            title: '', description: 'Error: ${response.statusCode}'));
      }
    } catch (e) {
      return Left(
          ErrorModel(title: '', description: 'Failed to load cities: $e'));
    }
  }

  Future<Either<ErrorModel, List<DepartmentModel>>> getDeparments() async {
    try {
      final response = await client
          .get(Uri.parse("${Environment.baseUrl}/equivalencia/DEPDIVIPOLA"));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        final departments = jsonData
            .map((department) => DepartmentModel.fromJson(department))
            .toList();
        return Right(departments);
      } else {
        return Left(ErrorModel(
            title: '', description: 'Error: ${response.statusCode}'));
      }
    } catch (e) {
      return Left(
          ErrorModel(title: '', description: 'Failed to load cities: $e'));
    }
  }

  Future<Either<ErrorModel, List<TypeDocumentModel>>> getTypeDocument() async {
    try {
      final response = await client
          .get(Uri.parse("${Environment.baseUrl}/equivalencia/DEPDIVIPOLA"));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        final typesDocuments = jsonData
            .map((typeDocument) => TypeDocumentModel.fromJson(typeDocument))
            .toList();
        return Right(typesDocuments);
      } else {
        return Left(ErrorModel(
            title: '', description: 'Error: ${response.statusCode}'));
      }
    } catch (e) {
      return Left(
          ErrorModel(title: '', description: 'Failed to load cities: $e'));
    }
  }

  Future<Either<ErrorModel, int>> postUser(RequestUserModel requestUser) async {
    try {
      final response = await client.post(
        Uri.parse("${Environment.baseUrl}/equivalencia/DEPDIVIPOLA"),
        headers: {
          'Content-Type':
              'application/json', // Asegúrate de establecer el tipo de contenido correcto
        },
        body: jsonEncode(requestUser),
      );

      if (response.statusCode == 200) {
        final int jsonData = json.decode(response.body);
        final result = jsonData;

        return Right(result);
      } else {
        return Left(ErrorModel(
            title: '', description: 'Error: ${response.statusCode}'));
      }
    } catch (e) {
      return Left(
          ErrorModel(title: '', description: 'Failed to load cities: $e'));
    }
  }
}
