import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/mapper/interface/IPrediosMapper.dart';
import 'package:postgres/postgres.dart';

class PrediosMapper implements IPrediosMapper {
  final PostgreSQLConnection _conexion;

  PrediosMapper(this._conexion);

  Future<List<Map<String, dynamic>>> buscarTodos() async {
    try {
      // Realizar consulta utilizando _conexion
      final results = await _conexion.query('SELECT '
          'id_predio              AS idPredio, '
          'UPPER(descripcion)     AS nombrePredio, '
          'url_imagen             AS imagenURL '
          'FROM public.Predio ORDER BY idPredio ASC');

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
