import 'package:aire_control/core/data/database/database.dart';
import 'package:aire_control/core/data/database/tables.dart';
import 'package:moor/moor.dart';



part 'movimiento_dao.g.dart';

@UseDao(tables: [MovimientosMoorTable])
class MovimientoDao extends DatabaseAccessor<MoorDatabase> with _$MovimientoDaoMixin{
  
  MovimientoDao(MoorDatabase db) : super(db);

  Future<List<MovimientoData>> getMovimientos(){
   return select(movimientosMoorTable).get(); 
  }
  
  Future<int> insert(MovimientoDataCompanion entry){
    return into(movimientosMoorTable).insert(entry);
  }


}