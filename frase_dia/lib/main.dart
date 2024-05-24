// ignore_for_file: prefer_final_fields

import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Acredite em si mesmo e você será imparável.",
    "Cada dia é uma nova oportunidade para brilhar.",
    "Se você pode sonhar, pode realizar.",
    "A persistência leva ao sucesso.",
    "A jornada mais longa começa com um único passo.",
    "Sua determinação é sua maior força.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Encare cada desafio como uma chance de crescimento.",
    "Grandes coisas nunca vêm da zona de conforto.",
    "Mude seus pensamentos e você mudará seu mundo.",
    "A adversidade revela o verdadeiro campeão que há em você.",
    "Você é mais forte do que imagina.",
    "O que você faz hoje pode melhorar todos os amanhãs.",
    "Acredite no poder dos seus sonhos e siga em frente.",
    "Não desista",
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase !';

  void _gerarFrases() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Frases do dia"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          //decoration:
          //  BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 51, 170, 4),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
                onPressed: _gerarFrases,
                child: const Text(
                  'Nova Frase',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
