import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

//stateLess não tem alteração na view, página statica
//stateFull altera dados

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
              Image.asset("images/logoC.png"),
              GestureDetector(
                onTap: () {print("object");},
                child: Image.asset(
                  "images/botao_jogar.png",
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}