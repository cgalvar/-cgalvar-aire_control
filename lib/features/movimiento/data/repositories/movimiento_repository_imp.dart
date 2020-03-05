import 'package:aire_control/core/error/exceptions.dart';
import 'package:aire_control/core/error/failures.dart';
import 'package:aire_control/core/network/network_info.dart';
import 'package:aire_control/features/movimiento/data/datasources/local/movimiento_local_data_source.dart';
import 'package:aire_control/features/movimiento/data/datasources/remote/movimiento_remote_data_source.dart';
import 'package:aire_control/features/movimiento/domain/entities/movimiento.dart';
import 'package:aire_control/features/movimiento/domain/repositories/movimientos_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class MovimientoRepositoryImp implements MovimientoRepository{

  final NetworkInfo networkInfo;
  final MovimientoLocalDataSource localDataSource;
  final MovimientoRemoteDataSource remoteDataSource;

  MovimientoRepositoryImp({
    @required this.networkInfo,
    @required this.localDataSource,
    @required this.remoteDataSource
  }){

  }

  @override
  Future<Either<Failure, List<Movimiento>>> getAllByCamion(int camion) {
    // TODO: implement getAllByCamion
    return null;
  }

  @override
  Future<Either<Failure, List<Movimiento>>> getAllSortByDate() async{
    networkInfo.isConnected;
    if (false) {
      // manejar con remote data source
      return null;
    }

    else{

      try {
        var camiones = await this.localDataSource.getAll();
        return Right(camiones);
      } on CacheException {
        return Left(CacheFailure());
      }

      
    }

  }

  
  
}