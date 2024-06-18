// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class culinaria extends StatefulWidget {
  const culinaria({super.key});

  @override
  State<culinaria> createState() => _culinariaState();
}

class _culinariaState extends State<culinaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos de Culinária", 
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
    color: Colors.white, //change your color here
  ),  
      ),
    );
  }
}