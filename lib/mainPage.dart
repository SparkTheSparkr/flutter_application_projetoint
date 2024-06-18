// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_projetoint/Fotografia.dart';
import 'package:flutter_application_projetoint/Logistica.dart';
import 'package:flutter_application_projetoint/admin.dart';
import 'package:flutter_application_projetoint/cadastro.dart';
import 'package:flutter_application_projetoint/culinaria.dart';
import 'package:flutter_application_projetoint/login.dart';
import 'package:flutter_application_projetoint/musica.dart';
import 'package:flutter_application_projetoint/programacao.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List<Widget> carouselItems = [
    Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
            image: AssetImage(
              "assets/images/programacao.jpeg",
            ),
            fit: BoxFit.cover),
      ),
    ),
    Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
            image: AssetImage("assets/images/musica.jpeg"), fit: BoxFit.cover),
      ),
    ),
    Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
            image: AssetImage(
              "assets/images/culinaria.jpeg",
            ),
            fit: BoxFit.cover),
      ),
    ),
  ];
  int pagAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YourClass",
          style: TextStyle(color: Colors.white70),
        ),
        backgroundColor: Colors.black87,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            pagAtual = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: pagAtual,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_sharp),
            label: 'Notificações',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Mensagens',
          ),
          NavigationDestination(
            icon: Icon(Icons.book),
            label: 'Cursos',
          ),
        ],
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
            CarouselSlider(
              items: carouselItems,
              options: CarouselOptions(
                  height: 290,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeInOut,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Conheça também outros cursos!",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => admin()));
                  },
                  child: Image.asset("assets/images/adCursoAdm.png")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => culinaria()));
                  },
                  child: Image.asset("assets/images/adCursoCulin.png")),
            ]),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Logistica()));
                  },
                  child: Image.asset("assets/images/adCursoLog.png")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => fotografia()));
                  },
                  child: Image.asset("assets/images/adCursoFoto.png")),
            ]),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => musica()));
                  },
                  child: Image.asset("assets/images/adCursoMus.png")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => programacao()));
                  },
                  child: Image.asset("assets/images/adCursoProg.png")),
            ])
          ],
        ),
      ),
    );
  }
}
