// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class CamionData extends DataClass implements Insertable<CamionData> {
  final int id;
  final int numero;
  CamionData({@required this.id, @required this.numero});
  factory CamionData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return CamionData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      numero: intType.mapFromDatabaseResponse(data['${effectivePrefix}numero']),
    );
  }
  factory CamionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CamionData(
      id: serializer.fromJson<int>(json['id']),
      numero: serializer.fromJson<int>(json['numero']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'numero': serializer.toJson<int>(numero),
    };
  }

  @override
  CamionDataCompanion createCompanion(bool nullToAbsent) {
    return CamionDataCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      numero:
          numero == null && nullToAbsent ? const Value.absent() : Value(numero),
    );
  }

  CamionData copyWith({int id, int numero}) => CamionData(
        id: id ?? this.id,
        numero: numero ?? this.numero,
      );
  @override
  String toString() {
    return (StringBuffer('CamionData(')
          ..write('id: $id, ')
          ..write('numero: $numero')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, numero.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CamionData &&
          other.id == this.id &&
          other.numero == this.numero);
}

class CamionDataCompanion extends UpdateCompanion<CamionData> {
  final Value<int> id;
  final Value<int> numero;
  const CamionDataCompanion({
    this.id = const Value.absent(),
    this.numero = const Value.absent(),
  });
  CamionDataCompanion.insert({
    this.id = const Value.absent(),
    @required int numero,
  }) : numero = Value(numero);
  CamionDataCompanion copyWith({Value<int> id, Value<int> numero}) {
    return CamionDataCompanion(
      id: id ?? this.id,
      numero: numero ?? this.numero,
    );
  }
}

class $CamionesMoorTableTable extends CamionesMoorTable
    with TableInfo<$CamionesMoorTableTable, CamionData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CamionesMoorTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _numeroMeta = const VerificationMeta('numero');
  GeneratedIntColumn _numero;
  @override
  GeneratedIntColumn get numero => _numero ??= _constructNumero();
  GeneratedIntColumn _constructNumero() {
    return GeneratedIntColumn(
      'numero',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, numero];
  @override
  $CamionesMoorTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'camiones_moor_table';
  @override
  final String actualTableName = 'camiones_moor_table';
  @override
  VerificationContext validateIntegrity(CamionDataCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.numero.present) {
      context.handle(
          _numeroMeta, numero.isAcceptableValue(d.numero.value, _numeroMeta));
    } else if (isInserting) {
      context.missing(_numeroMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CamionData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CamionData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CamionDataCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.numero.present) {
      map['numero'] = Variable<int, IntType>(d.numero.value);
    }
    return map;
  }

  @override
  $CamionesMoorTableTable createAlias(String alias) {
    return $CamionesMoorTableTable(_db, alias);
  }
}

