
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.grey,

        body:  SingleChildScrollView(
            child:Column(
              children: [
                Container(
                  height: 50,
                  width: 500,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 54, 0,0),
                  color: Colors.white24,
                  child: Text.rich(
                      TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                          ),

                          children:[
                            WidgetSpan(child: Icon(Icons.more_vert)),
                            TextSpan(
                                text: 'PERFORMANCE INDICATORS DASHBOARD'
                            )
                          ]
                      )
                  ),
                ),Container(
                  height: 300,
                  width: 300,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text.rich(
                              TextSpan(
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  children:[
                                    WidgetSpan(child: Icon(Icons.pie_chart)),
                                    TextSpan(
                                        text: 'Global Indicators               (Nov-20)'
                                    )
                                  ]
                              )
                          ),
                        ],
                      ),
                      Text('Overall Occupancy'),
                      Text('99.06%'),
                      Container(
                        padding: EdgeInsets.only(top: 670,left: 10,right: 10),
                        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child:Container(
                            height: 1.0,
                            width: 100.0,
                            color: Colors.white24,
                          ),),
                      ),
                      Text('Income'),
                      Text('10,920,608 QAR'),
                      Container(
                        padding: EdgeInsets.only(top: 670,left: 10,right: 10),
                        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child:Container(
                            height: 1.0,
                            width: 100.0,
                            color: Colors.white24,
                          ),),
                      ),
                      Text('Expenses'),
                      Text('1,191,590 QAR(19%)'),
                    ],
                  ),
                ),

              ],
                ),
              ),

          ),
    );
  }
}