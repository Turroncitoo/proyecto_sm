import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/mapper/interface/IDetallePredioMapper.dart';
import 'package:postgres/postgres.dart';

class DetallePredioMapper implements IDetallePredioMapper {
  final PostgreSQLConnection _conexion;

  DetallePredioMapper(this._conexion);

  Future<List<Map<String, dynamic>>> buscarDetallePorId() async {
    try {
      // Realizar consulta utilizando _conexion
      final results = await _conexion.query('SELECT '
          'pre.id_predio AS predio,'
          'UPPER(pre.descripcion)	AS descripcion,'
          'pre.direccion	AS direccion,'
          'pre.telefono	AS telefono,'
          'per.id_persona	AS idpersona,'
          'UPPER(CONCAT(per.nombres,' ',per.apellido_paterno,' ', per.apellido_materno)) AS nombre'
          'FROM public.Predio as pre'
          'LEFT JOIN public.Persona as per'
          'ON pre.id_persona = per.id_persona');

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
