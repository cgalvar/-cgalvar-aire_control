import 'package:aire_control/core/usecases/tipo_movimiento.dart';
import 'package:aire_control/features/movimiento/domain/entities/movimiento.dart';
import 'package:aire_control/features/movimiento/domain/repositories/movimientos_repository.dart';
import 'package:aire_control/features/movimiento/domain/usecases/movimiento_use_case.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

class MockMovimientoRepository extends Mock
    implements MovimientoRepository {}

void main() {
  
  MovimientoUseCases useCases;
  MockMovimientoRepository repository;

  setUp((){
    repository = MockMovimientoRepository();
    useCases = MovimientoUseCases(repository);
  });

  List<Movimiento> movimientos = [Movimiento(tipo: TipoMovimiento.ARRIBO, anotado: false, pagado: false,), 
                                  Movimiento(tipo: TipoMovimiento.ARRIBO, anotado: false, pagado: false,)];

  test('should get a movimiento list from the repository', () async {

    // on the fly repository implementation  
    when(repository.getAllSortByDate()).thenAnswer((_) async => Right(movimientos));

    // act to test
    final result = await useCases.getAllSortByDate();

    // assert
    expect(result, Right(movimientos));

    verify(repository.getAllSortByDate());

  });
  


}
