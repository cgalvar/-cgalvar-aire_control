// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movimiento_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovimientoModel _$MovimientoModelFromJson(Map<String, dynamic> json) {
  return MovimientoModel(
    tipo: json['tipo'] as int,
    anotado: json['anotado'] as bool,
    pagado: json['pagado'] as bool,
    camionModel: json['camionModel'] == null
        ? null
        : CamionModel.fromJson(json['camionModel'] as Map<String, dynamic>),
  )
    ..id = json['id'] as int
    ..camion_id = json['camion_id'] as int;
}

Map<String, dynamic> _$MovimientoModelToJson(MovimientoModel instance) =>
    <String, dynamic>{
      'tipo': instance.tipo,
      'camionModel': instance.camionModel?.toJson(),
      'anotado': instance.anotado,
      'pagado': instance.pagado,
      'id': instance.id,
      'camion_id': instance.camion_id,
    };
