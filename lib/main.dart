import 'package:flutter/material.dart';
import 'package:qmis/screens/loginpage/view/ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      home: Login(),
    );
  }}