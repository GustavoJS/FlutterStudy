import 'package:flutter/widgets.dart'; //importação básica dos widgets

/*
//Quando o Dart está executando o aplicativo, primeiramente ele chama função main()
main() => runApp( //a função runApp() lança a aplicação flutter no dispositivo
  Center(
    child: Text(  // Widget Text que irá renderizar o text
      'Olá, Mundo!!!',//o argumento texto que irá ser renderizado
    textDirection: TextDirection.ltr,
    
    ),
  ),
);
*/

/*
main() => runApp(
  Directionality( //Define a direção do texto para todos os Widgets alinhados
    textDirection: TextDirection.ltr, // A direção do texto da esquerda para a direita (Left to Right)
    child: Center( // Centralizar o conteúdo 
      child: Text(
        'Estudando linha por linha',
      )
    ),
  ),

);

*/
/*
main() => runApp(
  Directionality( // Define o texto para todos os widgets alinhados 
    textDirection: TextDirection.ltr, // Direcionamento do texto da esquerda para a direita (Left To Right)
    child: Container( // o novo widget ! É o <div> no mundo do Flutter
      color: Color(0xFFFFFF22),
        child: Center( // centraliza o conteúdo
          child: Text(
            'Testando texto formatado',
            style: TextStyle(
              color: Color(0xFF66DD22), //configura a cor do Texto
              fontSize: 32.0, // Configura o tamanho do texto
            ),
          ),
        ),
    ),
  ),
);
*/
/*
main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      /// Para Container o Color significa a cor do Fundo
      color: Color(0xFF55AAFF),
      child: Center(
        child: Text(
          'Good morning!',
          style: TextStyle(
            color: Color(0xFFFFA500),
            fontSize: 42.0,
          ),
        ),
      ),
    ),
  ),
);
*/


/**********************************************************************************/
/**********************************************************************************/
/******************************StatelessWidget*************************************/
/**********************************************************************************/
/**********************************************************************************/
/**********************************************************************************/
/*
main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      color: Color(0xFF999999),
      child: Center(
        child: WidgetSemEstado(),
      ),
    ),
  )
);


class WidgetSemEstado extends StatelessWidget{
  @override
  build(BuildContext context){
    return Text(
      'Testando Sem Widget',
      style: TextStyle(
        color: Color(0xFFDDDDDD),
        fontSize: 21.0,
      ),
    );
  }
}
*/
/*
main() => runApp(
  Directionality(
    textDirection : TextDirection.ltr,
    child: Container(
      color: Color(0xFF999999),
      child: Center(
        child: WidgetComArgumento('Simone'),
      ),
    ),
  ),
);

class WidgetComArgumento extends StatelessWidget{

  final String nome; // propriedade da Classe
  WidgetComArgumento(this.nome); // Construtora da classe

  @override
  Widget build(BuildContext context){ // O aplicativo será renderizado sempre que salvarmos nossas alterações movendo nosso app para Widget separado
    return Text(
      'Diga, $nome!!',
      style: TextStyle(
        fontSize: 34.0
      ),
    );
  } 
}

*/

/*
main() => runApp(
  Directionality(
    textDirection : TextDirection.ltr,
    child: Container(
      color: Color(0xFFAAAAAA),
      child: Center(
        child: WidgetSemEstado(),
      ),
    ),
  ),
);


// class WidgetSemEstado extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Center(
      // Este widget cuida da interação do utilizador com a tela e chama funções relacionadas a ele
//       child: GestureDetector( 
//         onTap: (){
//           print('O botão foi clicado');
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Color(0xFF17A2B8)
//           ),
//           width: 60,
//           height: 60,
//         )
//       ),
//     );
//   }
// }


// Reescrevendo
class WidgetSemEstado extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
        child: GestureDetector( // Widget responsável pela interação do usuário com a tela e chama funções relacionadas a ele. Ele não renderiza nada na tela
          onTap: (){
            print('Usuário está clicando no botão');
          },
          child: Container(
            decoration: BoxDecoration( // Aplica formatação para o Container
              shape: BoxShape.circle,
              color: Color(0xFFDDDDFF),

            ),
            width: 60,
            height: 60,
          ),
        ),
      );
  }
}
*/

/**********************************************************************************/
/**********************************************************************************/
/******************************StatefullWidget*************************************/
/**********************************************************************************/
/**********************************************************************************/
/**********************************************************************************/

main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      color: Color(0xFFDDDDDD),
      child: Center(
        child: ComEstado(),
      ),
    ),
  ),
);


class ComEstado extends StatefulWidget{
  // O estado não está armazenado no widget, mas sim em uma classe especifica que é criado pelo CreateState()
  @override
  State<ComEstado> createState() => _ContadorEstado();
  // O resultado da função é um objeto, que deve ser to tipo State<ComEstado> (Onde ComEstado é o nome da Widget definida)
}

class _ContadorEstado extends State<ComEstado>{

  int contador = 0;
  
  @override
  Widget build(BuildContext context){
    return Center(
      child: GestureDetector(
        onTap: (){
            // uma vez que pressionamos o botão acrescentaremos o valor para a variável [contador]
          setState(() {
            // setState é necessário para acionarmos o gancho do ciclo de vida, então Widget saberá quando ele deve ser atualizado
            ++contador;
            print(contador);
          });
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFFFFAA),
          ),
          width: 80.0,
          height:80.0,
          child: Center(
            child: Text('$contador', style: TextStyle(color: Color(0xFF000000),fontSize: 30.0),),
          ),
        ),
        
      ),
    );
  }

}




/*

import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/