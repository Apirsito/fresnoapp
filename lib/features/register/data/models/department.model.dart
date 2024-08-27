import 'package:json_annotation/json_annotation.dart';

part 'department.model.g.dart';

@JsonSerializable()
class DepartmentModel {
  final int id;
  final String catalogo;
  final String valor;
  final String valorAux;
  final String descripcion;
  final String estado;

  const DepartmentModel({
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
