import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  final String day, imagen, lugar;
  ItemBox(
      {super.key,
      required this.day,
      required this.imagen,
      required this.lugar});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            height: 100,
            width: 105,
            child: Image.network(
              "$imagen",
              fit: BoxFit.fill,
            ),
          ),
          Text("$day", style: TextStyle(fontSize: 12)),
          Text("$lugar")
        ]));
  }
}
