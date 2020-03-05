import 'package:aire_control/core/error/failures.dart';
import 'package:aire_control/features/movimiento/domain/entities/movimiento.dart';
import 'package:dartz/dartz.dart';

abstract class MovimientoRepository {
  
  // Obtiene a los movimientos, por el numero de camion dado
  Future<Either<Failure, List<Movimiento>>> getAllByCamion(int camion);

  Future<Either<Failure, List<Movimiento>>> getAllSortByDate();

}