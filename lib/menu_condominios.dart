import 'package:flutter/material.dart';
import 'package:proyecto_sm/main_app.dart';

class MenuCondominios extends StatelessWidget {
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
                  MaterialPageRoute(builder: (context) => MainApp()),
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
      body: LayoutBuilder(
          builder: (context, constraints){
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget> [
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        width: 450,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
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
                                        'BRISAS DE NARANJAL',
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
                                            image: AssetImage('assets/img/naranjal.jpg'),
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
                                            image: AssetImage('assets/img/edificio.png'),
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
                                                  left: 27,
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
                                        Positioned(
                                          left: 272,
                                          top: 80,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => MainApp()),
                                              );
                                            },
                                            child: Container(
                                              width: 80,
                                              height: 21,
                                              color: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        width: 450,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
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
                                        'BELLAVISTA',
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
                                            image: AssetImage('assets/img/bellavista.jpg'),
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
                                            image: AssetImage('assets/img/edificio.png'),
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
                                                  left: 27,
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
                                        Positioned(
                                          left: 272,
                                          top: 80,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => MainApp()),
                                              );
                                            },
                                            child: Container(
                                              width: 80,
                                              height: 21,
                                              color: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        width: 450,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
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
                                        'BARRANCA',
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
                                            image: AssetImage('assets/img/barranca.jpg'),
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
                                            image: AssetImage('assets/img/edificio.png'),
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
                                                  left: 27,
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
                                        Positioned(
                                          left: 272,
                                          top: 80,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => MainApp()),
                                              );
                                            },
                                            child: Container(
                                              width: 80,
                                              height: 21,
                                              color: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),

                    ],
                ),
              ),
            );
          }
      )
    );
  }
}