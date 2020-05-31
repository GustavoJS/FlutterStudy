import 'package:flutter/material.dart';
import './screens/InputTextForm.dart';
import './screens/SearchScreen.dart';
import './screens/CameraScreen.dart';
import './screens/ProfileScreen.dart';
void main() => runApp(MyNav());


class MyNav extends StatelessWidget{

  final Function onTap;
  MyNav({
    this.onTap
  });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Navigation teste',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      /*routes: {
        WidgetCorPreferida.routeName: (ctx) => WidgetCorPreferida(),
      },*/
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  List<Widget> list = [
    WidgetCorPreferida(),
  ];

  Choice _selectedChoice = choices[0];
  void _select(Choice choice) {
    // O app rebuilda com um novo _selectedChoice
    setState(() {
      _selectedChoice = choice;
    });
  }
  
  int _currentIndex = 0;
  final List<Widget> _children = [
    WidgetCorPreferida(),
    WidgetBusca(),
    WidgetCamera(),
    WidgetProfile()
  ];
  
  void onTappedBar(int index){
    setState((){
      _currentIndex = index;
    }); 
  }

  @override
  Widget build(BuildContext context){
    return Scaffold
    (
      appBar: 
        AppBar(
          
          title: Text("Teste"),

          // Adicionando Action no AppBar
          actions: <Widget>[
/*
            IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                _select(choices[0]);
              },
            ),

            IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                _select(choices[1]);
              },
            ),

            IconButton(
              icon: Icon(choices[2].icon),
              onPressed: () {
                _select(choices[2]);
              },
            ),          
*/
            PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context){
                return choices.skip(3).map((Choice choice ){
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            ),
          ],

      ),

      // Menu Lateral
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: const EdgeInsets.all(5.0),

            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Padding(padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        //backgroundImage: AssetImage('img/icon_user.png'),
                        backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/14101776?v=4'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'Nome Usuário',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.tealAccent,

                      ),
                    ),

                    SizedBox(height: 3,),
                    Text(
                      'teste@email.com',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                ),
                
              ),     
              ListTile(
                leading: Icon(Icons.class_ , color: Colors.black87),
                title: Text("Formulario"),
                onTap: (){ Navigator.pop(context);},
                //onTap: () => onTap(context,0),
              ),
              ListTile(
                leading: Icon(Icons.content_paste, color: Colors.black87),
                title: Text("Texto"),
                onTap: (){
                  //Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SegundaRota())
                  );
                },

                /*
                trailing: RaisedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SegundaRota())
                    );
                  },),
                */
              ),            
            ],
            
          ),
        ),
      ),

      body: _children[_currentIndex],
        bottomNavigationBar : BottomNavigationBar(
            
            onTap: onTappedBar,
            currentIndex : _currentIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.deepOrange,
            //selectedFontSize: 15,
            // unselectedFontSize: 20,

          items: [
            BottomNavigationBarItem(
            icon : Icon(Icons.home, color: Colors.black,),
            title: Text('Home', 
              style: TextStyle(color: Color(0xFF000000))
            ),

            backgroundColor: Colors.deepOrange
            ),

            BottomNavigationBarItem(
            icon : Icon(Icons.search, color: Colors.black,),
            title: Text('Busca', 
              style: TextStyle(color: Color(0xFF000000))),
            backgroundColor: Colors.deepOrange,
            ),

            BottomNavigationBarItem(
            icon : Icon(Icons.camera_alt, color: Colors.black,),
            title: Text('Camera', 
              style: TextStyle(color: Color(0xFF000000))),
            backgroundColor: Colors.deepOrange
            ),

            BottomNavigationBarItem(
            icon : Icon(Icons.person, color: Colors.black,),
            title: Text('Perfil', 
              style: TextStyle(color: Color(0xFF000000))),
            backgroundColor: Colors.deepOrange
            ),                    

          ]
        ),
    );
  }

}

  class Choice {
    const Choice({this.title, this.icon});
    final String title;
    final IconData icon;
  }

  const List<Choice> choices = const <Choice>[
    const Choice(title: 'Bus', icon: Icons.directions_bus),
    const Choice(title: 'Walk', icon: Icons.directions_walk),
    const Choice(title: 'Train', icon: Icons.directions_railway),
    const Choice(title: 'Favoritos', icon: Icons.bookmark),
    const Choice(title: 'Ajustes', icon: Icons.adjust),
    const Choice(title: 'Configurações', icon: Icons.settings),
  ];

  class SegundaRota extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Segunda rota(Tela)'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text('Retornar !'),
          ),
        ),
      );
    }

  }
