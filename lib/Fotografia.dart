// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:flutter/material.dart';

class fotografia extends StatefulWidget {
  const fotografia({super.key});

  @override
  State<fotografia> createState() => _fotografiaState();
}

class _fotografiaState extends State<fotografia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos de Fotografia",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ));
  }
}