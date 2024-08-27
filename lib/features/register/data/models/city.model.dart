import 'package:json_annotation/json_annotation.dart';

part 'city.model.g.dart';

@JsonSerializable()
class CityModel {
  final int id;
  final String catalogo;
  final String valor;
  final String valorAux;
  final String descripcion;
  final String estado;

  const CityModel({
    required this.id,
    required this.catalogo,
    required this.valor,
    required this.valorAux,
    required this.descripcion,
    required this.estado,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  Map<String, dynamic> toJson() => _$CityModelToJson(this);
}
