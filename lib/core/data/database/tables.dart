import 'package:moor/moor.dart';


@DataClassName("CamionData")
class CamionesMoorTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get numero => integer()();
}

@DataClassName("MovimientoData")
class MovimientosMoorTable extends Table {
  

  IntColumn get tipo => integer()(); // 0 Arribo // 1 Calibrada // 2 Salida

  BoolColumn get anotado => boolean()();
  BoolColumn get pagado => boolean()();

  DateTimeColumn get created_at => dateTime()();

  IntColumn get camion_id =>
    integer().nullable().customConstraint('NULL REFERENCES Camiones(id)')();



}
