import 'package:flutter/material.dart';

import 'dart:math';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imageApp = const AssetImage("images/padrao.png");
  var _mensagem = "Escolha sua jogada";
  var _listaJogadas = ["pedra", "papel", "tesoura"];

  void _opcaoSelecionada(String escolha) {//ou String
    var numeroAleatorio = Random().nextInt(3);
    var img = "images/${_listaJogadas[numeroAleatorio]}.png";

    setState(() {
      _imageApp = AssetImage(img);
    });

    if (_listaJogadas[numeroAleatorio] == escolha) {
      _mensagem = "Empatamos ;-)";
    } else if ((escolha == "pedra" && numeroAleatorio == _listaJogadas.indexOf("tesoura")) ||
               (escolha == "papel" && numeroAleatorio < _listaJogadas.indexOf("pedra")) ||
               (escolha == "tesoura" && numeroAleatorio == _listaJogadas.indexOf("papel"))
    ) {
      _mensagem = "Parabéns! Você ganhou! Melhor de três?";
    } else {
      _mensagem = "Hahaha! Você perdeu! Tudo normal por aqui!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Joken Po"),
        )
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start, //default
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 32,
                  bottom: 16
                ),
                child: Text("Escolha do Bot:"),
              ),
              Image(
                image: _imageApp
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 32,
                  bottom: 16
                ),
                child: Text(_mensagem),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _opcaoSelecionada('pedra'),
                    child: Image.asset(
                      "images/pedra.png",
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada('papel'),
                    child: Image.asset(
                      "images/papel.png",
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada('tesoura'),
                    child: Image.asset(
                      "images/tesoura.png",
                      height: 100,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}