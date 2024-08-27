// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityModel _$CityModelFromJson(Map<String, dynamic> json) => CityModel(
      id: (json['id'] as num).toInt(),
      catalogo: json['catalogo'] as String,
      valor: json['valor'] as String,
      valorAux: json['valorAux'] as String,
      descripcion: json['descripcion'] as String,
      estado: json['estado'] as String,
    );

Map<String, dynamic> _$CityModelToJson(CityModel instance) => <String, dynamic>{
      'id': instance.id,
      'catalogo': instance.catalogo,
      'valor': instance.valor,
      'valorAux': instance.valorAux,
      'descripcion': instance.descripcion,
      'estado': instance.estado,
    };
