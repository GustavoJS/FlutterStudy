
import 'package:flutter/material.dart';

class WidgetCorPreferida extends StatefulWidget {
  static const routeName = '/cor';
  @override
  __WidgetFormularioState createState() => __WidgetFormularioState();
  //_WidgetCorPreferidaState createState() => _WidgetCorPreferidaState();
}

class __WidgetFormularioState extends State<WidgetCorPreferida> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome, email, celular;
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidate: false,
              child: _formUi(),

            ),
          ),
        ),
      )
    );
  }

  Widget _formUi(){
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Nome Completo'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val){
            nome = val;
          }
        ),

        new TextFormField(
          decoration: new InputDecoration(hintText: "Número do Celular"),
          maxLength: 40,
          validator: _validarNumeroCelular,
          onSaved: (String val){
            celular = val;
          }
        ),

        new TextFormField(
          decoration: new InputDecoration(hintText: "Endereço de e-mail"),
          maxLength: 40,
          validator: _validarEmail,
          onSaved: (String val){
            email = val;
          }
        ),

        new SizedBox(height: 15.0),
        new RaisedButton(
          onPressed: _sendForm,
          child: new Text('Enviar'), 
        )
      ],
    );

  }

  _sendForm(){
    if(_key.currentState.validate()){
      // Sem erros na validação
      _key.currentState.save();
      print("Nome $nome");
      print("Celular $celular");
      print("Email $email");
    }else{
      // erro na validação
      setState((){
        _validate = true;
      });
    }
  } 

  String _validarNome(String value){
    String pattern = r'(^[a-zA-Z]*$)';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0){
    
      return "Informe o nome";
    }else if(!regExp.hasMatch(value)){
    
      return "O nome deve ter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarNumeroCelular(String value){
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0){
      return "Informe o número do celular";
    
    }else if(value.length != 9){
      return "O celular deve ter 10 dígitos";
    
    }else if(!regExp.hasMatch(value)){
      return "O número deve conter apenas dígitos"; 

    }
    return null;
  }

 String _validarEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if(!regExp.hasMatch(value)){
      return "Email inválido";
    }else {
      return null;
    }
  }  

  
}
 
/*

class __WidgetFormularioState extends StatefulWidget {
  @override
  __WidgetFormularioStateState createState() => __WidgetFormularioStateState();
}

class _WidgetCorPreferidaState extends State<WidgetCorPreferida> {
  String nomeCor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                onSubmitted: (String texto){
                  nomeCor = texto;
                },
                style: TextStyle(fontSize: 30.0,)
              ),

              Text("A sua cor preferia é $nomeCor ",
              style: TextStyle(fontSize: 20.0,)),
            ],
          ),
      )
    );
  }
}
*/