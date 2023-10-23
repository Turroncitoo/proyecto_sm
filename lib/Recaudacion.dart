import 'package:flutter/material.dart';

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
    );
  }
}