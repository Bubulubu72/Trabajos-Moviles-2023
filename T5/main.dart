import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea5/home_page.dart';
import 'package:tarea5/providers/tip_time_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => TipTimeProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      home: HomePage(),
    );
  }
}
