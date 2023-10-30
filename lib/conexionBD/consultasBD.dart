import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:postgres/postgres.dart';

class ConsultasBD {
  final PostgreSQLConnection _conexion;

  ConsultasBD(this._conexion);

  Future<List<Map<String, dynamic>>> consultarDatos() async {
    try {
      // Realizar consulta utilizando _conexion
      final results = await _conexion.query('SELECT '
          'id_predio 	              AS idPredio, '
          'UPPER(descripcion)       AS nombrePredio '
          'url_imagen		            AS imagenURL '
          'FROM public.Predio ORDER BY id_predio ASC');

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
// Puedes agregar más métodos para otras consultas
}
