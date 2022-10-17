import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _preco = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(33),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/bitcoin.png"),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                "R\$$_preco",
                style: const TextStyle(fontSize: 35),
              ),
            ),
            ElevatedButton(
                child: const Text(
                  "Atualizar",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () => {}),
          ],
        )),
      ),
    );
  }
}
