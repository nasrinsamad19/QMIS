import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PERFORMANCE INDICATORS DASHBOARDS'),
          leading:
        ),
        body:  Row(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 2.0,
              width: 230,
              child: Wra(child:Icon(Icons.more_vert), ),
            )
          ],
        ),
      ),
    );
  }
}