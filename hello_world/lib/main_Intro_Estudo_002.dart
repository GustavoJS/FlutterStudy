
//import 'package:flutter/material.dart';



import 'package:flutter/widgets.dart'; //importação básica dos widgets

/* ------------------------------------------------------------- */
/* APRENDENDO A UTILIZAR WIDGETS SEM ESTADO (Stateless Widgets)  */
/* ------------------------------------------------------------- */
/*
main() => runApp(
  Directionality (
    textDirection: TextDirection.ltr,
    child: Center(
      child: WidgetSemEstado(),
    ), 
  )
);

class WidgetSemEstado extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Text(
      'Utilizando Widgets sem estado (Stateless Widgets)',
    );
  }

}
*/

/* ----------------------------------- */
/*  Exemplo de Widget com um argumento */
/* ----------------------------------- */
/*
main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Center(
      child: WidgetSemEstado("um argumento!"),
    ),
  )
);


class WidgetSemEstado extends StatelessWidget{

  final String nome;
  WidgetSemEstado(this.nome);

  @override
  Widget build(BuildContext context){
    return Text(
      'Exemplo de Widget com $nome',
    );
  }


}

*/

/* ---------------------------- */
/* Utilizando GestureDetector() */
/* ---------------------------- */
/*
main() => runApp(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Container(color: Color(0xFFFFFFFF), child: WidgetSemEstado()),
      ),
    );

class WidgetSemEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector( // um widget normal
        onTap: () { // uma das propriedades do [GestureDetector]
        //esta função será chamada quando o filho(child) do widget for pressionado
          print("Botão clicado");
        },

        child: Container( //o container vai representar o nosso botão
          decoration: BoxDecoration( //é dessa forma que estilizamos o [Container]
            shape: BoxShape.circle, // muda a sua forma de rectangulo para um circulo
            color: Color(0xFFeeff00), //e o pinta de azul
            border: Border.all(width: 5.0, color: const Color(0xFF000000)),
          ),
          width: 80.0,
          height: 80.0,
        ),
      ),
    );
  }
}
*/

/* ------------------------------------ */
/* Stateful Widgets (Widget com estado) */
/* ------------------------------------ */
main() => runApp(
  Directionality(
        textDirection: TextDirection.ltr,
        child: Container(color: Color(0xFFAAAAAA), child: Contador()),
      ),
);

class Contador extends StatefulWidget {
  //o estado não está armazenado no widget, mas dentro de uma classe especifica
  //que é criado pelo createState()
  @override
  State<Contador> createState() => _ContadorEstado();
  //o resultado da função é um objecto, que deve ser
  //do tipo State<Contador> (onde Contador é o nome do nosso Widget)
}


class _ContadorEstado extends State<Contador>
{
  int contador = 0;
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: GestureDetector(
        onTap: (){
          setState(() {
            ++contador;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF17A2B8),
          ),
          width: 80.0,
          height: 80.0,
          child: Center(
            child: Text('$contador', style: TextStyle(fontSize: 30.0),),
          ),
        ),
      ),
    );
  }
}