import 'package:flutter/material.dart';
import 'package:proyecto_sm/menu_condominios.dart';
import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/conexionBD/consultasBD.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializar la conexión a la base de datos
  await ConexionBD().abrirConexion();
  final conexion = ConexionBD().conexion;

  // Crear instancia de ConsultasBD con la misma conexión
  final consultasBD = ConsultasBD(conexion);

  // Consultar y mostrar los datos en la consola
  try {
    final resultados = await consultasBD.consultarDatos();
    resultados.forEach((row) {
      print(row);
    });
  } catch (e) {
    print('Error al realizar la consulta: $e');
  }

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.cyan),
      home: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuCondominios(),
    );
  }
}
