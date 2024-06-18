// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_function_literals_in_foreach_calls, curly_braces_in_flow_control_structures, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_projetoint/mainLogado.dart';
import 'package:flutter_application_projetoint/usuario.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  List<Usuario> listaU= [Usuario.login("Usuario", "12345"),Usuario.login("Usuario2", "67890"),Usuario.login("Usuario3", "1q2w3e4r"),];
  GlobalKey<FormState> userKey = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  int resultado = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YourClass", style:  TextStyle(color: Colors.white),),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
    color: Colors.white, //change your color here
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
            ),child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Text(
                  'Conecte-se a sua conta!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),),
              SizedBox(height: 20,),
              TextFormField(
                controller: nomeController,
                validator: (value) {
                if(value!.isEmpty)
                {
                  return ("O campo nome está vazio");
                }
                return null;
              },
                decoration: InputDecoration(
                  hintText: "Nome do usuário",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: senhaController,
                obscureText: true,
                validator: (value) {
                if(value!.isEmpty)
                {
                  return ("Nenhuma senha foi digitado");
                } else if(senhaController.text.length < 3)
                {
                  return ("A senha deve ter no mínimo 3 caracteres");
                }
                return null;
              },
                decoration: InputDecoration(
                  hintText: "Senha",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                  validar();
                setState(() {});
              }, 
              child: Text("Logar"),
              style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),),
              ), 
              ],
            ),
          ),
        ),),
    );
  }
  void validar(){
    resultado = 1;
    listaU.forEach((Usuario u){
      if(nomeController.text == u.nome){
        if(senhaController.text == u.senha)
        {
          showDialog(context: context, 
          builder: (context) => AlertDialog(
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, 
              child: Text("Fechar"))
            ],
            title: Text("Resultado"),
            contentPadding: EdgeInsets.all(20),
            content: Text("Login efetuado com sucesso!"),
          ),
          );
          resultado = 0;
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => mainLogado()));
        }
      }
    }
    );
    if(resultado == 1){
      showDialog(context: context, 
          builder: (context) => AlertDialog(
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, 
              child: Text("Fechar"))
            ],
            title: Text("Resultado"),
            contentPadding: EdgeInsets.all(20),
            content: Text("Falha ao efetuar o login!"),
          ),
        );
        resultado = 2;
      }
  }
}