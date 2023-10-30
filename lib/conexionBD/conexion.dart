import 'package:postgres/postgres.dart';

class ConexionBD {
  static final ConexionBD _instancia = ConexionBD._privado();

  factory ConexionBD() {
    return _instancia;
  }

  ConexionBD._privado();

  PostgreSQLConnection? _conexion;

  Future<void> abrirConexion() async {
    try {
      print('Intentando abrir la conexión...');
      _conexion = PostgreSQLConnection(
        '137.184.120.127',
        5432,
        'sigcon',
        username: 'modulo4',
        password: 'modulo4',
        allowClearTextPassword: true, // Agrega esta línea
      );

      await _conexion!.open();
      print('Conexión abierta con éxito!');
    } catch (e) {
      print('Error al abrir la conexiónGAA: $e');
      // Puedes lanzar una excepción o manejar el error según tus necesidades
    }
  }




  Future<void> cerrarConexion() async {
    await _conexion?.close(); // Usar el operador de acceso seguro (?.)
  }

  PostgreSQLConnection get conexion {
    if (_conexion == null) {
      // Manejar el caso en el que la conexión es nula (puedes lanzar una excepción, devolver null, etc.)
      throw Exception("La conexión a la base de datos es nula.");
    }
    return _conexion!;
  }
}
