import 'package:aire_control/core/data/database/database.dart';
import 'package:aire_control/features/camion/domain/entities/camion.dart';
import 'package:aire_control/features/movimiento/data/models/movimiento_model.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:moor/moor.dart';

part 'camion_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CamionModel extends Camion{

  final int numero;
  final MovimientoModel movimientosModel;
  final int id;


  CamionModel({this.numero, this.movimientosModel, this.id});

  static fromJson(Map<String, dynamic> json) => _$CamionModelFromJson(json);

  Map<String, dynamic> toJson() => _$CamionModelToJson(this);

  CamionDataCompanion toDataCompanion(){
    return CamionDataCompanion(
            numero: Value(this.numero)
    );
  }

  static CamionModel fromDataClass(CamionData camion){
    return CamionModel(
      numero: camion.numero
    );
  }

  static List<CamionModel> listFromDataClass(List<CamionData> camiones){

    List<CamionModel> camionesModel = [];

    for (var camion in camiones) {
      camionesModel.add(CamionModel.fromDataClass(camion));
    }

    return camionesModel;
  }

} 