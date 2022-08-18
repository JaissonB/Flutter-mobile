import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imageApp = const AssetImage("images/padrao.png");
  var _mensagem = "Escolha sua jogada";

  void _opcaoSelecionada(int escolha) {//ou String
    //Resolver aqui
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
                    onTap: () => _opcaoSelecionada(1),
                    child: Image.asset(
                      "images/pedra.png",
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Image.asset(
                      "images/papel.png",
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
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