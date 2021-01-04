import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class side_menu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<side_menu>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(icon: Padding(padding: EdgeInsets.all(9.0),
              child: Image.asset('assets/images/side_menu/closeX3_shadow.png'),), onPressed: null),
            Container(padding: EdgeInsets.fromLTRB(10, 5, 10, 5),),
          ],
        ),
       body: GridView(gridDelegate: null),
      ),
    );
  }
}