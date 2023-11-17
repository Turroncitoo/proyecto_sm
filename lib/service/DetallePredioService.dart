import 'package:proyecto_sm/mapper/interface/IDetallePredioMapper.dart';
import 'package:proyecto_sm/model/Predio/DetallePredio.dart';

class DetallePredioService {
  final IDetallePredioMapper _iDetallePredioMapper;

  DetallePredioService(this._iDetallePredioMapper);

  Future<List<DetallePredio>> buscarTodos() async {
    final results = await _iDetallePredioMapper.buscarDetallePorId();
    return results.map((result) => DetallePredio.fromJson(result)).toList();
  }

}