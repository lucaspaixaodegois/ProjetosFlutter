// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtcep = TextEditingController();
  String resultado = "";

  _consultaCep() async {
    //pegando o cep informado
    String cep = txtcep.text;
    //configurando a url
    String url = "https://viacep.com.br/ws/$cep/json/";

    //criando uma requisição
    http.Response response;
    response = await http.get(Uri.parse(url));

    //dicionário de dados
    Map<String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno["logradouro"];
    String cidade = retorno["localidade"];
    String bairro = retorno["bairro"];
    String uf = retorno["uf"];

    //atualizar os dados em tela
    setState(() {
      resultado =
          "\nCidade: $cidade - $uf\nLogradouro: $logradouro          \nBairro: $bairro.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Consultando  um CEP vai API"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.green.shade50,
          padding: const EdgeInsets.all(30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Informe um CEP, Ex:77020514",
                  ),
                  style: const TextStyle(fontSize: 25),
                  controller: txtcep,
                ),
                ElevatedButton(
                  onPressed: _consultaCep,
                  child: const Text(
                    'Consultar',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Text(
                  "Resultado da busca:\n\n $resultado",
                  style: const TextStyle(fontSize: 25),
                ),
              ]),
        ));
  }
}
