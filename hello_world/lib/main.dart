
//import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; //importação básica dos widgets

/************************************************************************/
/********************** Widgets mais interessantes **********************/
/************************************************************************/

main()=>runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 90.0, horizontal: 30.0),
        color: Color(0xFFDDDDDD),
        child: Conteudo(),
      ),
    );
  }
}

class Conteudo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Contador('São Paulo'),
        Contador('Palmeiras'),
      ],
    );
  }
}

class Contador extends StatefulWidget {
  final String _nome;
  Contador(this._nome);

  @override
  State<Contador> createState()=>_ContadorEstado();
}

class _ContadorEstado extends State<Contador> {
  int conta = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(width:3.0,color: Color(0xFFAFAFAF)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // [widget] é a propriedade que a classe estao armazena
          // a instancia do [StatefulWidget] ([Contador] no nosso caso)
          _ContadorRotulo(widget._nome),
          _ContadorBotao(
            conta,
            onPressed: () {
              setState((){
                ++conta;
              });
            }
          )
        ],
      ),
    );
  }
}

class _ContadorRotulo extends StatelessWidget {
  static const textStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 15.0,
  );

  final String _rotulo;
  _ContadorRotulo(this._rotulo);

  @override
  Widget build(BuildContext context) {
    return Text(
      _rotulo,
      style: _ContadorRotulo.textStyle,
    );
  }
}

class _ContadorBotao extends StatelessWidget {
  final conta;
  final onPressed;
  _ContadorBotao(this.conta, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: Color(0xFFFD6A02),
          borderRadius: BorderRadius.circular(4.0)
        ),
        child: Center(
          child: Text(
            '$conta',
            style: TextStyle(fontSize: 50.0)
          ),
        ),
      ),
    );
  }
}

/*
void main(){
  runApp(
    new Center(
      child: new Text(
        'New text!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
*/