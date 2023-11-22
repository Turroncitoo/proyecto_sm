/*
import 'package:proyecto_sm/mapper/interface/IReporteMapper.dart';
import 'package:proyecto_sm/model/Reporte/Reporte.dart';

class ReporteService {
  final IReporteMapper _iReporteMapper;
  ReporteService(this._iReporteMapper);

  Future<List<Reporte>> buscarReporte(String periodo, String identificador) async {
    final results = await _iReporteMapper.buscarReporte(periodo,identificador);
    return results.map((result) => Reporte.fromJson(result)).toList();
  }

}
 */
import 'package:proyecto_sm/mapper/interface/IReporteMapper.dart';
import 'package:proyecto_sm/model/Reporte/Reporte.dart';

class ReporteService {
  final IReporteMapper _iReporteMapper;
  ReporteService(this._iReporteMapper);

  Future<List<Reporte>> buscarReporte(String casaId, String predioId) async {
    final results = await _iReporteMapper.buscarReporte(casaId, predioId);
    return results.map((result) => Reporte.fromJson(result)).toList();
  }
}