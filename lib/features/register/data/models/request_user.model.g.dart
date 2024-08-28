// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestUserModel _$RequestUserModelFromJson(Map<String, dynamic> json) =>
    RequestUserModel(
      correo: json['correo'] as String,
      password: json['password'] as String,
      tipo: json['tipo'] as String,
      estado: json['estado'] as String,
      documento: json['documento'] as String,
      tipoDoc: json['tipoDoc'] as String,
      pNombre: json['pNombre'] as String,
      oNombres: json['oNombres'] as String,
      pApellido: json['pApellido'] as String,
      sApellido: json['sApellido'] as String,
      nombreCompleto: json['nombreCompleto'] as String,
      marca: json['marca'] as String,
      foto: json['foto'] as String,
      sexo: json['sexo'] as String,
      lugarNacimiento: json['lugarNacimiento'] as String,
      lugarResidencia: json['lugarResidencia'] as String,
      direccion: json['direccion'] as String,
      celular: json['celular'] as String,
    );

Map<String, dynamic> _$RequestUserModelToJson(RequestUserModel instance) =>
    <String, dynamic>{
      'correo': instance.correo,
      'password': instance.password,
      'tipo': instance.tipo,
      'estado': instance.estado,
      'documento': instance.documento,
      'tipoDoc': instance.tipoDoc,
      'pNombre': instance.pNombre,
      'oNombres': instance.oNombres,
      'pApellido': instance.pApellido,
      'sApellido': instance.sApellido,
      'nombreCompleto': instance.nombreCompleto,
      'marca': instance.marca,
      'foto': instance.foto,
      'sexo': instance.sexo,
      'lugarNacimiento': instance.lugarNacimiento,
      'lugarResidencia': instance.lugarResidencia,
      'direccion': instance.direccion,
      'celular': instance.celular,
    };
