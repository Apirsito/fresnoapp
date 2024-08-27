import 'package:json_annotation/json_annotation.dart';
part 'type_document.model.g.dart';

@JsonSerializable()
class TypeDocumentModel {
  final int id;
  final String catalogo;
  final String valor;
  final String valorAux;
  final String descripcion;
  final String estado;

  const TypeDocumentModel({
    required this.id,
    required this.catalogo,
    required this.valor,
    required this.valorAux,
    required this.descripcion,
    required this.estado,
  });
  factory TypeDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$TypeDocumentModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeDocumentModelToJson(this);
}
