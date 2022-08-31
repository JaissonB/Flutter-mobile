import 'package:flutter/material.dart';

class TelaClientes extends StatefulWidget {
  @override
  State<TelaClientes> createState() => _TelaClientesState();
}

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Clientes"),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 16), child: Image.asset("images/cliente1.png"),),
                    Padding(padding: EdgeInsets.only(top: 16), child: Text("Empresa de software")),
                    Padding(padding: EdgeInsets.only(top: 16), child: Image.asset("images/cliente2.png"),),
                    Padding(padding: EdgeInsets.only(top: 16), child: Text("Empresa de auditoria"),),
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}