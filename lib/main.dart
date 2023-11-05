import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Venta de Casas",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Close Button'),
                  action: SnackBarAction(label: 'Undo', onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            );
          },
        ),
        title: Text(
          "1499 Galenia Road",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(
              Icons.expand_less,
              color: Colors.black,
            ),
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('Expand Less Button'),
                action: SnackBarAction(label: 'Undo', onPressed: () {}),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: new Icon(
              Icons.expand_more,
              color: Colors.black,
            ),
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('Expand More Button'),
                action: SnackBarAction(label: 'Undo', onPressed: () {}),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 0,
                    right: 0,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Image.network(
                    "https://gpvivienda.com/blog/wp-content/uploads/2023/03/ralph-ravi-kayden-mR1CIDduGLc-unsplash-1-1-1024x680.jpg",
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                  bottom: 0,
                ),
                child: Text(
                  "LPS 599,000.00",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 60,
                  right: 5,
                  top: 0,
                  bottom: 0,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.ios_share,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: const Text('Amor es compartir'),
                          action:
                              SnackBarAction(label: 'Undo', onPressed: () {}),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 0,
                  right: 16,
                  top: 0,
                  bottom: 0,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: const Text(
                              'Usted ha dado me encorazona a esta casa'),
                          action:
                              SnackBarAction(label: 'Undo', onPressed: () {}),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 0,
                  bottom: 5,
                ),
                child: Text(
                  "1499 Galenia Rd, Austin, TX",
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
//TODO: DIVIDER
          Container(
            margin: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 30,
              bottom: 0,
            ),
            child: Divider(
              height: 5,
              thickness: 1,
              color: Color.fromARGB(255, 232, 231, 231),
            ),
          ),
          //TODO: DIVIDER

          Row(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
//! ------------------------------------------------------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 35,
                            top: 5,
                            bottom: 0,
                          ),
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 35,
                            top: 0,
                            bottom: 5,
                          ),
                          child: Text(
                            "Beds",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
//! ------------------------------------------------------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 35,
                            top: 5,
                            bottom: 0,
                          ),
                          child: Text(
                            "3+",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 35,
                            top: 0,
                            bottom: 5,
                          ),
                          child: Text(
                            "Baths",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
//! ------------------------------------------------------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 35,
                            top: 5,
                            bottom: 0,
                          ),
                          child: Text(
                            "4,203",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 35,
                            top: 0,
                            bottom: 5,
                          ),
                          child: Text(
                            "Sq. ft.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
//! ------------------------------------------------------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 35,
                            top: 5,
                            bottom: 0,
                          ),
                          child: Text(
                            "8,843",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 35,
                            top: 0,
                            bottom: 5,
                          ),
                          child: Text(
                            "Lot Sq. ft.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
//! ------------------------------------------------------------------
                  ],
                ),
              )
            ],
          ),
          //TODO: DIVIDER
          Container(
            margin: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 8,
              bottom: 8,
            ),
            child: Divider(
              height: 5,
              thickness: 1,
              color: Color.fromARGB(255, 232, 231, 231),
            ),
          ),
          //TODO: DIVIDER

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.map,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "View Map",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.directions_car,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "10 minutes away",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //TODO: DIVIDER
          Container(
            margin: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 8,
              bottom: 8,
            ),
            child: Divider(
              height: 5,
              thickness: 1,
              color: Color.fromARGB(255, 232, 231, 231),
            ),
          ),
          //TODO: DIVIDER

//* ============================================================

          Row(
            children: [
              Container(
                  // margin: EdgeInsets.all(8),
                  child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 5,
                      top: 0,
                      bottom: 0,
                    ),
                    child: Text(
                      "Open Houses",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 5,
                  top: 0,
                  bottom: 0,
                ),
                child: Row(
                  children: [
                    Text(
                      "Friday 1:00pm - 4:00pm",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 5,
                  top: 0,
                  bottom: 0,
                ),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: const Text(
                              '2/24 No se, pasa algo impresionante supongo'),
                          action:
                              SnackBarAction(label: 'Undo', onPressed: () {}),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        "2/24 >",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // Color transparente
                        onPrimary: Colors.black, // Color del texto
                        elevation: 0, // Sin elevación
                        padding: EdgeInsets.all(0), // Sin relleno
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
//* ============================================================
          //TODO: DIVIDER
          Container(
            margin: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 0,
              bottom: 0,
            ),
            child: Divider(
              height: 5,
              thickness: 1,
              color: Color.fromARGB(255, 232, 231, 231),
            ),
          ),
          //TODO: DIVIDER

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 5,
                  top: 0,
                  bottom: 0,
                ),
                child: Row(
                  children: [
                    Text(
                      "Saturday 1:00pm - 4:00pm",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 5,
                  top: 0,
                  bottom: 0,
                ),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: const Text(
                              '2/25, estoy empezando a creer que son fechas'),
                          action:
                              SnackBarAction(label: 'Undo', onPressed: () {}),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        "2/25 >",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // Color transparente
                        onPrimary: Colors.black, // Color del texto
                        elevation: 0, // Sin elevación
                        padding: EdgeInsets.all(0), // Sin relleno
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //TODO: DIVIDER
          Container(
            margin: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 0,
              bottom: 0,
            ),
            child: Divider(
              height: 5,
              thickness: 1,
              color: Color.fromARGB(255, 232, 231, 231),
            ),
          ),
          //TODO: DIVIDER

          Container(
            width: double.infinity, // Ocupa todo el ancho
            padding: EdgeInsets.all(15), // Espaciado interno
            color: const Color.fromARGB(
                255, 255, 255, 255), // Color de fondo del botón
            child: ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text(
                      'Contactar con un agente? Con gusto, estamos llamando al 911 por usted :D'),
                  action: SnackBarAction(label: 'Undo', onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text(
                "Contact Agent",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
