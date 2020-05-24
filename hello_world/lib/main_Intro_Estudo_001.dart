import 'package:flutter/widgets.dart'; //importação básica dos widgets

//Quando o Dart está executando o aplicativo, primeiramente ele chama a função main ()

/*
main() => runApp( //a função runApp() lança a aplicação flutter no dispositivo
  Text( // isto é um widget, ela renderiza o texto inserido
    'Olá, Mundo!!!',//o primeiro argumento é um texto que precisa ser renderizado
  textDirection: TextDirection.ltr, //aqui a direção do texto "da esquerda para direita"
  ),
);
*/

/*
main() => runApp(
  Text(
    'Inserindo um novo Text',
    textDirection: TextDirection.ltr,
  ),
);
*/

/*
// Texto centralizado
main() => runApp(
  Center(
    child: Text(
      'Texto centralizado',
      textDirection: TextDirection.ltr,
    )
  ),

);
*/


/*
// Utilizando Directionality para direcionar todos os texto
main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Center(
      child: Text(
        'Utilizando Directionality para direcionar todos os textos...',
      )
    ,)
  ),
);
*/

main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      color: Color(0xFF444444),
        child: Center(
            child: Text(

              'Alterando o design do aplicativo',
              style: TextStyle( 
                color: Color(0xFFFD620A),
                fontSize: 25,
              ),
            ),
          ),
    ),

  ),

);
