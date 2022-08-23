import 'package:flutter/material.dart';

import 'dart:math';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imageApp = const AssetImage("images/padrao.png");
  var _imagePedra = "images/pedra.png";
  var _imagePapel = "images/papel.png";
  var _imageTesoura = "images/tesoura.png";
  var _mensagem = "Escolha sua jogada";
  final _listaJogadas = ["pedra", "papel", "tesoura"];
  var _isImpossibleMode = false;

  void _opcaoSelecionada(String escolha) {//ou String
    _imagePedra = escolha == "pedra" ? "images/pedraSelected.png" : "images/pedra.png";
    _imagePapel = escolha == "papel" ? "images/papelSelected.png" : "images/papel.png";
    _imageTesoura = escolha == "tesoura" ? "images/tesouraSelected.png" : "images/tesoura.png";
    
    if (!_isImpossibleMode) {
      var numeroAleatorio = Random().nextInt(3);
      var img = "images/${_listaJogadas[numeroAleatorio]}.png";

      setState(() {
        _imageApp = AssetImage(img);
      });

      if (_listaJogadas[numeroAleatorio] == escolha) {
        _mensagem = "Empatamos ;-)";
      } else if ((escolha == "pedra" && numeroAleatorio == _listaJogadas.indexOf("tesoura")) ||
                (escolha == "papel" && numeroAleatorio == _listaJogadas.indexOf("pedra")) ||
                (escolha == "tesoura" && numeroAleatorio == _listaJogadas.indexOf("papel"))
      ) {
        _mensagem = "Parabéns! Você ganhou! Melhor de três?";
      } else {
        _mensagem = "Hahaha! Você perdeu! Tudo normal por aqui!";
      }
    } else {
      _opcaoImpossible(escolha);
    }
  }

  void _opcaoImpossible(String escolha) {
    var indexChosen = _listaJogadas.indexOf(escolha) == 2 ? -1 : _listaJogadas.indexOf(escolha);
    var img = "images/${_listaJogadas[indexChosen+1]}.png";

    setState(() {
      _imageApp = AssetImage(img);
    });
    
    _mensagem = "Hahaha! Você perdeu! Tudo normal por aqui!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Joken Po"),
        )
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start, //default
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
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
                padding: const EdgeInsets.only(
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
                      _imagePedra,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada('papel'),
                    child: Image.asset(
                      _imagePapel,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada('tesoura'),
                    child: Image.asset(
                      _imageTesoura,
                      height: 100,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _isImpossibleMode,
                      onChanged: (checked) => {
                        setState(() => {
                          _isImpossibleMode = checked!
                        }),
                      },
                    ),
                    const Text("Modo impossível!")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}