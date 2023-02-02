import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool tap_ubi = false, tap_comida = false, tap_info = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido al ITESO'),
        ),
        body: ListView(
          children: [
            Image.network(
                "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
            Padding(padding: EdgeInsets.all(3)),
            ListTile(
                title: Text(
              "El ITESO Universidad Jesuita de Guadalajara",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            Padding(
              padding: EdgeInsets.all(12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        color: tap_comida ? Colors.indigo : Colors.black,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Puedes pedir comida en sus cafeterias.")));
                          tap_comida = !tap_comida;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.restaurant,
                          size: 60,
                        )),
                    Padding(padding: EdgeInsets.all(12)),
                    Text(
                      "Comida",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        color: tap_info ? Colors.indigo : Colors.black,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Puedes pedir Informacion en rectoría.")));
                          tap_info = !tap_info;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.info,
                          size: 60,
                        )),
                    Padding(padding: EdgeInsets.all(12)),
                    Text(
                      "Información",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        color: tap_ubi ? Colors.indigo : Colors.black,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Se encuenta en Periferico Sur 8585.")));
                          tap_ubi = !tap_ubi;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.pin_drop,
                          size: 60,
                        )),
                    Padding(padding: EdgeInsets.all(12)),
                    Text(
                      "Ubicacion",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
                //
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institucion forma parte del sistema universitario jesuita que integra a ocho universidades en México",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ));
  }
}


// Icon(Icons.pin_drop, size: 60),
//                       color: tap_ubi ? Colors.indigo : Colors.black,
//                       onPressed: () {
//                         tap_ubi = !tap_ubi;
//                         setState(() {});

//                         ScaffoldMessenger.of(context)
//                           ..hideCurrentSnackBar()
//                           ..showSnackBar(SnackBar(
//                               content:
//                                   Text("Se encuenta en Periferico Sur 8585")));
//                       },
