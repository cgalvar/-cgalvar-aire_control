import 'dart:developer';
import 'package:aire_control/core/data/database/database.dart';
import 'package:aire_control/features/movimiento/data/models/movimiento_model.dart';
import 'package:meta/meta.dart';
import 'package:moor/moor.dart';

import 'database/movimiento_dao.dart';

abstract class MovimientoLocalDataSource{

  Future<void> insert(MovimientoModel movimiento);

  Future<List<MovimientoModel>> getAll();

}


class MovimientoLocalDataSourceMoor implements MovimientoLocalDataSource {

  final MoorDatabase database; 
  MovimientoDao dao;

  MovimientoLocalDataSourceMoor({
    @required this.database
  }){
    this.dao = this.database.movimientoDao;
  }

  @override
  Future<List<MovimientoModel>> getAll() async {
  
    var movimientosData = await this.dao.getMovimientos();

    var movimientosModel = MovimientoModel.listFromDataClass(movimientosData);

    return movimientosModel;
    
  }

  @override
  Future<int> insert(MovimientoModel movimiento) {
    
    // Adapter
    
    try {
      var entry = movimiento.toDataCompanion();
      return this.dao.insert(entry);
    } 
      catch (e) {
        log(e);
    }

    
    
  }
  
}