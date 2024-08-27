import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresnoapp/core/models/error_model.dart';
import 'package:fresnoapp/features/register/data/models/city.model.dart';
import 'package:fresnoapp/features/register/data/models/department.model.dart';
import 'package:fresnoapp/features/register/data/models/request_user.model.dart';
import 'package:fresnoapp/features/register/data/models/type_document.model.dart';
import 'package:fresnoapp/features/register/domain/usecases/get_citys.usecase.dart';
import 'package:fresnoapp/features/register/domain/usecases/get_deparments.usecase.dart';
import 'package:fresnoapp/features/register/domain/usecases/get_type_document.dart';
import 'package:fresnoapp/features/register/domain/usecases/post_user.usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final GetCitysUseCase _getCityUseCase;
  final GetDepartamentsUseCase _getDepartmentUseCase;
  final GetTypeDocumentUseCase _getTypeDocumentUseCase;
  final PostUserUseCase _postUserUseCase;
  RegisterBloc({
    required GetCitysUseCase getCityUseCase,
    required GetDepartamentsUseCase getDepartmentUseCase,
    required GetTypeDocumentUseCase getTypeDocumentUseCase,
    required PostUserUseCase postUserUseCase,
  })  : _getCityUseCase = getCityUseCase,
        _getDepartmentUseCase = getDepartmentUseCase,
        _getTypeDocumentUseCase = getTypeDocumentUseCase,
        _postUserUseCase = postUserUseCase,
        super(const RegisterState()) {
    on<GetCitysEvent>(_getCitys);
    on<GetDepartamentEvent>(_getDepartament);
    on<GetTypeDocumentEvent>(_getTypeDocument);
    on<PostUserEvent>(_postUser);
  }

  FutureOr<void> _getCitys(
      GetCitysEvent event, Emitter<RegisterState> emit) async {
    final result = await _getCityUseCase.execute(event.idDepartment);
    result.fold(
      (error) =>
          emit(state.copyWith(status: RegisterStatus.error, error: error)),
      (listTask) => emit(state.copyWith()),
    );
  }

  FutureOr<void> _getDepartament(
      GetDepartamentEvent event, Emitter<RegisterState> emit) async {
    final result = await _getDepartmentUseCase.execute();
    result.fold(
      (error) =>
          emit(state.copyWith(status: RegisterStatus.error, error: error)),
      (list) => emit(state.copyWith(
          status: RegisterStatus.succes,
          bornDeparmentsList: list,
          residenceDeparmentsList: list)),
    );
  }

  FutureOr<void> _getTypeDocument(
      GetTypeDocumentEvent event, Emitter<RegisterState> emit) async {
    final result = await _getTypeDocumentUseCase.execute();
    result.fold(
      (error) =>
          emit(state.copyWith(status: RegisterStatus.error, error: error)),
      (list) => emit(state.copyWith(
          status: RegisterStatus.succes, typeDocumentsList: list)),
    );
  }

  FutureOr<void> _postUser(
      PostUserEvent event, Emitter<RegisterState> emit) async {
    final result = await _postUserUseCase.execute(event.userRequest);
    result.fold(
      (error) =>
          emit(state.copyWith(status: RegisterStatus.error, error: error)),
      (listTask) => emit(state.copyWith()),
    );
  }
}
