/*
     >>>>> CUS Consultar Recaudación G7 <<<<<

     20200175 Fernández Altamirano Edgardo Joaquin
     20200100 Machaca Moscaira Kevin Jesus
     18200133 Arroyo Alania Jose Luis
     20200225 Zacarias Vilca Brayams Jhonatan
*/

import 'package:flutter/material.dart';
import 'package:proyecto_sm/menu_condominios.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.cyan),
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuCondominios(),
    );
  }
}
