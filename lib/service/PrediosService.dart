import 'package:proyecto_sm/mapper/interface/IPrediosMapper.dart';
import 'package:proyecto_sm/model/Predio/Predio.dart';

class PrediosService {
  final IPrediosMapper _iPrediosMapper;

  PrediosService(this._iPrediosMapper);

  Future<List<Predio>> buscarTodos() async {
    final results = await _iPrediosMapper.buscarTodos();
    return results.map((result) => Predio.fromJson(result)).toList();
  }

}
