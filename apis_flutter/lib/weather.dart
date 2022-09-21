import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String _result = '...';

  _returnTemp() async {

    var uri = Uri.https('api.hgbrasil.com', '/weather?woeid=456204');

    http.Response response;

    response = await http.get(uri);
    
    if (response.statusCode == 200) {
      Map<String, dynamic> retorno = convert.jsonDecode(response.body);
      
      String temp = retorno['temp'];
      String description = retorno['description'];
      String city = retorno['city'];
      String date = retorno['date'];
      String time = retorno['time'];

      setState(() {
        _result = 'Dia ${date} às ${time} em ${city}. \n ${description}, ${temp}º';
      });

      print(_result);
    } else {
      print('Error ${response.statusCode.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
        backgroundColor: Color.fromARGB(255, 100, 180, 255),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _returnTemp,
              child: Text('Buscar clima')
            ),
            Text(_result)
          ],
        ),
      ),
    );
  }
}