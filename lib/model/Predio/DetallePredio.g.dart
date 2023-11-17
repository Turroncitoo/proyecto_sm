// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DetallePredio.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetallePredio> _$detallePredioSerializer =
    new _$DetallePredioSerializer();

class _$DetallePredioSerializer implements StructuredSerializer<DetallePredio> {
  @override
  final Iterable<Type> types = const [DetallePredio, _$DetallePredio];
  @override
  final String wireName = 'DetallePredio';

  @override
  Iterable<Object?> serialize(Serializers serializers, DetallePredio object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'predio',
      serializers.serialize(object.predio, specifiedType: const FullType(int)),
      'descripcion',
      serializers.serialize(object.descripcion,
          specifiedType: const FullType(String)),
      'direccion',
      serializers.serialize(object.direccion,
          specifiedType: const FullType(String)),
      'telefono',
      serializers.serialize(object.telefono,
          specifiedType: const FullType(String)),
      'idpersona',
      serializers.serialize(object.idpersona,
          specifiedType: const FullType(int)),
      'nombre',
      serializers.serialize(object.nombre,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DetallePredio deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetallePredioBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'predio':
          result.predio = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'telefono':
          result.telefono = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'idpersona':
          result.idpersona = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DetallePredio extends DetallePredio {
  @override
  final int predio;
  @override
  final String descripcion;
  @override
  final String direccion;
  @override
  final String telefono;
  @override
  final int idpersona;
  @override
  final String nombre;

  factory _$DetallePredio([void Function(DetallePredioBuilder)? updates]) =>
      (new DetallePredioBuilder()..update(updates))._build();

  _$DetallePredio._(
      {required this.predio,
      required this.descripcion,
      required this.direccion,
      required this.telefono,
      required this.idpersona,
      required this.nombre})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(predio, r'DetallePredio', 'predio');
    BuiltValueNullFieldError.checkNotNull(
        descripcion, r'DetallePredio', 'descripcion');
    BuiltValueNullFieldError.checkNotNull(
        direccion, r'DetallePredio', 'direccion');
    BuiltValueNullFieldError.checkNotNull(
        telefono, r'DetallePredio', 'telefono');
    BuiltValueNullFieldError.checkNotNull(
        idpersona, r'DetallePredio', 'idpersona');
    BuiltValueNullFieldError.checkNotNull(nombre, r'DetallePredio', 'nombre');
  }

  @override
  DetallePredio rebuild(void Function(DetallePredioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetallePredioBuilder toBuilder() => new DetallePredioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetallePredio &&
        predio == other.predio &&
        descripcion == other.descripcion &&
        direccion == other.direccion &&
        telefono == other.telefono &&
        idpersona == other.idpersona &&
        nombre == other.nombre;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, predio.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, telefono.hashCode);
    _$hash = $jc(_$hash, idpersona.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DetallePredio')
          ..add('predio', predio)
          ..add('descripcion', descripcion)
          ..add('direccion', direccion)
          ..add('telefono', telefono)
          ..add('idpersona', idpersona)
          ..add('nombre', nombre))
        .toString();
  }
}

class DetallePredioBuilder
    implements Builder<DetallePredio, DetallePredioBuilder> {
  _$DetallePredio? _$v;

  int? _predio;
  int? get predio => _$this._predio;
  set predio(int? predio) => _$this._predio = predio;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  String? _telefono;
  String? get telefono => _$this._telefono;
  set telefono(String? telefono) => _$this._telefono = telefono;

  int? _idpersona;
  int? get idpersona => _$this._idpersona;
  set idpersona(int? idpersona) => _$this._idpersona = idpersona;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  DetallePredioBuilder();

  DetallePredioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _predio = $v.predio;
      _descripcion = $v.descripcion;
      _direccion = $v.direccion;
      _telefono = $v.telefono;
      _idpersona = $v.idpersona;
      _nombre = $v.nombre;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetallePredio other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetallePredio;
  }

  @override
  void update(void Function(DetallePredioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetallePredio build() => _build();

  _$DetallePredio _build() {
    final _$result = _$v ??
        new _$DetallePredio._(
            predio: BuiltValueNullFieldError.checkNotNull(
                predio, r'DetallePredio', 'predio'),
            descripcion: BuiltValueNullFieldError.checkNotNull(
                descripcion, r'DetallePredio', 'descripcion'),
            direccion: BuiltValueNullFieldError.checkNotNull(
                direccion, r'DetallePredio', 'direccion'),
            telefono: BuiltValueNullFieldError.checkNotNull(
                telefono, r'DetallePredio', 'telefono'),
            idpersona: BuiltValueNullFieldError.checkNotNull(
                idpersona, r'DetallePredio', 'idpersona'),
            nombre: BuiltValueNullFieldError.checkNotNull(
                nombre, r'DetallePredio', 'nombre'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
