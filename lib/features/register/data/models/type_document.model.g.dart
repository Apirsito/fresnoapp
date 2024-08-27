// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_document.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeDocumentModel _$TypeDocumentModelFromJson(Map<String, dynamic> json) =>
    TypeDocumentModel(
      id: (json['id'] as num).toInt(),
      catalogo: json['catalogo'] as String,
      valor: json['valor'] as String,
      valorAux: json['valorAux'] as String,
      descripcion: json['descripcion'] as String,
      estado: json['estado'] as String,
    );

Map<String, dynamic> _$TypeDocumentModelToJson(TypeDocumentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'catalogo': instance.catalogo,
      'valor': instance.valor,
      'valorAux': instance.valorAux,
      'descripcion': instance.descripcion,
      'estado': instance.estado,
    };
