// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_projetoint/cadastro.dart';
import 'package:flutter_application_projetoint/login.dart';

class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Cursos de Administração",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        iconTheme: IconThemeData(
    color: Colors.white, //change your color here
  ),  
      ),
    body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                  child: Text("Entrar", style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),))),
                 SizedBox(width: 5,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cadastro()));
                },
                  child: Text("Cadastrar", style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),))),
                
                SizedBox(width: 5,),
                 ]),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    
    );
  }
}