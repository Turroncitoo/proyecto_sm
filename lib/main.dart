import 'package:flutter/material.dart';
import 'package:proyecto_sm/menu_condominios.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData (brightness: Brightness.light, primaryColor:  Colors.cyan),
  home:  MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: MenuCondominios(),
    );
  }
}

