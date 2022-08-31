import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_contato.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Contato"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("atendimento@atmconsultoria.com.br"),
                  Text("Telefone: (11) 3525-8596"),
                  Text("Celular: (11) 99586-5236"),
                ]
              )
            ]
          ),
        ),
      ),
    );
  }
}