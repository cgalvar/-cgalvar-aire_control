// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CamionModel _$CamionModelFromJson(Map<String, dynamic> json) {
  return CamionModel(
    numero: json['numero'] as int,
    movimientosModel: json['movimientosModel'] == null
        ? null
        : MovimientoModel.fromJson(
            json['movimientosModel'] as Map<String, dynamic>),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$CamionModelToJson(CamionModel instance) =>
    <String, dynamic>{
      'numero': instance.numero,
      'movimientosModel': instance.movimientosModel?.toJson(),
      'id': instance.id,
    };
