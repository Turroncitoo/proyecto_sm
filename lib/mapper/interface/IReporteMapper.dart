abstract class IReporteMapper {
  Future<List<Map<String, dynamic>>> buscarReporte(String periodo, String identificador);
}
