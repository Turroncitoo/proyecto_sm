import 'package:flutter/material.dart';
import 'package:proyecto_sm/main_app.dart';
import 'package:proyecto_sm/menu_condominios.dart';
import 'package:proyecto_sm/reporte_departamento.dart';

class Recaudacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONDOMINIOS CONDOSA'),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
        actions: <Widget> [
          IconButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MenuCondominios()),
                );
              },
              icon: Icon(Icons.close)
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            onPressed: () {
              /*
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MainApp()),
              );
               */
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
      ),
      body: LayoutBuilder(
          builder: (context, constraints){
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      //margin: EdgeInsets.all(20),
                      height: 155, // Altura del contenedor principal
                      decoration: BoxDecoration(
                        color: Colors.grey, // Color de fondo
                      ),
                      child: Row(
                        children: [
                          // Bloque izquierdo con imagen y texto
                          Container(
                            width: 170, // Ancho del bloque izquierdo
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/perfil.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'Administrador',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Bloque derecho con dos contenedores apilados verticalmente
                          Column(
                            children: [
                              SizedBox(height: 14),
                              Container(
                                height: 50, // Altura del primer contenedor derecho
                                width: 230, // Ancho del primer contenedor derecho
                                decoration: BoxDecoration(
                                  color: Colors.white, // Color de fondo del primer contenedor
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Primera fila con la primera imagen y texto
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/img/usuario.png',
                                            width: 28,
                                            height: 28,
                                          ),

                                          Text(
                                            'Edgardo Fernández',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 25), // Espacio entre los dos contenedores
                              Container(
                                height: 50,
                                width: 230,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/img/direccion.png',
                                            width: 28,
                                            height: 28,
                                          ),

                                          Text(
                                            'BRISAS DE NARANJAL',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 500,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Center(
                              child: Text(
                                'GRAFICO DE BARRAS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.indigo[900],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Center(
                              child: Text(
                                'DETALLE DE RECAUDACION',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          MyContainer(),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0, right: 8.0),
                                child: Text(
                                  'DEPARTAMENTO',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 50.0),
                                child: Text(
                                  'RECAUDACION',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 40),
                              // Bloque izquierdo
                              Column(
                                children: [
                                  SizedBox(height: 14),
                                  Container(
                                    height: 50, // Altura contenedor derecho
                                    width: 125, // Ancho contenedor derecho
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'E23-101',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20), // Espacio entre los dos contenedores
                                  Container(
                                    height: 50, // Altura contenedor derecho
                                    width: 125, // Ancho contenedor derecho
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'E23-102',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20), // Espacio entre los dos contenedores
                                  Container(
                                    height: 50, // Altura contenedor derecho
                                    width: 125, // Ancho contenedor derecho
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'E23-103',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 80),
                              // Bloque derecho
                              Column(
                                children: [
                                  SizedBox(height: 14),
                                  Container(
                                    height: 50, // Altura contenedor derecho
                                    width: 125, // Ancho contenedor derecho
                                    decoration: BoxDecoration(
                                      color: Colors.lightGreenAccent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      // Direcciona a otra ventana
                                      child: GestureDetector(
                                        onTap: () {
                                          // Navegar a otra ventana cuando se toque este contenedor
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ReporteDepartamento()),
                                          );
                                        },
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'S/ 250.90',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20), // Espacio entre los dos contenedores
                                  Container(
                                    height: 50, // Altura contenedor derecho
                                    width: 125, // Ancho contenedor derecho
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'S/ 270.90',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20), // Espacio entre los dos contenedores
                                  Container(
                                    height: 50, // Altura contenedor derecho
                                    width: 125, // Ancho contenedor derecho
                                    decoration: BoxDecoration(
                                      color: Colors.lightGreenAccent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'S/ 240.00',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'FEBRERO 2023',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Año'),
                    content: Text('Meses'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cerrar'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(
              Icons.arrow_downward,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}