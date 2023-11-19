// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RecaudacionPredio.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecaudacionPredio> _$recaudacionPredioSerializer =
    new _$RecaudacionPredioSerializer();

class _$RecaudacionPredioSerializer
    implements StructuredSerializer<RecaudacionPredio> {
  @override
  final Iterable<Type> types = const [RecaudacionPredio, _$RecaudacionPredio];
  @override
  final String wireName = 'RecaudacionPredio';

  @override
  Iterable<Object?> serialize(Serializers serializers, RecaudacionPredio object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'casa',
      serializers.serialize(object.casa, specifiedType: const FullType(int)),
      'fecha',
      serializers.serialize(object.fecha,
          specifiedType: const FullType(DateTime)),
      'idDeposito',
      serializers.serialize(object.idDeposito,
          specifiedType: const FullType(int)),
      'monto',
      serializers.serialize(object.monto,
          specifiedType: const FullType(String)),
      'idEstado',
      serializers.serialize(object.idEstado,
          specifiedType: const FullType(int)),
      'descripcionEsta',
      serializers.serialize(object.descripcionEsta,
          specifiedType: const FullType(String)),
      'identificador',
      serializers.serialize(object.identificador,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RecaudacionPredio deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecaudacionPredioBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'casa':
          result.casa = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'fecha':
          result.fecha = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'idDeposito':
          result.idDeposito = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'monto':
          result.monto = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'idEstado':
          result.idEstado = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'descripcionEsta':
          result.descripcionEsta = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'identificador':
          result.identificador = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RecaudacionPredio extends RecaudacionPredio {
  @override
  final int casa;
  @override
  final DateTime fecha;
  @override
  final int idDeposito;
  @override
  final String monto;
  @override
  final int idEstado;
  @override
  final String descripcionEsta;
  @override
  final String identificador;

  factory _$RecaudacionPredio(
          [void Function(RecaudacionPredioBuilder)? updates]) =>
      (new RecaudacionPredioBuilder()..update(updates))._build();

  _$RecaudacionPredio._(
      {required this.casa,
      required this.fecha,
      required this.idDeposito,
      required this.monto,
      required this.idEstado,
      required this.descripcionEsta,
      required this.identificador})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(casa, r'RecaudacionPredio', 'casa');
    BuiltValueNullFieldError.checkNotNull(fecha, r'RecaudacionPredio', 'fecha');
    BuiltValueNullFieldError.checkNotNull(
        idDeposito, r'RecaudacionPredio', 'idDeposito');
    BuiltValueNullFieldError.checkNotNull(monto, r'RecaudacionPredio', 'monto');
    BuiltValueNullFieldError.checkNotNull(
        idEstado, r'RecaudacionPredio', 'idEstado');
    BuiltValueNullFieldError.checkNotNull(
        descripcionEsta, r'RecaudacionPredio', 'descripcionEsta');
    BuiltValueNullFieldError.checkNotNull(
        identificador, r'RecaudacionPredio', 'identificador');
  }

  @override
  RecaudacionPredio rebuild(void Function(RecaudacionPredioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecaudacionPredioBuilder toBuilder() =>
      new RecaudacionPredioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecaudacionPredio &&
        casa == other.casa &&
        fecha == other.fecha &&
        idDeposito == other.idDeposito &&
        monto == other.monto &&
        idEstado == other.idEstado &&
        descripcionEsta == other.descripcionEsta &&
        identificador == other.identificador;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, casa.hashCode);
    _$hash = $jc(_$hash, fecha.hashCode);
    _$hash = $jc(_$hash, idDeposito.hashCode);
    _$hash = $jc(_$hash, monto.hashCode);
    _$hash = $jc(_$hash, idEstado.hashCode);
    _$hash = $jc(_$hash, descripcionEsta.hashCode);
    _$hash = $jc(_$hash, identificador.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecaudacionPredio')
          ..add('casa', casa)
          ..add('fecha', fecha)
          ..add('idDeposito', idDeposito)
          ..add('monto', monto)
          ..add('idEstado', idEstado)
          ..add('descripcionEsta', descripcionEsta)
          ..add('identificador', identificador))
        .toString();
  }
}

class RecaudacionPredioBuilder
    implements Builder<RecaudacionPredio, RecaudacionPredioBuilder> {
  _$RecaudacionPredio? _$v;

  int? _casa;
  int? get casa => _$this._casa;
  set casa(int? casa) => _$this._casa = casa;

  DateTime? _fecha;
  DateTime? get fecha => _$this._fecha;
  set fecha(DateTime? fecha) => _$this._fecha = fecha;

  int? _idDeposito;
  int? get idDeposito => _$this._idDeposito;
  set idDeposito(int? idDeposito) => _$this._idDeposito = idDeposito;

  String? _monto;
  String? get monto => _$this._monto;
  set monto(String? monto) => _$this._monto = monto;

  int? _idEstado;
  int? get idEstado => _$this._idEstado;
  set idEstado(int? idEstado) => _$this._idEstado = idEstado;

  String? _descripcionEsta;
  String? get descripcionEsta => _$this._descripcionEsta;
  set descripcionEsta(String? descripcionEsta) =>
      _$this._descripcionEsta = descripcionEsta;

  String? _identificador;
  String? get identificador => _$this._identificador;
  set identificador(String? identificador) =>
      _$this._identificador = identificador;

  RecaudacionPredioBuilder();

  RecaudacionPredioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _casa = $v.casa;
      _fecha = $v.fecha;
      _idDeposito = $v.idDeposito;
      _monto = $v.monto;
      _idEstado = $v.idEstado;
      _descripcionEsta = $v.descripcionEsta;
      _identificador = $v.identificador;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecaudacionPredio other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecaudacionPredio;
  }

  @override
  void update(void Function(RecaudacionPredioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecaudacionPredio build() => _build();

  _$RecaudacionPredio _build() {
    final _$result = _$v ??
        new _$RecaudacionPredio._(
            casa: BuiltValueNullFieldError.checkNotNull(
                casa, r'RecaudacionPredio', 'casa'),
            fecha: BuiltValueNullFieldError.checkNotNull(
                fecha, r'RecaudacionPredio', 'fecha'),
            idDeposito: BuiltValueNullFieldError.checkNotNull(
                idDeposito, r'RecaudacionPredio', 'idDeposito'),
            monto: BuiltValueNullFieldError.checkNotNull(
                monto, r'RecaudacionPredio', 'monto'),
            idEstado: BuiltValueNullFieldError.checkNotNull(
                idEstado, r'RecaudacionPredio', 'idEstado'),
            descripcionEsta: BuiltValueNullFieldError.checkNotNull(
                descripcionEsta, r'RecaudacionPredio', 'descripcionEsta'),
            identificador: BuiltValueNullFieldError.checkNotNull(
                identificador, r'RecaudacionPredio', 'identificador'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