class MovimientoData extends DataClass implements Insertable<MovimientoData> {
  final int tipo;
  final bool anotado;
  final bool pagado;
  final DateTime created_at;
  final int camion_id;
  MovimientoData(
      {@required this.tipo,
      @required this.anotado,
      @required this.pagado,
      @required this.created_at,
      this.camion_id});
  factory MovimientoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MovimientoData(
      tipo: intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo']),
      anotado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}anotado']),
      pagado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}pagado']),
      created_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      camion_id:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}camion_id']),
    );
  }
  factory MovimientoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MovimientoData(
      tipo: serializer.fromJson<int>(json['tipo']),
      anotado: serializer.fromJson<bool>(json['anotado']),
      pagado: serializer.fromJson<bool>(json['pagado']),
      created_at: serializer.fromJson<DateTime>(json['created_at']),
      camion_id: serializer.fromJson<int>(json['camion_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tipo': serializer.toJson<int>(tipo),
      'anotado': serializer.toJson<bool>(anotado),
      'pagado': serializer.toJson<bool>(pagado),
      'created_at': serializer.toJson<DateTime>(created_at),
      'camion_id': serializer.toJson<int>(camion_id),
    };
  }

  @override
  MovimientoDataCompanion createCompanion(bool nullToAbsent) {
    return MovimientoDataCompanion(
      tipo: tipo == null && nullToAbsent ? const Value.absent() : Value(tipo),
      anotado: anotado == null && nullToAbsent
          ? const Value.absent()
          : Value(anotado),
      pagado:
          pagado == null && nullToAbsent ? const Value.absent() : Value(pagado),
      created_at: created_at == null && nullToAbsent
          ? const Value.absent()
          : Value(created_at),
      camion_id: camion_id == null && nullToAbsent
          ? const Value.absent()
          : Value(camion_id),
    );
  }

  MovimientoData copyWith(
          {int tipo,
          bool anotado,
          bool pagado,
          DateTime created_at,
          int camion_id}) =>
      MovimientoData(
        tipo: tipo ?? this.tipo,
        anotado: anotado ?? this.anotado,
        pagado: pagado ?? this.pagado,
        created_at: created_at ?? this.created_at,
        camion_id: camion_id ?? this.camion_id,
      );
  @override
  String toString() {
    return (StringBuffer('MovimientoData(')
          ..write('tipo: $tipo, ')
          ..write('anotado: $anotado, ')
          ..write('pagado: $pagado, ')
          ..write('created_at: $created_at, ')
          ..write('camion_id: $camion_id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tipo.hashCode,
      $mrjc(
          anotado.hashCode,
          $mrjc(pagado.hashCode,
              $mrjc(created_at.hashCode, camion_id.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MovimientoData &&
          other.tipo == this.tipo &&
          other.anotado == this.anotado &&
          other.pagado == this.pagado &&
          other.created_at == this.created_at &&
          other.camion_id == this.camion_id);
}

class MovimientoDataCompanion extends UpdateCompanion<MovimientoData> {
  final Value<int> tipo;
  final Value<bool> anotado;
  final Value<bool> pagado;
  final Value<DateTime> created_at;
  final Value<int> camion_id;
  const MovimientoDataCompanion({
    this.tipo = const Value.absent(),
    this.anotado = const Value.absent(),
    this.pagado = const Value.absent(),
    this.created_at = const Value.absent(),
    this.camion_id = const Value.absent(),
  });
  MovimientoDataCompanion.insert({
    @required int tipo,
    @required bool anotado,
    @required bool pagado,
    @required DateTime created_at,
    this.camion_id = const Value.absent(),
  })  : tipo = Value(tipo),
        anotado = Value(anotado),
        pagado = Value(pagado),
        created_at = Value(created_at);
  MovimientoDataCompanion copyWith(
      {Value<int> tipo,
      Value<bool> anotado,
      Value<bool> pagado,
      Value<DateTime> created_at,
      Value<int> camion_id}) {
    return MovimientoDataCompanion(
      tipo: tipo ?? this.tipo,
      anotado: anotado ?? this.anotado,
      pagado: pagado ?? this.pagado,
      created_at: created_at ?? this.created_at,
      camion_id: camion_id ?? this.camion_id,
    );
  }
}

class $MovimientosMoorTableTable extends MovimientosMoorTable
    with TableInfo<$MovimientosMoorTableTable, MovimientoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MovimientosMoorTableTable(this._db, [this._alias]);
  final VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  GeneratedIntColumn _tipo;
  @override
  GeneratedIntColumn get tipo => _tipo ??= _constructTipo();
  GeneratedIntColumn _constructTipo() {
    return GeneratedIntColumn(
      'tipo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _anotadoMeta = const VerificationMeta('anotado');
  GeneratedBoolColumn _anotado;
  @override
  GeneratedBoolColumn get anotado => _anotado ??= _constructAnotado();
  GeneratedBoolColumn _constructAnotado() {
    return GeneratedBoolColumn(
      'anotado',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pagadoMeta = const VerificationMeta('pagado');
  GeneratedBoolColumn _pagado;
  @override
  GeneratedBoolColumn get pagado => _pagado ??= _constructPagado();
  GeneratedBoolColumn _constructPagado() {
    return GeneratedBoolColumn(
      'pagado',
      $tableName,
      false,
    );
  }

  final VerificationMeta _created_atMeta = const VerificationMeta('created_at');
  GeneratedDateTimeColumn _created_at;
  @override
  GeneratedDateTimeColumn get created_at =>
      _created_at ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _camion_idMeta = const VerificationMeta('camion_id');
  GeneratedIntColumn _camion_id;
  @override
  GeneratedIntColumn get camion_id => _camion_id ??= _constructCamionId();
  GeneratedIntColumn _constructCamionId() {
    return GeneratedIntColumn('camion_id', $tableName, true,
        $customConstraints: 'NULL REFERENCES Camiones(id)');
  }

  @override
  List<GeneratedColumn> get $columns =>
      [tipo, anotado, pagado, created_at, camion_id];
  @override
  $MovimientosMoorTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'movimientos_moor_table';
  @override
  final String actualTableName = 'movimientos_moor_table';
  @override
  VerificationContext validateIntegrity(MovimientoDataCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.tipo.present) {
      context.handle(
          _tipoMeta, tipo.isAcceptableValue(d.tipo.value, _tipoMeta));
    } else if (isInserting) {
      context.missing(_tipoMeta);
    }
    if (d.anotado.present) {
      context.handle(_anotadoMeta,
          anotado.isAcceptableValue(d.anotado.value, _anotadoMeta));
    } else if (isInserting) {
      context.missing(_anotadoMeta);
    }
    if (d.pagado.present) {
      context.handle(
          _pagadoMeta, pagado.isAcceptableValue(d.pagado.value, _pagadoMeta));
    } else if (isInserting) {
      context.missing(_pagadoMeta);
    }
    if (d.created_at.present) {
      context.handle(_created_atMeta,
          created_at.isAcceptableValue(d.created_at.value, _created_atMeta));
    } else if (isInserting) {
      context.missing(_created_atMeta);
    }
    if (d.camion_id.present) {
      context.handle(_camion_idMeta,
          camion_id.isAcceptableValue(d.camion_id.value, _camion_idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MovimientoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MovimientoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MovimientoDataCompanion d) {
    final map = <String, Variable>{};
    if (d.tipo.present) {
      map['tipo'] = Variable<int, IntType>(d.tipo.value);
    }
    if (d.anotado.present) {
      map['anotado'] = Variable<bool, BoolType>(d.anotado.value);
    }
    if (d.pagado.present) {
      map['pagado'] = Variable<bool, BoolType>(d.pagado.value);
    }
    if (d.created_at.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.created_at.value);
    }
    if (d.camion_id.present) {
      map['camion_id'] = Variable<int, IntType>(d.camion_id.value);
    }
    return map;
  }

  @override
  $MovimientosMoorTableTable createAlias(String alias) {
    return $MovimientosMoorTableTable(_db, alias);
  }
}

abstract class _$MoorDatabase extends GeneratedDatabase {
  _$MoorDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $CamionesMoorTableTable _camionesMoorTable;
  $CamionesMoorTableTable get camionesMoorTable =>
      _camionesMoorTable ??= $CamionesMoorTableTable(this);
  $MovimientosMoorTableTable _movimientosMoorTable;
  $MovimientosMoorTableTable get movimientosMoorTable =>
      _movimientosMoorTable ??= $MovimientosMoorTableTable(this);
  MovimientoDao _movimientoDao;
  MovimientoDao get movimientoDao =>
      _movimientoDao ??= MovimientoDao(this as MoorDatabase);
  CamionDao _camionDao;
  CamionDao get camionDao => _camionDao ??= CamionDao(this as MoorDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [camionesMoorTable, movimientosMoorTable];
}
