import 'package:aire_control/features/camion/domain/entities/camion.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Movimiento extends Equatable {
  final int tipo; // calibrado arribo salida
  final Camion camion;
  final bool anotado;
  final bool pagado;

  Movimiento({
    @required this.tipo,
    @required this.anotado,
    @required this.pagado,
    this.camion,
  });

  @override
  List<Object> get props => [tipo, camion, anotado, pagado];
}
