import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'RecaudacionPredio.g.dart';

abstract class RecaudacionPredio implements Built<RecaudacionPredio, RecaudacionPredioBuilder> {
  int get casa;
  DateTime get fecha;
  int get idDeposito;
  String get monto;
  int get idEstado;
  String get descripcionEsta;
  String get identificador;
  String get formfecha;
  RecaudacionPredio._();
  factory RecaudacionPredio([void Function(RecaudacionPredioBuilder) updates]) = _$RecaudacionPredio;

  static Serializer<RecaudacionPredio> get serializer => _$recaudacionPredioSerializer;

  // Método de conversión de JSON personalizado
  factory RecaudacionPredio.fromJson(Map<String, dynamic> json) {
    return RecaudacionPredio(
          (b) => b
        ..casa = json['casa'] ?? -1  // Puedes asignar un valor predeterminado
        ..fecha = json['fecha'] ?? ''
        ..idDeposito = json['iddeposito'] ?? -1
        ..monto = json['monto'] ?? ''
        ..idEstado = json['idestado'] ?? -1
        ..descripcionEsta = json['descripcionesta'] ?? ''
        ..identificador = json['identificador'] ?? ''
         ..formfecha = json['formfecha'] ?? '',
    );
  }
}