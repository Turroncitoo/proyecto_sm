// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Predio.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Predio> _$predioSerializer = new _$PredioSerializer();

class _$PredioSerializer implements StructuredSerializer<Predio> {
  @override
  final Iterable<Type> types = const [Predio, _$Predio];
  @override
  final String wireName = 'Predio';

  @override
  Iterable<Object?> serialize(Serializers serializers, Predio object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'idPredio',
      serializers.serialize(object.idPredio,
          specifiedType: const FullType(int)),
      'nombrePredio',
      serializers.serialize(object.nombrePredio,
          specifiedType: const FullType(String)),
      'imagenURL',
      serializers.serialize(object.imagenURL,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Predio deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PredioBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idPredio':
          result.idPredio = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'nombrePredio':
          result.nombrePredio = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imagenURL':
          result.imagenURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Predio extends Predio {
  @override
  final int idPredio;
  @override
  final String nombrePredio;
  @override
  final String imagenURL;

  factory _$Predio([void Function(PredioBuilder)? updates]) =>
      (new PredioBuilder()..update(updates))._build();

  _$Predio._(
      {required this.idPredio,
      required this.nombrePredio,
      required this.imagenURL})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(idPredio, r'Predio', 'idPredio');
    BuiltValueNullFieldError.checkNotNull(
        nombrePredio, r'Predio', 'nombrePredio');
    BuiltValueNullFieldError.checkNotNull(imagenURL, r'Predio', 'imagenURL');
  }

  @override
  Predio rebuild(void Function(PredioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PredioBuilder toBuilder() => new PredioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Predio &&
        idPredio == other.idPredio &&
        nombrePredio == other.nombrePredio &&
        imagenURL == other.imagenURL;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idPredio.hashCode);
    _$hash = $jc(_$hash, nombrePredio.hashCode);
    _$hash = $jc(_$hash, imagenURL.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Predio')
          ..add('idPredio', idPredio)
          ..add('nombrePredio', nombrePredio)
          ..add('imagenURL', imagenURL))
        .toString();
  }
}

class PredioBuilder implements Builder<Predio, PredioBuilder> {
  _$Predio? _$v;

  int? _idPredio;
  int? get idPredio => _$this._idPredio;
  set idPredio(int? idPredio) => _$this._idPredio = idPredio;

  String? _nombrePredio;
  String? get nombrePredio => _$this._nombrePredio;
  set nombrePredio(String? nombrePredio) => _$this._nombrePredio = nombrePredio;

  String? _imagenURL;
  String? get imagenURL => _$this._imagenURL;
  set imagenURL(String? imagenURL) => _$this._imagenURL = imagenURL;

  PredioBuilder();

  PredioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idPredio = $v.idPredio;
      _nombrePredio = $v.nombrePredio;
      _imagenURL = $v.imagenURL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Predio other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Predio;
  }

  @override
  void update(void Function(PredioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Predio build() => _build();

  _$Predio _build() {
    final _$result = _$v ??
        new _$Predio._(
            idPredio: BuiltValueNullFieldError.checkNotNull(
                idPredio, r'Predio', 'idPredio'),
            nombrePredio: BuiltValueNullFieldError.checkNotNull(
                nombrePredio, r'Predio', 'nombrePredio'),
            imagenURL: BuiltValueNullFieldError.checkNotNull(
                imagenURL, r'Predio', 'imagenURL'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
