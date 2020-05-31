import 'package:flutter/material.dart';
import './screens/InputTextForm.dart';
void main() => runApp(MyNav());


class MyNav extends StatelessWidget{
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
      routes: {
        WidgetCorPreferida.routeName: (ctx) => WidgetCorPreferida(),
      },
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  int _currentIndex = 0;
  
  final List<Widget> _children = [
    WidgetCorPreferida()
  ];
  
  void onTappedBar(int index){
    setState((){
      _currentIndex = index;
    }); 
  }

  final tabs = [
    Center(child: Text('Início')),
    Center(child: Text('Busca')),
    Center(child: Text('Camera')),
    Center(child: Text('Perfil')),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('NavBar minha versão')
      ),
      body: 
        //Center( child: Text( 'Inicio'),),
        tabs[_currentIndex],
        
        bottomNavigationBar : BottomNavigationBar(


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

          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
    );
  }

}
