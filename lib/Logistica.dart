// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class Logistica extends StatefulWidget {
  const Logistica({super.key});

  @override
  State<Logistica> createState() => _LogisticaState();
}

class _LogisticaState extends State<Logistica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos de Logística",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black87,
        centerTitle: true,
        iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ));
  }
}