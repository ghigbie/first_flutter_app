import 'package:flutter/material.dart';

void main() => runApp(MooApp());

class MooApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme:  ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}