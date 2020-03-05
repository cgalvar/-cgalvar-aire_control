import 'package:aire_control/core/data/database/database.dart';
import 'package:aire_control/core/data/database/tables.dart';
import 'package:moor/moor.dart';



part 'camion_dao.g.dart';

@UseDao(tables: [CamionesMoorTable])
class CamionDao extends DatabaseAccessor<MoorDatabase> with _$CamionDaoMixin{
  
  CamionDao(MoorDatabase db) : super(db);

  Future<List<CamionData>> getCamiones(){
   return select(camionesMoorTable).get(); 
  }
  
  Future<int> insert(CamionDataCompanion entry){
    return into(camionesMoorTable).insert(entry);
  }


}