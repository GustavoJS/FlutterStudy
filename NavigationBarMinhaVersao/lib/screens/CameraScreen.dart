
import 'package:flutter/material.dart';

class WidgetCamera extends StatefulWidget {
  @override
  _WidgetCameraState createState() => _WidgetCameraState();
}

class _WidgetCameraState extends State<WidgetCamera> {
  String nomeCor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text("Modelo para tela da Camera"),
      ),
      */
      body:
      new Center(
        child: new Text("Camera"),
      ),
    );
  }
}