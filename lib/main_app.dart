import 'package:flutter/material.dart';
import 'package:proyecto_sm/Recaudacion.dart';
import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/mapper/DetallePredioMapper.dart';
import 'package:proyecto_sm/menu_condominios.dart';
import 'package:proyecto_sm/model/Predio/Predio.dart';
import 'package:proyecto_sm/model/Predio/DetallePredio.dart';
import 'package:proyecto_sm/service/DetallePredioService.dart';


class MainApp extends StatefulWidget {
  final Predio predio;
  final List<Predio> predios;

  MainApp(this.predio, this.predios);
  _PredioDetalleScreenState createState() => _PredioDetalleScreenState();
}

class _PredioDetalleScreenState extends State<MainApp> {

  List<DetallePredio> detalles = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    fetchDataFromDatabase();
  }

  fetchDataFromDatabase() async {
    var predioId = widget.predio.idPredio;
    var conexion = await ConexionBD.openConnection();
    var prediosService = DetallePredioService(DetallePredioMapper(conexion));
    var resultados = await prediosService.buscarDetallePorId(predioId);

    setState(() {
      detalles = resultados;
    });
    for (var resultado in resultados) {
      print('id: ${resultado.predio}');
    }

  }

  void goToPreviousPredio() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  void goToNextPredio() {
    if (currentIndex < detalles.first.predio - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONDOMINIOS CONDOSA'),
        centerTitle: true,
        backgroundColor: Colors.indigo[900], // Color azul marino
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MenuCondominios()),
              );
            },
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset('assets/img/naranjal.jpg'),
              Positioned(
                left: 0,
                bottom: 10,
                right: 0,
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900]!.withOpacity(0.5), // Establece la opacidad aquí
                    borderRadius: BorderRadius.circular(20.0), // Todas las esquinas curveadas
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        detalles.isNotEmpty
                            ? '${detalles.first.descripcion}'  // Muestra la descripción del primer detalle
                            : 'Sin detalles',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 20,
                bottom: -40.0,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/edificio.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
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
                        'INFORMACIÓN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            // Primera fila con la primera imagen y texto
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center, // Centra verticalmente el contenido
                              children: [
                                Image.asset(
                                  'assets/img/direccion.png',
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(width: 8), // Ajusta el espacio horizontal
                                Text(
                                  detalles.isNotEmpty
                                      ? '${detalles.first.direccion}'  // Muestra la descripción del primer detalle
                                      : 'Sin detalles',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10), // Salto de línea
                            // Segunda fila con la segunda imagen y texto
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center, // Centra verticalmente el contenido
                              children: [
                                Image.asset(
                                  'assets/img/telefono.png',
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(width: 8), // Ajusta el espacio horizontal
                                Text(
                                  detalles.isNotEmpty
                                      ? '${detalles.first.telefono}'  // Muestra la descripción del primer detalle
                                      : 'Sin detalles',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Primera fila con la primera imagen y texto
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center, // Centra verticalmente el contenido
                            children: [
                              Image.asset(
                                'assets/img/usuario.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 8), // Ajusta el espacio horizontal
                              Text(
                                detalles.isNotEmpty
                                    ? '${detalles.first.nombre}'  // Muestra la descripción del primer detalle
                                    : 'Sin detalles',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  // Botón RECAUDACIÓN
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Recaudacion()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Color de fondo del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Esquinas curveadas
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'RECAUDACIÓN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

     floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Align(
      alignment: Alignment.bottomLeft,
      child: FloatingActionButton(
        onPressed: () {
          final currentIndex = widget.predios.indexOf(widget.predio);
          if (currentIndex > 0) {
            final previousPredio = widget.predios[currentIndex - 1];
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainApp(previousPredio, widget.predios)),
            );
          }
        },
        child: Icon(Icons.arrow_back),
      ),
    ),
    Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        onPressed: () {
          final currentIndex = widget.predios.indexOf(widget.predio);
          if (currentIndex < widget.predios.length - 1) {
            final nextPredio = widget.predios[currentIndex + 1];
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainApp(nextPredio, widget.predios)),
            );
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
    ),
  ],
),
    );
  }
}


