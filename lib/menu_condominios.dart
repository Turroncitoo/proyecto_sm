import 'package:flutter/material.dart';
import 'package:proyecto_sm/conexionBD/conexion.dart';
import 'package:proyecto_sm/models/predio_model.dart';
import 'package:proyecto_sm/main_app.dart';

class MenuCondominios extends StatefulWidget {
  @override
  _PredioListScreenState createState() => _PredioListScreenState();
}

class _PredioListScreenState extends State<MenuCondominios> {
  List<Predio> predios = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromDatabase();
  }

  Future<void> fetchDataFromDatabase() async {
    final connection = await ConexionBD.openConnection();

    try {
      final results = await connection.query('SELECT id_predio, descripcion, direccion, telefono FROM predio');

      if (results.isNotEmpty) {

        for (var row in results) {
          final idPredio = row[0] as int;
          final descripcion = row[1] as String;
          final direccion = row[2] as String;
          final telefono = row[3] as String;

          if (!predios.any((predio) => predio.id_predio == idPredio)) {
            setState(() {
              predios.add(Predio(id_predio: idPredio, descripcion: descripcion, direccion: direccion, telefono: telefono));
              predios.sort((a, b) => a.id_predio.compareTo(b.id_predio));
            });
          }
        }
      } else {
        print("No results found.");
      }
    } catch (e) {
      print("Error");
      print(e.toString());
    } finally {
      await ConexionBD.closeConnection();
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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
      ),
      body: ListView.builder(
        itemCount: predios.length,
        itemBuilder: (context, index) {

          return Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            width: 450,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Stack(
              children: [
                Container(
                  width: 450,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF597B94),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 110,
                        top: 160,
                        child: Text(
                          '${predios[index].descripcion}', // Muestra la descripción en la pantalla.
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 450,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/img/naranjal.jpg'), // Cambia la imagen según tus datos.
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 130,
                        child: Container(
                          width: 66,
                          height: 64,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/img/edificio.png'), // Cambia la imagen según tus datos.
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            left: 242,
                            top: 80,
                            child: Container(
                              width: 110,
                              height: 30,
                              color: Color(0xFFACD5F2),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 7.5,
                                    top: 5,
                                    child: Container(
                                      width: 15,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/img/lupa.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 29,
                                    top: 8,
                                    child: SizedBox(
                                      width: 54,
                                      height: 22,
                                      child: Text(
                                        'DETALLE',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MainApp(predios[index], predios),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 242, top: 80),
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
