import 'package:flutter/material.dart';
import 'package:proyecto_sm/Recaudacion.dart';
import 'package:proyecto_sm/main_app.dart';
import 'package:proyecto_sm/menu_condominios.dart';

import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/model/RecaudacionPredio/RecaudacionPredio.dart';
import 'package:proyecto_sm/service/RecaudacionPredioService.dart';
import 'package:proyecto_sm/mapper/RecaudacionPredioMapper.dart';

import 'package:proyecto_sm/model/Reporte/Reporte.dart';
import 'package:proyecto_sm/service/ReporteService.dart';
import 'package:proyecto_sm/mapper/ReporteMapper.dart';

class ReporteDepartamento extends StatefulWidget {
  //final String recaudacion;
  //final String fecha;

  final RecaudacionPredio periodo;

  ReporteDepartamento(this.periodo);
  _PredioReporteScreenState createState() => _PredioReporteScreenState();
}

class _PredioReporteScreenState extends State<ReporteDepartamento> {
  List<Reporte> reportes = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromDatabase();
  }

  fetchDataFromDatabase() async {
    var periodo = widget.periodo.formfecha;
    var identificador = widget.periodo.identificador;
    var idCasa = int.parse(identificador.substring(3, 4));
    var idPredio = int.parse(identificador.substring(7, 8));

    var conexion = await ConexionBD.openConnection();
    var prediosService = ReporteService(ReporteMapper(conexion));
    var resultados =
        await prediosService.buscarReporte(periodo, idCasa, idPredio);
    print('Consulta SQL: $periodo - $identificador');

    setState(() {
      reportes = resultados;
    });
    print('id: ${reportes.isNotEmpty ? reportes.first.recibo : 'Lista vacía'}');
    for (var resultado in reportes) {
      print('id: ${resultado.recibo}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONDOMINIOS CONDOSA'),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MenuCondominios()),
                );
              },
              icon: Icon(Icons.close)),
        ],
        /*leading: IconButton(
            onPressed: () {},
            icon: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Recaudacion()),
                  );
                },
                icon: Icon(Icons.arrow_back),
            ),
        ),*/
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: 265,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Primera Fila
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${widget.periodo.identificador}',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        // Segunda Fila
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'RECAUDADO:',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              '${widget.periodo.monto}',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Primera Fila
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Inquilino:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                reportes.isNotEmpty
                                    ? '${reportes.first.inquilino}' // Muestra la descripción del primer detalle
                                    : 'Sin detalles',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          // Segunda Fila
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Fecha Nacimiento:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                reportes.isNotEmpty
                                    ? '${reportes.first.nacimiento}' // Muestra la descripción del primer detalle
                                    : 'Sin detalles',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          // Tercera Fila
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'DNI:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                reportes.isNotEmpty
                                    ? '${reportes.first.ndocumento}' // Muestra la descripción del primer detalle
                                    : 'Sin detalles',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Primera Fila
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: 300,
                          height: 40,
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
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween, // Centra verticalmente el contenido
                                  children: [
                                    Text(
                                      'Total Gasto Laboral',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      reportes.isNotEmpty
                                          ? '${reportes.first.laboral}' // Muestra la descripción del primer detalle
                                          : 'Sin detalles',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        // Segunda Fila
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: 300,
                          height: 40,
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
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween, // Centra verticalmente el contenido
                                  children: [
                                    Text(
                                      'Total Consumo',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      reportes.isNotEmpty
                                          ? '${reportes.first.consumo}' // Muestra la descripción del primer detalle
                                          : 'Sin detalles',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        // Tercera Fila
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: 300,
                          height: 40,
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
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween, // Centra verticalmente el contenido
                                  children: [
                                    Text(
                                      'Total Mantenimiento',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      reportes.isNotEmpty
                                          ? '${reportes.first.mantenimiento}' // Muestra la descripción del primer detalle
                                          : 'Sin detalles',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        // Cuarta Fila

                        SizedBox(height: 14),
                        // Quinta Fila
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: 300,
                          height: 40,
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
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween, // Centra verticalmente el contenido
                                  children: [
                                    Text(
                                      'Total Del Mes',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      '${widget.periodo.monto}',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
