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
  final String direcicon;
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
    required this.direcicon,
    required this.celular,
  });

  static RequestUserModel empty() {
    return RequestUserModel(
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
        celular: "");
  }
}
