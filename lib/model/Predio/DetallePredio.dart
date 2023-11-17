import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'DetallePredio.g.dart';

abstract class DetallePredio implements Built<DetallePredio, DetallePredioBuilder> {
  int get predio;
  String get descripcion;
  String get direccion;
  String get telefono;
  int get idpersona;
  String get nombre;


  DetallePredio._();
  factory DetallePredio([void Function(DetallePredioBuilder) updates]) = _$DetallePredio;

  static Serializer<DetallePredio> get serializer => _$detallePredioSerializer;

  // Método de conversión de JSON personalizado
  factory DetallePredio.fromJson(Map<String, dynamic> json) {
    return DetallePredio(
          (b) => b
        ..predio = json['predio'] ?? -1  // Puedes asignar un valor predeterminado
        ..descripcion = json['descripcion'] ?? ''
        ..direccion = json['direccion'] ?? ''
        ..telefono = json['telefono'] ?? ''
        ..idpersona = json['idpersona'] ?? -1
        ..nombre = json['nombre'] ?? '',
    );
  }
}
