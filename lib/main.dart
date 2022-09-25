import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: util().criaTitulo('Cauculadora de IMC'),
        body: Container(
          color: Colors.white,
          alignment: AlignmentDirectional.topCenter,
          child: Column(
            children: [
              util().criaIcon(),
            ],
          ),
        ),
      ),
    );
  }
}
