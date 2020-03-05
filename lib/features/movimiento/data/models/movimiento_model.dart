import 'package:aire_control/core/data/database/database.dart';
import 'package:aire_control/features/camion/data/models/camion_model.dart';
import 'package:aire_control/features/movimiento/domain/entities/movimiento.dart';

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:moor/moor.dart';

part 'movimiento_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MovimientoModel extends Movimiento{
  
  final tipo; // calibrado arribo salida
  final CamionModel camionModel;
  final anotado;
  final pagado;
  int id;
  int camion_id;
  
  
  MovimientoModel({
    @required this.tipo,
    @required this.anotado,
    @required this.pagado,
    this.camionModel,
  }){
    this.camion_id = this.camionModel.id;
  }


  static fromJson(Map<String, dynamic> json) => _$MovimientoModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovimientoModelToJson(this);

  MovimientoDataCompanion toDataCompanion(){
    return  MovimientoDataCompanion(
        tipo: Value(this.tipo),
        anotado: Value(this.anotado),
        pagado: Value(this.pagado),
        camion_id: Value(this.camionModel.id),
      );
  }

  static MovimientoModel fromDataClass(MovimientoData movimiento){
    return MovimientoModel(
      tipo: movimiento.tipo,
      anotado: movimiento.anotado,
      pagado: movimiento.pagado
    );
  }

  static List<MovimientoModel> listFromDataClass(List<MovimientoData> movimientos){

    List<MovimientoModel> movimientosModel = [];

    for (var movimiento in movimientos) {
      movimientosModel.add(MovimientoModel.fromDataClass(movimiento));
    }

    return movimientosModel;
  }

}