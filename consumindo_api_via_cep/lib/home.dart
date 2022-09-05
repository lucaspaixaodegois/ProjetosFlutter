import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtcep = new TextEditingController();
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
          "\nCidade: $cidade - $uf \n Logradouro: $logradouro.\n Bairro: $bairro.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultando  um CEP vai API"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Informe um CEP, Ex:77020514",
                ),
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "Resultado da busca:$resultado",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                child: Text(
                  "Consultar",
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: _consultaCep,
              ),
            ],
          )),
    );
  }
}
