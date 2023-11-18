
import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/mapper/interface/IRecaudacionPredioMapper.dart';
import 'package:postgres/postgres.dart';

class RecaudacionPredioMapper implements IRecaudacionPredioMapper {
  final PostgreSQLConnection _conexion;

  RecaudacionPredioMapper(this._conexion);

  Future<List<Map<String, dynamic>>> buscarRecaudacionPorFecha( int mes,
      int anio, int predio) async {
    try {
      // Realizar consulta utilizando _conexion
      final results = await _conexion.query('SELECT cas.id_casa 			AS casa,'
          'casd.fecha_registro	AS fecha,'
          'casd.id_deposito		  AS idDeposito,'
          'depo.area			      AS monto,'
          'casd.id_estado		    AS idEstado,'
          'est.descripcion		  AS descripcionEsta'
          'FROM public.Casa cas'
          'INNER JOIN public.Casa_Deposito casd'
          'ON cas.id_casa = casd.id_casa'
          'INNER JOIN  public.Deposito depo'
          'ON depo.id_deposito = casd.id_deposito'
          'INNER JOIN public.Estado est'
          'ON est.id_estado = casd.id_estado'
          'WHERE EXTRACT(MONTH FROM casd.fecha_registro)  = @mes'
          'AND EXTRACT(YEAR FROM casd.fecha_registro)     = @anio'
          'AND cas.id_predio = @predio',
          substitutionValues: {'mes': mes, 'anio': anio, 'predio':predio});

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