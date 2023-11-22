import 'package:proyecto_sm/conexionBD/conexion.dart';

import 'package:proyecto_sm/mapper/interface/IReporteMapper.dart';
import 'package:postgres/postgres.dart';

class ReporteMapper implements IReporteMapper {
  final PostgreSQLConnection _conexion;

  ReporteMapper(this._conexion);

  Future<List<Map<String, dynamic>>> buscarReporte(String periodo, String identificador) async {
    try {
      // Realizar consulta utilizando _conexion
      final results = await _conexion.query('''
        SELECT
            CAST( rec.id_mant_recibo AS varchar) AS recibo, 
            CAST(rec.periodo AS varchar)  AS formfecha, 
            CAST(rec.importe AS varchar) AS total, 
            CAST('E' || RIGHT(CONCAT('000', cas.id_predio), 3) || '-' || RIGHT(CONCAT('000', cas.id_casa), 3)  AS varchar) AS identificador, 
            CAST(UPPER(CONCAT(pers.nombres, ' ', pers.apellido_paterno, ' ', pers.apellido_materno)) AS varchar) AS inquilino, 
            CAST(pers.fecha_nacimiento  AS varchar) AS nacimiento, 
            CAST(pers.ndocumento  AS varchar) AS ndocumento, 
            CAST(COALESCE(SUM(CASE WHEN cgas.id_clase_gasto = 1 THEN det.importe_casa END), 0) AS varchar) AS laboral, 
            CAST(COALESCE(SUM(CASE WHEN cgas.id_clase_gasto = 2 THEN det.importe_casa END), 0) AS varchar) AS consumo, 
            CAST(COALESCE(SUM(CASE WHEN cgas.id_clase_gasto = 3 THEN det.importe_casa END), 0) AS varchar) AS mantenimiento 
            FROM 
            public.mant_recibo rec 
            LEFT JOIN public.mant_recibo_Det det ON det.id_mant_recibo = rec.id_mant_recibo 
            LEFT JOIN public.gasto gas ON gas.id_gasto = det.id_gasto 
            LEFT JOIN public.tipo_gasto tgas ON tgas.id_tipo_gasto = gas.id_tipo_gasto 
            LEFT JOIN public.clase_gasto cgas ON cgas.id_clase_gasto = tgas.id_clase_gasto 
            LEFT JOIN public.Casa cas ON cas.id_casa = rec.id_casa 
            LEFT JOIN public.Propietario prop ON cas.id_casa = prop.id_casa 
            LEFT JOIN public.Persona pers ON prop.id_persona = pers.id_persona 
            WHERE rec.periodo = @periodo AND cas.id_predio = @id_predio AND cas.id_casa = @id_casa
            GROUP BY rec.id_mant_recibo, rec.importe, identificador, inquilino, nacimiento, ndocumento, formfecha''',
        substitutionValues: {'periodo': '202311', 'id_predio': 2, 'id_casa': 7},
      );


      // Convertir cada fila a un mapa
      List<Map<String, dynamic>> resultList = [];
      for (var row in results) {
        Map<String, dynamic> rowMap = {};
        for (var columnIndex = 0; columnIndex < row.length; columnIndex++) {
          var columnName = results.columnDescriptions[columnIndex].columnName;
          rowMap[columnName] = row[columnIndex];
        }
        resultList.add(rowMap);
      }

      return resultList;
    } catch (e) {
      print('Error al realizar la consulta: $e');
      return [];
    }
  }
}

/*
import 'package:proyecto_sm/mapper/interface/IReporteMapper.dart';
import 'package:postgres/postgres.dart';

class ReporteMapper implements IReporteMapper {
  final PostgreSQLConnection _conexion;

  ReporteMapper(this._conexion);

  Future<List<Map<String, dynamic>>> buscarReporte(String casaId, String predioId) async {
    try {
      final results = await _conexion.query(
        '''SELECT UPPER(CONCAT(per.nombres,\' \',per.apellido_paterno,\' \', per.apellido_materno)) AS nom_inquilino,
           per.fecha_nacimiento, per.ndocumento 
           FROM persona AS per
           JOIN inquilino AS inq ON inq.id_persona = per.id_persona
           JOIN casa AS ca ON ca.id_casa = inq.id_casa
           JOIN predio AS pr ON pr.id_predio = ca.id_predio
           WHERE inq.id_casa = @casaId AND pr.id_predio = @predioId''',
        substitutionValues: {'casaId': casaId, 'predioId': predioId},
      );

      // Convert the results to a list of maps
      List<Map<String, dynamic>> resultList = [];
      for (var row in results) {
        Map<String, dynamic> rowMap = {};
        for (var columnIndex = 0; columnIndex < row.length; columnIndex++) {
          var columnName = results.columnDescriptions[columnIndex].columnName;
          rowMap[columnName] = row[columnIndex];
        }
        resultList.add(rowMap);
      }

      return resultList;
    } catch (e) {
      print('Error al realizar la consulta: $e');
      return [];
    }
  }
}

 */