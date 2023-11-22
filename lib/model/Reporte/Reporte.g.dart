// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Reporte.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Reporte> _$reporteSerializer = new _$ReporteSerializer();

class _$ReporteSerializer implements StructuredSerializer<Reporte> {
  @override
  final Iterable<Type> types = const [Reporte, _$Reporte];
  @override
  final String wireName = 'Reporte';

  @override
  Iterable<Object?> serialize(Serializers serializers, Reporte object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'recibo',
      serializers.serialize(object.recibo,
          specifiedType: const FullType(String)),
      'formfecha',
      serializers.serialize(object.formfecha,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(String)),
      'identificador',
      serializers.serialize(object.identificador,
          specifiedType: const FullType(String)),
      'inquilino',
      serializers.serialize(object.inquilino,
          specifiedType: const FullType(String)),
      'nacimiento',
      serializers.serialize(object.nacimiento,
          specifiedType: const FullType(String)),
      'ndocumento',
      serializers.serialize(object.ndocumento,
          specifiedType: const FullType(String)),
      'laboral',
      serializers.serialize(object.laboral,
          specifiedType: const FullType(String)),
      'consumo',
      serializers.serialize(object.consumo,
          specifiedType: const FullType(String)),
      'mantenimiento',
      serializers.serialize(object.mantenimiento,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Reporte deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReporteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'recibo':
          result.recibo = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'formfecha':
          result.formfecha = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'identificador':
          result.identificador = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'inquilino':
          result.inquilino = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nacimiento':
          result.nacimiento = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ndocumento':
          result.ndocumento = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'laboral':
          result.laboral = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'consumo':
          result.consumo = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mantenimiento':
          result.mantenimiento = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Reporte extends Reporte {
  @override
  final String recibo;
  @override
  final String formfecha;
  @override
  final String total;
  @override
  final String identificador;
  @override
  final String inquilino;
  @override
  final String nacimiento;
  @override
  final String ndocumento;
  @override
  final String laboral;
  @override
  final String consumo;
  @override
  final String mantenimiento;

  factory _$Reporte([void Function(ReporteBuilder)? updates]) =>
      (new ReporteBuilder()..update(updates))._build();

  _$Reporte._(
      {required this.recibo,
      required this.formfecha,
      required this.total,
      required this.identificador,
      required this.inquilino,
      required this.nacimiento,
      required this.ndocumento,
      required this.laboral,
      required this.consumo,
      required this.mantenimiento})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(recibo, r'Reporte', 'recibo');
    BuiltValueNullFieldError.checkNotNull(formfecha, r'Reporte', 'formfecha');
    BuiltValueNullFieldError.checkNotNull(total, r'Reporte', 'total');
    BuiltValueNullFieldError.checkNotNull(
        identificador, r'Reporte', 'identificador');
    BuiltValueNullFieldError.checkNotNull(inquilino, r'Reporte', 'inquilino');
    BuiltValueNullFieldError.checkNotNull(nacimiento, r'Reporte', 'nacimiento');
    BuiltValueNullFieldError.checkNotNull(ndocumento, r'Reporte', 'ndocumento');
    BuiltValueNullFieldError.checkNotNull(laboral, r'Reporte', 'laboral');
    BuiltValueNullFieldError.checkNotNull(consumo, r'Reporte', 'consumo');
    BuiltValueNullFieldError.checkNotNull(
        mantenimiento, r'Reporte', 'mantenimiento');
  }

  @override
  Reporte rebuild(void Function(ReporteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReporteBuilder toBuilder() => new ReporteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reporte &&
        recibo == other.recibo &&
        formfecha == other.formfecha &&
        total == other.total &&
        identificador == other.identificador &&
        inquilino == other.inquilino &&
        nacimiento == other.nacimiento &&
        ndocumento == other.ndocumento &&
        laboral == other.laboral &&
        consumo == other.consumo &&
        mantenimiento == other.mantenimiento;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recibo.hashCode);
    _$hash = $jc(_$hash, formfecha.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, identificador.hashCode);
    _$hash = $jc(_$hash, inquilino.hashCode);
    _$hash = $jc(_$hash, nacimiento.hashCode);
    _$hash = $jc(_$hash, ndocumento.hashCode);
    _$hash = $jc(_$hash, laboral.hashCode);
    _$hash = $jc(_$hash, consumo.hashCode);
    _$hash = $jc(_$hash, mantenimiento.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Reporte')
          ..add('recibo', recibo)
          ..add('formfecha', formfecha)
          ..add('total', total)
          ..add('identificador', identificador)
          ..add('inquilino', inquilino)
          ..add('nacimiento', nacimiento)
          ..add('ndocumento', ndocumento)
          ..add('laboral', laboral)
          ..add('consumo', consumo)
          ..add('mantenimiento', mantenimiento))
        .toString();
  }
}

class ReporteBuilder implements Builder<Reporte, ReporteBuilder> {
  _$Reporte? _$v;

  String? _recibo;
  String? get recibo => _$this._recibo;
  set recibo(String? recibo) => _$this._recibo = recibo;

  String? _formfecha;
  String? get formfecha => _$this._formfecha;
  set formfecha(String? formfecha) => _$this._formfecha = formfecha;

  String? _total;
  String? get total => _$this._total;
  set total(String? total) => _$this._total = total;

  String? _identificador;
  String? get identificador => _$this._identificador;
  set identificador(String? identificador) =>
      _$this._identificador = identificador;

  String? _inquilino;
  String? get inquilino => _$this._inquilino;
  set inquilino(String? inquilino) => _$this._inquilino = inquilino;

  String? _nacimiento;
  String? get nacimiento => _$this._nacimiento;
  set nacimiento(String? nacimiento) => _$this._nacimiento = nacimiento;

  String? _ndocumento;
  String? get ndocumento => _$this._ndocumento;
  set ndocumento(String? ndocumento) => _$this._ndocumento = ndocumento;

  String? _laboral;
  String? get laboral => _$this._laboral;
  set laboral(String? laboral) => _$this._laboral = laboral;

  String? _consumo;
  String? get consumo => _$this._consumo;
  set consumo(String? consumo) => _$this._consumo = consumo;

  String? _mantenimiento;
  String? get mantenimiento => _$this._mantenimiento;
  set mantenimiento(String? mantenimiento) =>
      _$this._mantenimiento = mantenimiento;

  ReporteBuilder();

  ReporteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recibo = $v.recibo;
      _formfecha = $v.formfecha;
      _total = $v.total;
      _identificador = $v.identificador;
      _inquilino = $v.inquilino;
      _nacimiento = $v.nacimiento;
      _ndocumento = $v.ndocumento;
      _laboral = $v.laboral;
      _consumo = $v.consumo;
      _mantenimiento = $v.mantenimiento;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reporte other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Reporte;
  }

  @override
  void update(void Function(ReporteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Reporte build() => _build();

  _$Reporte _build() {
    final _$result = _$v ??
        new _$Reporte._(
            recibo: BuiltValueNullFieldError.checkNotNull(
                recibo, r'Reporte', 'recibo'),
            formfecha: BuiltValueNullFieldError.checkNotNull(
                formfecha, r'Reporte', 'formfecha'),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'Reporte', 'total'),
            identificador: BuiltValueNullFieldError.checkNotNull(
                identificador, r'Reporte', 'identificador'),
            inquilino: BuiltValueNullFieldError.checkNotNull(
                inquilino, r'Reporte', 'inquilino'),
            nacimiento: BuiltValueNullFieldError.checkNotNull(
                nacimiento, r'Reporte', 'nacimiento'),
            ndocumento: BuiltValueNullFieldError.checkNotNull(
                ndocumento, r'Reporte', 'ndocumento'),
            laboral: BuiltValueNullFieldError.checkNotNull(
                laboral, r'Reporte', 'laboral'),
            consumo: BuiltValueNullFieldError.checkNotNull(
                consumo, r'Reporte', 'consumo'),
            mantenimiento: BuiltValueNullFieldError.checkNotNull(
                mantenimiento, r'Reporte', 'mantenimiento'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
