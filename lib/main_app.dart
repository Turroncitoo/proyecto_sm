import 'package:flutter/material.dart';
import 'package:proyecto_sm/Recaudacion.dart';

class MainApp extends StatelessWidget {
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
              Navigator.of(context).pop();
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
                        'BRISAS DE NARANJAL',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                                'Av. Amezaga, Lima 15081',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16), // Salto de línea
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
                                '910 - 021',
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
                                'Edgardo Fernández',
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí manejas la navegación a la otra pantalla
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Recaudacion()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}



