import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador de Pessoas',
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas = 0;
  String _infoText = "Pode entrar!";

  void _mudarQuantidade(int delta) {
    setState(() {
      _pessoas += delta;

      if (_pessoas < 0) {
        _infoText = "Quantidade inválida";
      } else if (_pessoas <= 10) {
        _infoText = "Disponível!";
      } else {
        _infoText = "Está lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "images/restaurant.jpg",
        fit: BoxFit.cover,
        height: 1000.0,
      ),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          'Pessoa: $_pessoas',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: FlatButton(
                child: Text('-1',
                    style: TextStyle(fontSize: 40.0, color: Colors.white)),
                onPressed: () {
                  _mudarQuantidade(-1);
                  // print('-1');
                  debugPrint('-1');
                }),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: FlatButton(
                child: Text('+1',
                    style: TextStyle(fontSize: 40.0, color: Colors.white)),
                onPressed: () {
                  _mudarQuantidade(1);
                  print('+1');
                  debugPrint('+1');
                }),
          ),
        ]),
        Text("Mensagem: $_infoText",
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20.0))
      ])
    ]);
  }
}
