import 'dart:developer';

import 'package:aire_control/core/data/database/database.dart';
import 'package:aire_control/features/camion/data/models/camion_model.dart';

import 'database/camion_dao.dart';
import 'package:meta/meta.dart';

abstract class CamionLocalDataSource{

  Future<int> insert(CamionModel movimiento);

  Future<List<CamionModel>> getAll();

}

class CamionLocalDataSourceImpl implements CamionLocalDataSource{
  
  MoorDatabase database;
  CamionDao dao;

  CamionLocalDataSourceImpl({
    @required this.database
  }){
    this.dao = database.camionDao;
  }

  @override
  Future<List<CamionModel>> getAll() async {
    
    var camiones = await this.dao.getCamiones();

    return CamionModel.listFromDataClass(camiones);

  }

  @override
  Future<int> insert(CamionModel camion) {
    
    try {
      var entry = camion.toDataCompanion();
      return this.dao.insert(entry);
    } 
      catch (e) {
        log(e);
    }

  }

}