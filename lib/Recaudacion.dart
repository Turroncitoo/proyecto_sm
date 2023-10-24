import 'package:flutter/material.dart';
import 'package:proyecto_sm/reporte_departamento.dart';

// Ejemplo de otra pantalla
class Recaudacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otra Pantalla'),
      ),
      body: Center(
        child: Text('Contenido de la otra pantalla'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí manejas la navegación a la otra pantalla
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReporteDepartamento()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}