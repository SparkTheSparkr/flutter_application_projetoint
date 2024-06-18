// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class musica extends StatefulWidget {
  const musica({super.key});

  @override
  State<musica> createState() => _musicaState();
}

class _musicaState extends State<musica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos de Música",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black87,
        centerTitle: true,
        iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ));
  }
}