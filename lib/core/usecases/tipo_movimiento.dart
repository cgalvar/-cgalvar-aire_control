import 'package:flutter/foundation.dart';

class TipoMovimiento {
  
  static const ARRIBO = 0;
  static const CALIBRADA = 1;
  static const SALIDA = 2;

  static getString(int tipo){

    if(tipo == ARRIBO){
      return "Arribo";
    }

    else if(tipo == SALIDA){
      return "Salida";
    }

    else if(tipo == CALIBRADA){
      return "Calibrada";
    }

    else{
      
      throw Exception("Tipo no soportado");
      
    }

  }

}


