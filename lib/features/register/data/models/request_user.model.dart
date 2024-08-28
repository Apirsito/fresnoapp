import 'package:json_annotation/json_annotation.dart';

part 'request_user.model.g.dart';

@JsonSerializable()
class RequestUserModel {
  final String correo;
  final String password;
  final String tipo;
  final String estado;
  final String documento;
  final String tipoDoc;
  final String pNombre;
  final String oNombres;
  final String pApellido;
  final String sApellido;
  final String nombreCompleto;
  final String marca;
  final String foto;
  final String sexo;
  final String lugarNacimiento;
  final String lugarResidencia;
  final String direccion;
  final String celular;

  const RequestUserModel({
    required this.correo,
    required this.password,
    required this.tipo,
    required this.estado,
    required this.documento,
    required this.tipoDoc,
    required this.pNombre,
    required this.oNombres,
    required this.pApellido,
    required this.sApellido,
    required this.nombreCompleto,
    required this.marca,
    required this.foto,
    required this.sexo,
    required this.lugarNacimiento,
    required this.lugarResidencia,
    required this.direccion,
    required this.celular,
  });

  static RequestUserModel empty() {
    return const RequestUserModel(
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
        direccion: "",
        celular: "");
  }

  factory RequestUserModel.fromJson(Map<String, dynamic> json) =>
      _$RequestUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$RequestUserModelToJson(this);

  RequestUserModel copyWith({
    String? correo,
    String? password,
    String? tipo,
    String? estado,
    String? documento,
    String? tipoDoc,
    String? pNombre,
    String? oNombres,
    String? pApellido,
    String? sApellido,
    String? nombreCompleto,
    String? marca,
    String? foto,
    String? sexo,
    String? lugarNacimiento,
    String? lugarResidencia,
    String? direccion,
    String? celular,
  }) {
    return RequestUserModel(
      correo: correo ?? this.correo,
      password: password ?? this.password,
      tipo: tipo ?? this.tipo,
      estado: estado ?? this.estado,
      documento: documento ?? this.documento,
      tipoDoc: tipoDoc ?? this.tipoDoc,
      pNombre: pNombre ?? this.pNombre,
      oNombres: oNombres ?? this.oNombres,
      pApellido: pApellido ?? this.pApellido,
      sApellido: sApellido ?? this.sApellido,
      nombreCompleto: nombreCompleto ?? this.nombreCompleto,
      marca: marca ?? this.marca,
      foto: foto ?? this.foto,
      sexo: sexo ?? this.sexo,
      lugarNacimiento: lugarNacimiento ?? this.lugarNacimiento,
      lugarResidencia: lugarResidencia ?? this.lugarResidencia,
      direccion: direccion ?? this.direccion,
      celular: celular ?? this.celular,
    );
  }
}
