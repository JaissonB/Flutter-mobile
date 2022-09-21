import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Cep extends StatefulWidget {
  const Cep({Key? key}) : super(key: key);

  @override
  State<Cep> createState() => _CepState();
}

class _CepState extends State<Cep> {
  TextEditingController _controllerCep = TextEditingController();
  String _result = '...';

  _returnCep() async {
    String cep = _controllerCep.text;

    var uri = Uri.http('viacep.com.br', '/ws/${cep}/json/');

    http.Response response;

    response = await http.get(uri);
    
    if (response.statusCode == 200) {
      Map<String, dynamic> retorno = convert.jsonDecode(response.body);
      
      String logradouro = retorno['logradouro'];
      String complemento = retorno['complemento'];
      String bairro = retorno['bairro'];
      String localidade = retorno['localidade'];

      setState(() {
        _result = '${localidade} ${bairro} ${logradouro} ${complemento}';
      });
    } else {
      print('Error ${response.statusCode.toString()}');
    }
    //montar string
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cep"),
        backgroundColor: Color.fromARGB(255, 100, 180, 255),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite o cep Ex.: 99900000',
              ),
              style: TextStyle(
                fontSize: 22
              ),
              controller: _controllerCep,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: _returnCep,
                child: Text('Buscar cep', style: TextStyle(fontSize: 28),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  elevation: 5,
                  fixedSize: Size(220.0, 80.0),
                ),
              ),
            ),
            Text(_result, style: TextStyle(fontSize: 22),)
          ],
        ),
      ),
    );
  }
}