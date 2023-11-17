import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Predio.g.dart';

abstract class Predio implements Built<Predio, PredioBuilder> {
  int get idPredio;
  String get nombrePredio;
  String get imagenURL;

  Predio._();
  factory Predio([void Function(PredioBuilder) updates]) = _$Predio;

  static Serializer<Predio> get serializer => _$predioSerializer;

  // Método de conversión de JSON personalizado
  factory Predio.fromJson(Map<String, dynamic> json) {
    return Predio(
          (b) => b
        ..idPredio = json['idpredio'] ?? -1  // Puedes asignar un valor predeterminado
        ..nombrePredio = json['nombrepredio'] ?? ''
        ..imagenURL = json['imagenurl'] ?? '',
    );
  }
}
