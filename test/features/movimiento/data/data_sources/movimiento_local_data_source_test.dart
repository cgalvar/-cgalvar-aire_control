import 'package:aire_control/core/data/database/database.dart';
import 'package:aire_control/features/movimiento/data/datasources/local/movimiento_local_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';

main(List<String> args) {
  
  MovimientoLocalDataSource dataSource;
  MoorDatabase database;


  setUp((){
    database = MoorDatabase(VmDatabase.memory());
    dataSource = MovimientoLocalDataSourceMoor(database: database);
  });


  

  test('Deberia de insertar un movimiento en la base de datos', () {
    
  });
  test('Deberia regresar una lista de modelos', () {
    
  });

  


}