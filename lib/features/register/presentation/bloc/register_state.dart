part of 'register_bloc.dart';

enum RegisterStatus {
  initial,
  loading,
  succes,
  error,
}

class RegisterState extends Equatable {
  final List<DepartmentModel> bornDeparmentsList;
  final List<CityModel> bornCitysList;
  final List<DepartmentModel> residenceDeparmentsList;
  final List<CityModel> residenceCitysList;
  final List<TypeDocumentModel> typeDocumentsList;
  final DepartmentModel selectedBornDepartment;
  final CityModel selectedBornCity;
  final DepartmentModel selectedResidenceDepartment;
  final CityModel selectedResidenceCity;
  final TypeDocumentModel selectedTypeDocument;
  final RequestUserModel userRequest;
  final RegisterStatus status;
  final ErrorModel error;
  const RegisterState({
    this.bornDeparmentsList = const [],
    this.bornCitysList = const [],
    this.residenceDeparmentsList = const [],
    this.residenceCitysList = const [],
    this.typeDocumentsList = const [],
    this.selectedBornDepartment = const DepartmentModel(
        id: 0,
        catalogo: "",
        valor: "",
        valorAux: "",
        descripcion: "",
        estado: ""),
    this.selectedBornCity = const CityModel(
        id: 0,
        catalogo: "",
        valor: "",
        valorAux: "",
        descripcion: "",
        estado: ""),
    this.selectedResidenceDepartment = const DepartmentModel(
        id: 0,
        catalogo: "",
        valor: "",
        valorAux: "",
        descripcion: "",
        estado: ""),
    this.selectedResidenceCity = const CityModel(
        id: 0,
        catalogo: "",
        valor: "",
        valorAux: "",
        descripcion: "",
        estado: ""),
    this.selectedTypeDocument = const TypeDocumentModel(
        id: 0,
        catalogo: "",
        valor: "",
        valorAux: "",
        descripcion: "",
        estado: ""),
    this.userRequest = const RequestUserModel(
        correo: "",
        password: "",
        tipo: "",
        estado: "",
        documento: "",
        tipoDoc: "",
        pNombre: "",
        oNombres: "",
        pApellido: "",
        sApellido: "",
        nombreCompleto: "",
        marca: "",
        foto: "",
        sexo: "",
        lugarNacimiento: "",
        lugarResidencia: "",
        direcicon: "",
        celular: ""),
    this.status = RegisterStatus.initial,
    this.error = const ErrorModel(title: "", description: ""),
  });

  @override
  List<Object?> get props => [
        bornDeparmentsList,
        bornCitysList,
        residenceDeparmentsList,
        residenceCitysList,
        typeDocumentsList,
        userRequest,
        status,
        error,
      ];

  RegisterState copyWith({
    final List<DepartmentModel>? bornDeparmentsList,
    final List<CityModel>? bornCitysList,
    final List<DepartmentModel>? residenceDeparmentsList,
    final List<CityModel>? residenceCitysList,
    final List<TypeDocumentModel>? typeDocumentsList,
    final DepartmentModel? selectedBornDepartment,
    final CityModel? selectedBornCity,
    final DepartmentModel? selectedResidenceDepartment,
    final CityModel? selectedResidenceCity,
    final TypeDocumentModel? selectedTypeDocument,
    final RequestUserModel? userRequest,
    final RegisterStatus? status,
    final ErrorModel? error,
  }) {
    return RegisterState(
      bornDeparmentsList: bornDeparmentsList ?? this.bornDeparmentsList,
      bornCitysList: bornCitysList ?? this.bornCitysList,
      residenceDeparmentsList:
          residenceDeparmentsList ?? this.residenceDeparmentsList,
      residenceCitysList: residenceCitysList ?? this.residenceCitysList,
      typeDocumentsList: typeDocumentsList ?? this.typeDocumentsList,
      selectedBornDepartment:
          selectedBornDepartment ?? this.selectedBornDepartment,
      selectedBornCity: selectedBornCity ?? this.selectedBornCity,
      selectedResidenceDepartment:
          selectedResidenceDepartment ?? this.selectedResidenceDepartment,
      selectedResidenceCity:
          selectedResidenceCity ?? this.selectedResidenceCity,
      selectedTypeDocument: selectedTypeDocument ?? this.selectedTypeDocument,
      userRequest: userRequest ?? this.userRequest,
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }
}
