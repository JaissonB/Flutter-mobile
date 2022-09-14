import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cara_ou_coroa/home.dart';

//stateLess não tem alteração na view, página statica
//stateFull altera dados

class Result extends StatefulWidget {
  late int valor;
  Result(this.valor);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final _imgOptions = ["images/moeda_cara.png", "images/moeda_coroa.png"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 97, 189, 134),
          ),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(_imgOptions[widget.valor]),
              GestureDetector(
                onTap: () {Navigator.pop(context);},
                child: Image.asset(
                  "images/botao_voltar.png",
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}