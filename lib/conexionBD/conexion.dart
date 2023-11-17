import 'package:postgres/postgres.dart';

class ConexionBD {
  static PostgreSQLConnection _connection = PostgreSQLConnection(
    "137.184.120.127", // hostURL
    5432,              // port
    "sigcon",          // databaseName
    username: "modulo4",
    password: "modulo4",
    useSSL: true,
    allowClearTextPassword: true,
  );

  static Future<PostgreSQLConnection> openConnection() async {
    if (_connection.isClosed) {
      await _connection.open();
    }
    return _connection;
  }

  static Future<void> closeConnection() async {
    if (!_connection.isClosed) {
      await _connection.close();
    }
  }

}
