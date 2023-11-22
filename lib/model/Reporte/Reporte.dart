import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Reporte.g.dart';

abstract class Reporte implements Built<Reporte, ReporteBuilder> {
  String       get recibo;
  String    get formfecha;
  String       get total;
  String    get identificador;
  String    get inquilino;
  String  get nacimiento;
  String    get ndocumento;
  String       get laboral;
  String       get consumo;
  String       get mantenimiento;

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
        ..inquilino = json['inquilino'] ?? ''
        ..nacimiento = json['nacimiento'] ?? ''
        ..ndocumento = json['ndocumento'] ?? ''
        ..laboral = json['laboral'] ?? -1
        ..consumo = json['consumo'] ?? -1
        ..mantenimiento = json['mantenimiento'] ?? -1,
    );
  }
}

/*
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Reporte.g.dart';

abstract class Reporte implements Built<Reporte, ReporteBuilder> {
  String get nom_inquilino;
  DateTime get fecha_nacimiento;
  String get ndocumento;

  Reporte._();
  factory Reporte([void Function(ReporteBuilder) updates]) = _$Reporte;

  static Serializer<Reporte> get serializer => _$reporteSerializer;

  factory Reporte.fromJson(Map<String, dynamic> json) {
    try {
      return Reporte(
            (b) => b
          ..nom_inquilino = json['nom_inquilino'] ?? ''
          ..fecha_nacimiento = json['fecha_nacimiento'] ?? ''
          ..ndocumento = json['ndocumento'] ?? '',
      );
    } catch (e) {
      print('Error en la conversión de nacimiento: $e');
      rethrow;
    }
  }
}

 */