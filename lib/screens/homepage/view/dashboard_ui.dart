
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.grey,
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login_ui/bg.jpg'),
                  fit: BoxFit.cover
              )
          ),
          child: SingleChildScrollView(
            child:Column(
              children: [
                Container(
                  height: 20,
                  color: Colors.transparent,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.7,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(20, 0, 0,20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,

                      ),
                      child: Text.rich(
                          TextSpan(
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              children:[
                                WidgetSpan(child: Icon(Icons.more_vert)),
                                TextSpan(
                                    text: '   PERFORMANCE INDICATORS DASHBOARD',
                                    style: TextStyle(

                                        fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    )
                                )
                              ]
                          )
                      ),
                    ),
                    Container(
                      width: 20,
                    ),
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.2,
                      child: Text('Last Update\n\b24/12/2020',textAlign: TextAlign.center,),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                     // width: MediaQuery.of(context).size.width*0.09,
                      padding: EdgeInsets.only(right: 20,top: 20,left: 19),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            child: RotatedBox(quarterTurns: -1,
                              child: Text('YEARLY',style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white

                              ),
                                textAlign: TextAlign.center,
                              ),),
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width*0.06,
                            height: MediaQuery.of(context).size.height*0.34,
                          ),
                          Container(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: RotatedBox(quarterTurns: -1,
                              child: Text('MONTHLY',style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                                textAlign: TextAlign.center,
                              ),),
                            color: Colors.lightBlue,
                            width: MediaQuery.of(context).size.width*0.06,
                            height: MediaQuery.of(context).size.height*0.3,
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          color: Colors.grey,
                          padding: EdgeInsets.only(right: 0,top: 5,left: 10,bottom: 10),
                          width: MediaQuery.of(context).size.width*0.4,
                          height: MediaQuery.of(context).size.height*0.10,
                          child: Row(
                            children: [
                              Container(
                                child:  Image(image: AssetImage('assets/images/home2_ui/iconGlobalIndicator.jpg',),fit: BoxFit.fill,),
                                padding: EdgeInsets.only(left: 10),
                              ),
                              Container(
                                child: Text('Global Indicators',textAlign: TextAlign.center,),
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Container(
                                child: Text('(Nov-20)'),
                                padding: EdgeInsets.only(left: 85),
                              ),
                            ],
                          ),
                        ),
                        Container(
                         // alignment: Alignment.topLeft,
                          color: Colors.white,
                          padding: EdgeInsets.only(right: 10,top: 10,left: 19),
                          width: MediaQuery.of(context).size.width*0.4,
                          height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              Text('Overall Occupancy',style: TextStyle(
                                fontSize: 10,
                              ),textAlign: TextAlign.left,),
                              Text('99.06%',style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(3, 0, 3, 0),
                                child:Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
                                    child:Container(
                                      height: 1.0,
                                      width: 460.0,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(3, 10, 3, 0),
                                child: Text('Income',style: TextStyle(
                                  fontSize: 10
                                ),),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('10,920,608 QAR',style: TextStyle(
                                        fontSize: 20,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Container(
                                      color: Colors.red,
                                      width: 60,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 10),
                                      width: 60,
                                      child: Image(image: AssetImage('assets/images/home2_ui/iconIncome.jpg',),fit: BoxFit.fill,height: 50,width: 25,),
                                    ),
                                  ],
                                ),

                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(3, 15, 3, 10),
                                child:Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
                                    child:Container(
                                      height: 1.0,
                                      width: 460.0,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(3, 10, 3, 0),
                                child: Text('Expenses',style: TextStyle(
                                    fontSize: 10
                                ),),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('1,191,590 QAR (19%)',style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Container(
                                      color: Colors.red,
                                      width: 20,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 10),
                                        width: 60,
                                        child: Image(image: AssetImage('assets/images/home2_ui/iconIncome.jpg',),fit: BoxFit.fill,height: 50,width: 25,)
                                    ),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.02,
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.green,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(right: 10,left: 3,bottom: 3),
                          width: MediaQuery.of(context).size.width*0.19,
                          height: MediaQuery.of(context).size.height*0.37,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(3, 10, 3, 0),
                                child: Image(image: AssetImage('assets/images/home2_ui/iconResidential.jpg',),fit: BoxFit.fill,height: 50,),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Text('Residential',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(1, 20, 3, 0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Text('3263.5k\nIncome',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding:EdgeInsets.fromLTRB(3, 0, 3, 0),
                                      child:Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5.0),
                                          child:Container(
                                            height: 26.0,
                                            width: 1.0,
                                            color: Colors.grey,
                                          ),),
                                      ),
                                    ),
                                    Container(
                                      child: Text('1077.5k\nExpenses',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    RotatedBox(quarterTurns: -1,
                                      child: Text('QAR',style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Colors.white,


                                      ),
                                        textAlign: TextAlign.center,
                                      ),),



                                  ],

                                ),
                              )


                            ],
                          ) ,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.01,
                          height: MediaQuery.of(context).size.height*0.04,
                        ),
                        Container(
                          color: Colors.green,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(right: 10,left: 3,bottom: 3),
                          width: MediaQuery.of(context).size.width*0.14,
                          height: MediaQuery.of(context).size.height*0.29,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(3, 10, 3, 0),
                                child: Icon(Icons.home,color: Colors.white,),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Text('Residential',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(1, 20, 3, 0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Text('3263.5k\nIncome',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding:EdgeInsets.fromLTRB(3, 0, 3, 0),
                                      child:Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5.0),
                                          child:Container(
                                            height: 26.0,
                                            width: 1.0,
                                            color: Colors.grey,
                                          ),),
                                      ),
                                    ),
                                    Container(
                                      child: Text('1077.5k\nExpenses',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    RotatedBox(quarterTurns: -1,
                                      child: Text('QAR',style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Colors.white,


                                      ),
                                        textAlign: TextAlign.center,
                                      ),),



                                  ],

                                ),
                              )


                            ],
                          ) ,
                        ),
                      ],
                    ),


                    Container(
                      width: MediaQuery.of(context).size.width*0.02,
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.green,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(right: 10,left: 3,bottom: 3),
                          width: MediaQuery.of(context).size.width*0.14,
                          height: MediaQuery.of(context).size.height*0.29,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(3, 10, 3, 0),
                                child: Icon(Icons.home,color: Colors.white,),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Text('Residential',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(1, 20, 3, 0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Text('3263.5k\nIncome',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding:EdgeInsets.fromLTRB(3, 0, 3, 0),
                                      child:Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5.0),
                                          child:Container(
                                            height: 26.0,
                                            width: 1.0,
                                            color: Colors.grey,
                                          ),),
                                      ),
                                    ),
                                    Container(
                                      child: Text('1077.5k\nExpenses',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    RotatedBox(quarterTurns: -1,
                                      child: Text('QAR',style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Colors.white,


                                      ),
                                        textAlign: TextAlign.center,
                                      ),),



                                  ],

                                ),
                              )


                            ],
                          ) ,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.01,
                          height: MediaQuery.of(context).size.height*0.04,
                        ),
                        Container(
                          color: Colors.green,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(right: 10,left: 3,bottom: 3),
                          width: MediaQuery.of(context).size.width*0.14,
                          height: MediaQuery.of(context).size.height*0.29,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(3, 10, 3, 0),
                                child: Icon(Icons.home,color: Colors.white,),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Text('Residential',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(1, 20, 3, 0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Text('3263.5k\nIncome',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding:EdgeInsets.fromLTRB(3, 0, 3, 0),
                                      child:Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(padding: EdgeInsets.symmetric(vertical: 5.0),
                                          child:Container(
                                            height: 26.0,
                                            width: 1.0,
                                            color: Colors.grey,
                                          ),),
                                      ),
                                    ),
                                    Container(
                                      child: Text('1077.5k\nExpenses',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    RotatedBox(quarterTurns: -1,
                                      child: Text('QAR',style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Colors.white,


                                      ),
                                        textAlign: TextAlign.center,
                                      ),),



                                  ],

                                ),
                              )


                            ],
                          ) ,
                        ),
                      ],
                    ),


                  ],
                ),



                    ],
                  ),
                ),
            ),
          ),

    );
  }
}