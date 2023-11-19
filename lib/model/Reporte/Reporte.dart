import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Reporte.g.dart';

abstract class Reporte implements Built<Reporte, ReporteBuilder> {
  int       get recibo;
  String    get formfecha;
  int       get total;
  String    get identificador;
  DateTime  get nacimiento;
  String    get ndocumento;
  int       get laboral;
  int       get consumo;
  int       get mantenimiento;

  Reporte._();
  factory Reporte([void Function(ReporteBuilder) updates]) = _$Reporte;

  static Serializer<Reporte> get serializer => _$reporteSerializer;

  // Método de conversión de JSON personalizado
  factory Reporte.fromJson(Map<String, dynamic> json) {
    return Reporte(
          (b) => b
        ..recibo = json['recibo'] ?? -1  // Puedes asignar un valor predeterminado
        ..formfecha = json['formfecha'] ?? ''
        ..total = json['total'] ?? -1
        ..identificador = json['identificador'] ?? ''
        ..nacimiento = json['nacimiento'] ?? ''
        ..ndocumento = json['ndocumento'] ?? ''
        ..laboral = json['laboral'] ?? -1
        ..consumo = json['consumo'] ?? -1
        ..mantenimiento = json['mantenimiento'] ?? -1,
    );
  }
}
