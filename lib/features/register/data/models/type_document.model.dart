import 'package:json_annotation/json_annotation.dart';
part 'type_document.model.g.dart';

@JsonSerializable()
class TypeDocumentModel {
  int id;
  String catalogo;
  String valor;
  String valorAux;
  String descripcion;
  String estado;

  TypeDocumentModel({
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
