import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

/*
void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HereExCoin', // www.hereexcoin.com
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/

const request =
    "https://api.hgbrasil.com/finance?format=json-cors&key=2b802166";
void main() async {
  print(await getData());
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white,
      )));
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final realController = new TextEditingController();
  final dolarController = new TextEditingController();
  final euroController = new TextEditingController();

  double dolar;
  double euro;

  void realChanged(String text) {
    if (text.isEmpty) {
      _limparCampos();
      return;
    }

    double real = double.parse(text);
    dolarController.text = (real / dolar).toStringAsFixed(2);
    euroController.text = (real / euro).toStringAsFixed(2);
  }

  void dolarChanged(String text) {
    if (text.isEmpty) {
      _limparCampos();
      return;
    }

    double dolar = double.parse(text);
    realController.text = (dolar * this.dolar).toStringAsFixed(2);
    euroController.text = (dolar * this.dolar / euro).toStringAsFixed(2);
  }

  void euroChanged(String text) {
    if (text.isEmpty) {
      _limparCampos();
      return;
    }
    double euro = double.parse(text);
    realController.text = (euro * this.euro).toStringAsFixed(2);
    dolarController.text = (euro * this.euro / dolar).toStringAsFixed(2);
  }

  void _limparCampos() {
    realController.text = "";
    dolarController.text = "";
    euroController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF222222),
        appBar: AppBar(
          title: Text("\$\$ HereExCoin \$\$"), // www.hereexcoin.com
          backgroundColor: Colors.amber,
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: _limparCampos)
          ],
        ),
        body: FutureBuilder<Map>(
            future: getData(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(
                    child: Text(
                      "Carregando Dados...",
                      style: TextStyle(color: Colors.amber, fontSize: 25.0),
                      textAlign: TextAlign.center,
                    ),
                  );
                default:
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        "Erro ao carregar dados :(",
                        style: TextStyle(color: Colors.amber, fontSize: 25.0),
                        textAlign: TextAlign.center,
                      ),
                    );
                  } else {
                    dolar =
                        snapshot.data['results']['currencies']['USD']['buy'];
                    euro = snapshot.data['results']['currencies']['EUR']['buy'];
                    // return Container(color: Colors.blueGrey);
                    return SingleChildScrollView(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Icon(Icons.monetization_on,
                              size: 150.0, color: Colors.amber),
                          Divider(),
                          buildTextField(
                              "Reais", "R\$", realController, realChanged),
                          Divider(),
                          buildTextField(
                              "Dólares", "US\$", dolarController, dolarChanged),
                          Divider(),
                          buildTextField(
                              "Euros", "€", euroController, euroChanged)
                        ],
                      ),
                    );
                  }
              }
            }));
  }
}

Widget buildTextField(
    String label, String prefix, TextEditingController c, Function f) {
  return TextField(
      controller: c,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.yellow[200]),
        border: OutlineInputBorder(),
        prefixText: prefix,
      ),
      style: TextStyle(color: Colors.amber, fontSize: 25.0),
      //keyboardType: TextInputType.number,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onChanged: f);
}
