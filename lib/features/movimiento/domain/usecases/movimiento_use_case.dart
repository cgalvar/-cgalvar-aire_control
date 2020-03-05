import 'package:aire_control/core/error/failures.dart';
import 'package:aire_control/features/movimiento/domain/entities/movimiento.dart';
import 'package:aire_control/features/movimiento/domain/repositories/movimientos_repository.dart';
import 'package:dartz/dartz.dart';

class MovimientoUseCases {
  
  MovimientoRepository repository;

  MovimientoUseCases(this.repository);

  // obtiene todos los movimiento por orden cronologico
  Future<Either<Failure, List<Movimiento>>> getAllSortByDate(){
    return repository.getAllSortByDate();
  }

  // Obtiene a los movimientos, por el numero de camion dado
  Future<Either<Failure, List<Movimiento>>> getAllByCamion(int camion){
    return repository.getAllByCamion(camion);
  }



}