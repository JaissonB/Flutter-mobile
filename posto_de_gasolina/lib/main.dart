import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Main(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  TextEditingController _controllerValorA = TextEditingController();
  TextEditingController _controllerValorB = TextEditingController();

  String _mensagem = "";

  void _calcular() {
    double valorAlcool = double.tryParse(_controllerValorA.text)!;
    double valorGasolina = double.tryParse(_controllerValorB.text)!;

    if ((valorAlcool / valorGasolina) >= 0.7) {
      setState(() {
        _mensagem = "Melhor abastecer com gasolina!";
      });
    } else {
      setState(() {
        _mensagem = "Melhor abastecer com álccol!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Álcool ou Gasolina"),
        )
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(16.0)),
                Image.asset("images/logo.png"),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Saiba qual a melhor opção para abastecimento do seu carro",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Preço Alcool, ex: 1.59",
                  ),
                  keyboardType: TextInputType.number,
                  controller: _controllerValorA,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Preço Gasolina, ex: 3.59",
                  ),
                  keyboardType: TextInputType.number,
                  controller: _controllerValorB,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: Size(220.0, 50.0),
                    ),
                    onPressed: _calcular,
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                        fontSize: 22
                      ),
                    ),
                  ),
                ),
                Text(_mensagem)
              ],
            ),
          ),
        ),
      )
    );
  }
}