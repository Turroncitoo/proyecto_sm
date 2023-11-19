import 'package:flutter/material.dart';
import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/menu_condominios.dart';
import 'package:proyecto_sm/reporte_departamento.dart';
import 'package:intl/intl.dart';
import 'package:proyecto_sm/model/RecaudacionPredio/RecaudacionPredio.dart';
import 'package:proyecto_sm/service/RecaudacionPredioService.dart';
import 'package:proyecto_sm/mapper/RecaudacionPredioMapper.dart';

import 'package:proyecto_sm/model/Predio/DetallePredio.dart';
import 'package:proyecto_sm/service/DetallePredioService.dart';
import 'package:proyecto_sm/mapper/DetallePredioMapper.dart';

class Recaudacion extends StatefulWidget {
  final int predio;

  Recaudacion(this.predio);
  _PredioRecaudacionScreenState createState() => _PredioRecaudacionScreenState();
}

class _PredioRecaudacionScreenState extends State<Recaudacion> {
  var  meses=11;
  var anios=2023;
  DateTime selectedDate = DateTime.now();

  List<RecaudacionPredio> recaudacion = [];
  List<DetallePredio> detalles = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromDatabase();
  }

  fetchDataFromDatabase() async {
    var predioId = widget.predio;
    var conexion = await ConexionBD.openConnection();
    var prediosService = RecaudacionPredioService(RecaudacionPredioMapper(conexion));
    var resultados = await prediosService.buscarTodos(meses, anios, predioId);

    var prediosService2 = DetallePredioService(DetallePredioMapper(conexion));
    var resultados2 = await prediosService2.buscarDetallePorId(predioId);

    setState(() {
      recaudacion = resultados;
      detalles = resultados2;
    });
    for (var resultado in resultados) {
      print('id: ${resultado.identificador}');
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2024),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        // Actualizar los valores de mes y año según la fecha seleccionada
        meses = picked.month;
        anios = picked.year;
      });
      fetchDataFromDatabase(); // Volver a cargar los datos con la nueva fecha
    }
  }




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
                                            detalles.isNotEmpty
                                                ? '${detalles.first.nombre}'  // Muestra la descripción del primer detalle
                                                : 'Sin detalles',
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
                                            detalles.isNotEmpty
                                                ? '${detalles.first.descripcion}'  // Muestra la descripción del primer detalle
                                                : 'Sin detalles',
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
                          InkWell(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: MyContainer(selectedDate: selectedDate),
                          ),
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
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: recaudacion.length,
                            itemBuilder: (context, index) {
                              return Row(
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
                                              Text(recaudacion.isNotEmpty
                                                  ? '${recaudacion[index].identificador}' // Muestra la descripción del detalle en la posición 'index'
                                                  : 'Sin detalles',
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
                                                Text(recaudacion.isNotEmpty
                                                    ? '${recaudacion[index].monto}' // Muestra la descripción del detalle en la posición 'index'
                                                    : 'Sin detalles',
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
                                    ],
                                  ),
                                ],
                              );
                            },
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
  final DateTime selectedDate;

  MyContainer({required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ... tu código existente ...

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${DateFormat('MMMM yyyy').format(selectedDate)}', // Formatea la fecha
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

