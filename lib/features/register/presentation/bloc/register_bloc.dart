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
    on<GetResidenceCitysEvent>(_getResidenceCitys);
    on<GetBornCitysEvent>(_getBornCitys);
    on<GetDepartamentEvent>(_getDepartament);
    on<GetTypeDocumentEvent>(_getTypeDocument);
    on<PostUserEvent>(_postUser);
    on<UpdateSelectedBornCityEvent>(_updateSelectedBornCity);
    on<UpdateSelectedResidenceCityEvent>(_updateSelectedResidenceCity);
    on<UpdateSelectedDocumentTypeEvent>(_updateSelectedDocument);

    on<UpdateEmailEvent>(_updateEmail);
    on<UpdatePasswordEvent>(_updatePassword);
    on<UpdateStatusEvent>(_updateStatus);
    on<UpdateDocumentEvent>(_updateDocument);
    on<UpdateDocumentTypeEvent>(_updateDocumentType);
    on<UpdateFirstNameEvent>(_updateFirstName);
    on<UpdateOtherNamesEvent>(_updateOtherNames);
    on<UpdateLastNameEvent>(_updateLastName);
    on<UpdateSecondLastNameEvent>(_updateSecondLastName);
    on<UpdateFullNameEvent>(_updateFullName);
    on<UpdateBrandEvent>(_updateBrand);
    on<UpdatePhotoEvent>(_updatePhoto);
    on<UpdateGenderEvent>(_updateGender);
    on<UpdateAddressEvent>(_updateAddress);
    on<UpdatePhoneEvent>(_updatePhone);
    on<CloseAlertErrorEvent>(_closeErrorAlert);
  }

  FutureOr<void> _getResidenceCitys(
      GetResidenceCitysEvent event, Emitter<RegisterState> emit) async {
    final result = await _getCityUseCase.execute(event.idDepartment);
    result.fold(
      (error) =>
          emit(state.copyWith(status: RegisterStatus.error, error: error)),
      (list) => emit(state.copyWith(
        residenceCitysList: list,
        selectedResidenceCity: const CityModel(
            id: 0,
            catalogo: "",
            valor: "",
            valorAux: "",
            descripcion: "",
            estado: ""),
      )),
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
    final updatedUserRequest = state.userRequest.copyWith(
      lugarNacimiento: state.selectedBornCity.valorAux,
      lugarResidencia: state.selectedResidenceCity.valorAux,
    );

    final result = await _postUserUseCase.execute(updatedUserRequest);
    result.fold(
      (error) =>
          emit(state.copyWith(status: RegisterStatus.error, error: error)),
      (listTask) => emit(state.copyWith()),
    );
  }

  FutureOr<void> _getBornCitys(
      GetBornCitysEvent event, Emitter<RegisterState> emit) async {
    final result = await _getCityUseCase.execute(event.idDepartment);
    result.fold(
      (error) =>
          emit(state.copyWith(status: RegisterStatus.error, error: error)),
      (list) => emit(state.copyWith(
        bornCitysList: list,
        selectedBornCity: const CityModel(
            id: 0,
            catalogo: "",
            valor: "",
            valorAux: "",
            descripcion: "",
            estado: ""),
      )),
    );
  }

  FutureOr<void> _updateSelectedBornCity(
      UpdateSelectedBornCityEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(selectedBornCity: event.selectedBornCity));
  }

  FutureOr<void> _updateSelectedResidenceCity(
      UpdateSelectedResidenceCityEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(selectedResidenceCity: event.selectedResidenceCity));
  }

  FutureOr<void> _updateSelectedDocument(
      UpdateSelectedDocumentTypeEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(selectedTypeDocument: event.selectedDocumentType));
  }

  FutureOr<void> _updateEmail(
      UpdateEmailEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest = state.userRequest.copyWith(correo: event.email);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updatePassword(
      UpdatePasswordEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(password: event.password);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateStatus(
      UpdateStatusEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest = state.userRequest.copyWith(estado: event.status);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateDocument(
      UpdateDocumentEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(documento: event.document);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateDocumentType(
      UpdateDocumentTypeEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(tipoDoc: event.documentType);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateFirstName(
      UpdateFirstNameEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(pNombre: event.firstName);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateOtherNames(
      UpdateOtherNamesEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(oNombres: event.otherNames);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateLastName(
      UpdateLastNameEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(pApellido: event.lastName);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateSecondLastName(
      UpdateSecondLastNameEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(sApellido: event.secondLastName);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateFullName(
      UpdateFullNameEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(nombreCompleto: event.fullName);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateBrand(
      UpdateBrandEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest = state.userRequest.copyWith(marca: event.brand);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updatePhoto(
      UpdatePhotoEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest = state.userRequest.copyWith(foto: event.photo);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateGender(
      UpdateGenderEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest = state.userRequest.copyWith(sexo: event.gender);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updateAddress(
      UpdateAddressEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest =
        state.userRequest.copyWith(direccion: event.address);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _updatePhone(
      UpdatePhoneEvent event, Emitter<RegisterState> emit) {
    final updatedUserRequest = state.userRequest.copyWith(celular: event.phone);
    emit(state.copyWith(userRequest: updatedUserRequest));
  }

  FutureOr<void> _closeErrorAlert(
      CloseAlertErrorEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(status: RegisterStatus.succes));
  }
}
