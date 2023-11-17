import 'package:proyecto_sm/mapper/interface/IDetallePredioMapper.dart';
import 'package:proyecto_sm/model/Predio/DetallePredio.dart';

class DetallePredioService {
  final IDetallePredioMapper _iDetallePredioMapper;

  DetallePredioService(this._iDetallePredioMapper);

  Future<List<DetallePredio>> buscarDetallePorId(int predioId) async {
    final results = await _iDetallePredioMapper.buscarDetallePorId(predioId);
    return results.map((result) => DetallePredio.fromJson(result)).toList();
  }

}