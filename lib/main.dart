import 'package:flutter/material.dart';

void main() => runApp(MooApp());

class MooApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme:  ThemeData(
        primarySwatch: Colors.teal
      ),
      home: HomePage(title: 'Welcome to Moo App!')
    );
  }
}

class HomePage extends StatefulWidget{
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  var color = Colors.white;
  void _changeColor(){
    setState(() {
      if (color == Colors.white){
        color = Colors.blue;
      }else{
        color = Colors.white;
      }
    });
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Moo Flutter!!!',
              style: TextStyle(fontSize: 50, color: color)
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: Icon(Icons.airplanemode_active
      )
    )
  );
  }
}