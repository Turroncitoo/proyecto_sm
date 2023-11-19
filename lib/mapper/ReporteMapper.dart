import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/mapper/interface/IReporteMapper.dart';
import 'package:postgres/postgres.dart';

class ReporteMapper implements IReporteMapper {
  final PostgreSQLConnection _conexion;

  ReporteMapper(this._conexion);

  Future<List<Map<String, dynamic>>> buscarReporte(String periodo, String identificador) async {
    try {
      // Realizar consulta utilizando _conexion
      final results = await _conexion.query(
        'SELECT '
            'rec.id_mant_recibo AS recibo, '
            'rec.periodo AS formfecha, '
            'rec.importe AS total, '
            'CONCAT("E", RIGHT(CONCAT("000", cas.id_predio), 3), "-", RIGHT(CONCAT("000", cas.id_casa), 3)) AS identificador, '
            'UPPER(CONCAT(pers.nombres, " ", pers.apellido_paterno, " ", pers.apellido_materno)) AS inquilino, '
            'pers.fecha_nacimiento AS nacimiento, '
            'pers.ndocumento AS ndocumento, '
            'COALESCE(SUM(CASE WHEN cgas.id_clase_gasto = 1 THEN det.importe_casa END), 0) AS laboral, '
            'COALESCE(SUM(CASE WHEN cgas.id_clase_gasto = 2 THEN det.importe_casa END), 0) AS consumo, '
            'COALESCE(SUM(CASE WHEN cgas.id_clase_gasto = 3 THEN det.importe_casa END), 0) AS mantenimiento '
            'FROM '
            'public.mant_recibo rec '
            'LEFT JOIN public.mant_recibo_Det det ON det.id_mant_recibo = rec.id_mant_recibo '
            'LEFT JOIN public.gasto gas ON gas.id_gasto = det.id_gasto '
            'LEFT JOIN public.tipo_gasto tgas ON tgas.id_tipo_gasto = gas.id_tipo_gasto '
            'LEFT JOIN public.clase_gasto cgas ON cgas.id_clase_gasto = tgas.id_clase_gasto '
            'LEFT JOIN public.Casa cas ON cas.id_casa = rec.id_casa '
            'LEFT JOIN public.Propietario prop ON cas.id_casa = prop.id_casa '
            'LEFT JOIN public.Persona pers ON prop.id_persona = pers.id_persona '
            'WHERE rec.periodo = @periodo AND CONCAT("E", RIGHT(CONCAT("000", cas.id_predio), 3), "-", RIGHT(CONCAT("000", cas.id_casa), 3)) = @identificador '
            'GROUP BY rec.id_mant_recibo, rec.importe, identificador, inquilino, nacimiento, ndocumento, formfecha',
            substitutionValues: {'periodo': periodo, 'identificador': identificador},
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
