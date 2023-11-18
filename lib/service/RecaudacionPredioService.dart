import 'package:proyecto_sm/mapper/interface/IRecaudacionPredioMapper.dart';
import 'package:proyecto_sm/model/RecaudacionPredio/RecaudacionPredio.dart';

class RecaudacionPredioService {
  final IRecaudacionPredioMapper _iRecaudacionPredioMapper;
  RecaudacionPredioService(this._iRecaudacionPredioMapper);

  Future<List<RecaudacionPredio>> buscarTodos(int mes, int anio, int predio) async {
    final results = await _iRecaudacionPredioMapper.buscarRecaudacionPorFecha(mes, anio, predio);
    return results.map((result) => RecaudacionPredio.fromJson(result)).toList();
  }

}