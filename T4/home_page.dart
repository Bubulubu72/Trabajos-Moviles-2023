import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:apptarea4/constants.dart';

class HomePage extends StatefulWidget {
  var exchanges = jsonDecode(CRYPTO_EXCHANGES);
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: ListView.separated(
        itemCount: (widget.exchanges as List).length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network("${widget.exchanges[index]["image"]}"),
            title: Text("${widget.exchanges[index]["name"]}"),
            subtitle: Text(
                "${widget.exchanges[index]["country"]} \n ${widget.exchanges[index]["year_established"]} "),
            trailing: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text("${widget.exchanges[index]["trust_score"]}")),
          );
        },
      ),
    );
  }
}
