// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class programacao extends StatefulWidget {
  const programacao({super.key});

  @override
  State<programacao> createState() => _programacaoState();
}

class _programacaoState extends State<programacao> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos de Programação",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black87,
        centerTitle: true,
        iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ));
  }
}