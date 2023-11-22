abstract class IReporteMapper {
  Future<List<Map<String, dynamic>>> buscarReporte(String periodo, int id_predio, int id_casa);
}