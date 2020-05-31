
import 'package:flutter/material.dart';

class WidgetBusca extends StatefulWidget {
  @override
  _WidgetBuscaState createState() => _WidgetBuscaState();
}

class _WidgetBuscaState extends State<WidgetBusca> {
  String nomeCor = "";

  String horseUrl = 'https://i.stack.imgur.com/Dw6f7.png';
  String cowUrl = 'https://i.stack.imgur.com/XPOr3.png';
  String camelUrl = 'https://i.stack.imgur.com/YN0m7.png';
  String sheepUrl = 'https://i.stack.imgur.com/wKzo8.png';
  String goatUrl = 'https://i.stack.imgur.com/Qt4JP.png';  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*
      appBar: AppBar(
        title: Text("Modelo para tela de Pesquisa"),
      ),
*/

      appBar: AppBar(
          title: Text("Lista de animais"),
          backgroundColor: Colors.white,
      ),


      body:
      /*
      new Center(
        child: new Text("Search"),
      ),
      */

        // ListTile(
        //   title: Text('Cavalo'),
        //   subtitle: Text('Um animal forte'),
        //   dense: true,
        // ),
/* ++++++++++++++++++++++++++++++++++++++++ */
        // ListTile(
        //   leading: CircleAvatar(
        //     backgroundImage: NetworkImage('img/icon_user.png'),
        //   ),
        //   title: Text('Horse'),
        // ),
/* ++++++++++++++++++++++++++++++++++++++++ */        
        // ListTile(
        //   title: Text('House'),
        //   trailing: Icon(Icons.keyboard_arrow_right),
        //   selected: true,
        // ),
/* ++++++++++++++++++++++++++++++++++++++++ */
        // ListTile(
        //   title: Text('House'),
        //   onTap: (){
        //     // This will not called
        //   },
        //   enabled: true,
        // ),
/* ++++++++++++++++++++++++++++++++++++++++ */
        // ListView(
        //   children: ListTile.divideTiles(
        //     context: context,
        //     tiles:[
        //       ListTile(  title: Text('Horse'),),
        //       ListTile(  title: Text('Cow'),),
        //       ListTile(  title: Text('Camel'),),
        //       ListTile(  title: Text('Sheep'),),
        //       ListTile(  title: Text('Goat'),),
        //       ListTile(  title: Text('Horse'),),
        //       ListTile(  title: Text('Cow'),),
        //       ListTile(  title: Text('Camel'),),
        //       ListTile(  title: Text('Sheep'),),
        //       ListTile(  title: Text('Goat'),),
        //       ListTile(  title: Text('Horse'),),
        //       ListTile(  title: Text('Cow'),),
        //       ListTile(  title: Text('Camel'),),
        //       ListTile(  title: Text('Sheep'),),
        //       ListTile(  title: Text('Goat'),),
        //       ListTile(  title: Text('Horse'),),
        //       ListTile(  title: Text('Cow'),),
        //       ListTile(  title: Text('Camel'),),
        //       ListTile(  title: Text('Sheep'),),
        //       ListTile(  title: Text('Goat'),),
        //       ListTile(  title: Text('Horse'),),
        //       ListTile(  title: Text('Cow'),),
        //       ListTile(  title: Text('Camel'),),
        //       ListTile(  title: Text('Sheep'),),
        //       ListTile(  title: Text('Goat'),),
        //     ],
        //   ).toList(),
        // )
/* ++++++++++++++++++++++++++++++++++++++++ */


        ListView(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(horseUrl),
                  ),
                  title: Text('Horse'),
                  subtitle: Text('A strong animal'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('horse');
                  },
                  selected: true,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(cowUrl),
                  ),
                  title: Text('Cow'),
                  subtitle: Text('Provider of milk'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('cow');
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(camelUrl),
                  ),
                  title: Text('Camel'),
                  subtitle: Text('Comes with humps'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('camel');
                  },
                  enabled: false,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(sheepUrl),
                  ),
                  title: Text('Sheep'),
                  subtitle: Text('Provides wool'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('sheep');
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(goatUrl),
                  ),
                  title: Text('Goat'),
                  subtitle: Text('Some have horns'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('goat');
                  },
                ),

                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(horseUrl),
                  ),
                  title: Text('Horse'),
                  subtitle: Text('A strong animal'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('horse');
                  },
                  selected: true,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(cowUrl),
                  ),
                  title: Text('Cow'),
                  subtitle: Text('Provider of milk'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('cow');
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(camelUrl),
                  ),
                  title: Text('Camel'),
                  subtitle: Text('Comes with humps'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('camel');
                  },
                  enabled: false,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(sheepUrl),
                  ),
                  title: Text('Sheep'),
                  subtitle: Text('Provides wool'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('sheep');
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(goatUrl),
                  ),
                  title: Text('Goat'),
                  subtitle: Text('Some have horns'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('goat');
                  },
                ),


              ],
        ),


    );
  }
}