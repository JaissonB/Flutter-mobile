import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  const Pagina({Key? key}) : super(key: key);

  @override
  State<Pagina> createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(color: Colors.red),
    );
  }
}