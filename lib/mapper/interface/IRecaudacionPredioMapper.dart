abstract class IRecaudacionPredioMapper {
  Future<List<Map<String, dynamic>>> buscarRecaudacionPorFecha( int mes, int anio, int predio);
}