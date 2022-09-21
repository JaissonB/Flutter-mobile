import 'package:apis_flutter/weather.dart';
import 'package:flutter/material.dart';
import 'package:apis_flutter/Cep.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Color.fromARGB(255, 100, 180, 255),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text('Buscar cep', style: TextStyle(fontSize: 28),),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Cep()));},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  elevation: 5,
                  fixedSize: Size(220.0, 80.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text('Mostrar clima', style: TextStyle(fontSize: 28),),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Weather()));},
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 80, 71, 246),
                  elevation: 5,
                  fixedSize: Size(220.0, 80.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text('Cotações', style: TextStyle(fontSize: 28),),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 239, 142, 25),
                  elevation: 5,
                  fixedSize: Size(220.0, 80.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}