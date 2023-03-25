import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea5/providers/tip_time_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip time'),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            leading: Icon(
              Icons.store_mall_directory,
              color: Colors.green,
            ),
            title: Padding(
              padding: EdgeInsets.only(right: 140),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    labelText: "Cost of the service",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green, width: 15.0))),
                controller: context.watch<TipTimeProvider>().costController,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.room_service,
              color: Colors.green,
            ),
            title: Text("How was the service?"),
          ),
          Column(
            children: context
                .read<TipTimeProvider>()
                .radioGroupValues
                .entries
                .map(
                  (e) => ListTile(
                    leading: Radio(
                      activeColor: Colors.indigo,
                      value: e.key,
                      groupValue:
                          context.watch<TipTimeProvider>().getSelectedRadio,
                      onChanged: (newValue) {
                        // llama el metodo para setear selected radio
                        // context.read para llamar metodos
                        // context.watch para observar datos
                        context
                            .read<TipTimeProvider>()
                            .setSelectedRadio(newValue);
                      },
                    ),
                    title: Text("${e.value}"),
                  ),
                )
                .toList(),
          ),
          SwitchListTile(
            secondary: Icon(
              Icons.arrow_outward_sharp,
              color: Colors.green,
            ),
            title: Text("Round up tip"),
            activeColor: Colors.indigo,
            value: context.watch<TipTimeProvider>().isSelected,
            onChanged: (newVal) {
              context.read<TipTimeProvider>().setIsSelected(newVal);
            },
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: 350,
                height: 35,
                child: MaterialButton(
                  color: Colors.green,
                  child: Text("CALCULATE"),
                  onPressed: () {
                    context.read<TipTimeProvider>().tipCalculation();
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(20)),
              Text("Tip amount: \$ ${context.read<TipTimeProvider>().getSum}"),
            ],
          ),
        ],
      ),
    );
  }
}
