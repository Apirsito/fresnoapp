part of 'register_bloc.dart';

enum RegisterStatus {
  initial,
  loading,
  succes,
  error,
}

class RegisterState extends Equatable {
  final List<DeparmentModel> bornDeparmentsList;
  final List<DeparmentModel> bornCitysList;
  final List<DeparmentModel> residenceDeparmentsList;
  final List<DeparmentModel> residenceCitysList;
  final RequestUserModel userRequest;
  final RegisterStatus status;
  final ErrorModel error;
  const RegisterState({
    this.bornDeparmentsList = const [],
    this.bornCitysList = const [],
    this.residenceDeparmentsList = const [],
    this.residenceCitysList = const [],
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
        userRequest,
        status,
        error,
      ];

  RegisterState copyWith({
    final List<DeparmentModel>? bornDeparmentsList,
    final List<DeparmentModel>? bornCitysList,
    final List<DeparmentModel>? residenceDeparmentsList,
    final List<DeparmentModel>? residenceCitysList,
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
      userRequest: userRequest ?? this.userRequest,
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }
}
