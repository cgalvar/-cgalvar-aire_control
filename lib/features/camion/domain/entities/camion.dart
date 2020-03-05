import 'package:aire_control/features/movimiento/domain/entities/movimiento.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Camion extends Equatable {
  final int numero;
  final Movimiento movimientos;

  Camion({
    @required this.numero,
    this.movimientos
  });

  @override
  List<Object> get props => [numero];
}