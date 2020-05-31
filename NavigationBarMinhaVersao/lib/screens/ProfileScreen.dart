
import 'package:flutter/material.dart';

class WidgetProfile extends StatefulWidget {
  @override
  _WidgetProfileState createState() => _WidgetProfileState();
}

class _WidgetProfileState extends State<WidgetProfile> {
  String nomeCor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text("Modelo para tela da Perfil"),
      ),
      */
      body:
      new Center(
        child: new Text("Profile"),
      ),
    );
  }
}