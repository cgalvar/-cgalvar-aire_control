import 'package:aire_control/core/data/database/database.dart';
import 'package:aire_control/features/camion/data/datasources/camion_local_data_source.dart';
import 'package:aire_control/features/camion/data/models/camion_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';

main() {
  
  CamionLocalDataSource localDataSource;
  MoorDatabase database;


  setUpAll((){
    database = MoorDatabase(VmDatabase.memory(logStatements: true));
    localDataSource = CamionLocalDataSourceImpl(database: database);
  });

  var camion = CamionModel(numero: 1, id: 1);
  var camiones = [camion];
  group("Testeando moor", (){
    
    test('Deberia de insertar un tractocamion en la base de datos', () async {
      
      var result = await localDataSource.insert(camion);
      
      expect(result, 1);

    });

    test('Deberia de traer un registro de la base de datos', () async {
      var result = await localDataSource.getAll();
      expect(result, camiones);
    });

  });


}