import 'package:json_annotation/json_annotation.dart';

part 'city.model.g.dart';

@JsonSerializable()
class CityModel {
  int id;
  String catalogo;
  String valor;
  String valorAux;
  String descripcion;
  String estado;

  CityModel({
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
