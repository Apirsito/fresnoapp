import 'package:json_annotation/json_annotation.dart';

part 'department.model.g.dart';

@JsonSerializable()
class DepartmentModel {
  int id;
  String catalogo;
  String valor;
  String valorAux;
  String descripcion;
  String estado;

  DepartmentModel({
    required this.id,
    required this.catalogo,
    required this.valor,
    required this.valorAux,
    required this.descripcion,
    required this.estado,
  });

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$DepartmentModelToJson(this);
}
