import 'package:flutter/material.dart';

class TelaServicos extends StatefulWidget {
  @override
  State<TelaServicos> createState() => _TelaServicosState();
}

class _TelaServicosState extends State<TelaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_servico.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Nossos serviços"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Consultoria"),
                  Text("Cálculo de preços"),
                  Text("Acompanhamento de projetos"),
                ]
              )
            ]
          ),
        ),
      ),
    );
  }
}