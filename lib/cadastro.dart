// ignore_for_file: prefer_const_constructors

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_application_projetoint/mainLogado.dart';
import 'package:flutter_application_projetoint/usuario.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  List<Usuario> listaU = [];
  TextEditingController nomeController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController confirmaController = TextEditingController();
  String tipo = "";
  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YourClass",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(40),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 143, 141, 141),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Cadastre uma conta!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    hintText: "Nome do usuário",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: generoController,
                  decoration: InputDecoration(
                    hintText: "Gênero",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: senhaController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Senha",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: confirmaController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Confirmar senha",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RadioListTile(
                  value: "Professor",
                  title: Text("Professor"),
                  groupValue: tipo,
                  onChanged: (value) {
                    tipo = value!;
                    setState(() {});
                  },
                ),
                RadioListTile(
                  value: "Aluno",
                  title: Text("Aluno"),
                  groupValue: tipo,
                  onChanged: (value) {
                    tipo = value!;
                    setState(() {});
                  },
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    if (senhaController.text == confirmaController.text) {
                      if (senhaController.text.length > 6) {
                        if (validaIdade(DateTime(2000, 1, 1))) {
                          if (validaEmail(emailController.text)) {
                            if (senhaNumero(senhaController.text)) {
                              String nome = nomeController.text;
                              String genero = generoController.text;
                              String email = emailController.text;
                              String senha = senhaController.text;
                              String type = tipo;
                              Usuario u1 =
                                  Usuario(nome, genero, email, senha, type);
                              listaU.add(u1);
                              nomeController.clear();
                              generoController.clear();
                              emailController.clear();
                              senhaController.clear();
                              confirmaController.clear();
                              tipo = "";
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => mainLogado(),
                                ),
                              );
                            } else {
                              resultado = "A senha deve conter números.";
                            }
                          } else {
                            resultado = "Email inválido.";
                          }
                        } else {
                          resultado =
                              "Você deve ter mais de 14 anos para se cadastrar.";
                        }
                      } else {
                        resultado =
                            "A senha deve ter mais de 6 caracteres.";
                      }
                    } else {
                      resultado = "As senhas não coincidem.";
                    }
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "Criar",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(resultado),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
  bool validaIdade(DateTime dataNascimento) {
    DateTime hoje = DateTime.now();
    DateTime dataLimite = DateTime(hoje.year - 14, hoje.month, hoje.day);
    return !dataNascimento.isAfter(dataLimite);
  }

  bool validaEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  bool senhaNumero(String senha) {
    return senha.contains(RegExp(r'[0-9]'));
  }

}