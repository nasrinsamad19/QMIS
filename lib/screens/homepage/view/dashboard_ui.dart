
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<dashboard>{
  @override
  bool _list = true;

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
                  height: 30,
                  color: Colors.transparent,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.73,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(20, 7, 7,20),
                      //padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,

                      ),
                      child: Container(
                        padding: EdgeInsets.all(1),
                        child:Text.rich(
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
                                        fontWeight: FontWeight.bold,
                                      )
                                  )
                                ]
                            )
                        ),
                      ),

                    ),

                    Container(
                      padding: EdgeInsets.all(7),
                      color: Colors.white,
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.2,
                      child: Column(
                        children: [
                          Text('Last Update',textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 12
                          ),),
                          Container(
                            height: 2.0,
                          ),
                          Text('24/12/2020',textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),


                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                     // width: MediaQuery.of(context).size.width*0.09,
                      padding: EdgeInsets.only(right: 20,top: 0,left: 19),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child:  Container(
                              padding: EdgeInsets.all(15),
                              child: RotatedBox(quarterTurns: -1,
                                child: Text('YEARLY',style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                  textAlign: TextAlign.center,
                                ),),
                              color: _list ? Colors.grey : Colors.lightBlue,
                              width: MediaQuery.of(context).size.width*0.06,
                              height: MediaQuery.of(context).size.height*0.34,
                            ),
                            onTap: (){
                              setState(() {
                                _list= !_list;
                              });
                            },
                          ),
                          Container(
                            height: 10,
                          ),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: RotatedBox(quarterTurns: -1,
                                child: Text('MONTHLY',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                                  textAlign: TextAlign.center,
                                ),),
                              color: _list ? Colors.lightBlue : Colors.grey,
                              width: MediaQuery.of(context).size.width*0.06,
                              height: MediaQuery.of(context).size.height*0.33,
                            ),
                            onTap: (){
                              setState(() {
                                _list= !_list;
                              });
                            },

                          ),

                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          color: Colors.grey,
                          padding: EdgeInsets.only(right: 0,top: 5,left: 10,bottom: 10),
                          width: MediaQuery.of(context).size.width*0.46,
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
                                padding: EdgeInsets.only(left: 150),
                              ),
                            ],
                          ),
                        ),
                        Container(
                         // alignment: Alignment.topLeft,
                          color: Colors.white,
                          padding: EdgeInsets.only(right: 0,top: 10,left: 0),
                          width: MediaQuery.of(context).size.width*0.46,
                          height: MediaQuery.of(context).size.height*0.6,
                          child:SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 0,top: 0,left: 10),

                                  child: Text('Overall Occupancy',style: TextStyle(
                                    fontSize: 10,
                                  ),textAlign: TextAlign.left,),
                                  alignment: Alignment.topLeft,
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(right: 0,top: 0,left: 10),
                                  child: Text('99.06%',style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding:EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child:Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
                                      child:Container(
                                        height: 1.0,
                                        width: 490.0,
                                        color: Colors.grey,
                                      ),),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 0,top: 10,left: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text('Income',style: TextStyle(
                                      fontSize: 10
                                  ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 0,top: 0,left: 10),
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
                                        width: 150,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 0,bottom: 30),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/images/home2_ui/iconIncome.jpg',),)
                                        ),
                                        width: 60,
                                        height: 50,
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
                                  alignment: Alignment.topLeft,
                                  padding:EdgeInsets.fromLTRB(10, 8, 3, 0),
                                  child: Text('Expenses',style: TextStyle(
                                      fontSize: 10
                                  ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 0,top: 0,left: 10),
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
                                        width: 107,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 0,bottom: 30),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/images/home2_ui/iconIncome.jpg',),)
                                        ),
                                        width: 60,
                                        height: 50,
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
                                  alignment: Alignment.topLeft,
                                  padding:EdgeInsets.fromLTRB(10, 8, 3, 0),
                                  child: Text('Expenses',style: TextStyle(
                                      fontSize: 10
                                  ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 0,top: 0,left: 10),
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
                                        width: 107,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 0,bottom: 30),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/images/home2_ui/iconIncome.jpg',),)
                                        ),
                                        width: 60,
                                        height: 50,
                                      ),
                                    ],
                                  ),

                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.028,
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 3,bottom: 3),
                          width: MediaQuery.of(context).size.width*0.17,
                          height: MediaQuery.of(context).size.height*0.38,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/home2_ui/gradientGreenBg.jpg',),)
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Image(image: AssetImage('assets/images/home2_ui/iconResidential.jpg',),fit: BoxFit.fill,height: 50,),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Text('Residential',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(1, 33, 3, 0),
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
                                    Container(
                                      width: 3,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 3),
                                      child: RotatedBox(quarterTurns: -1,
                                        child: Text('QAR',style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                          textAlign: TextAlign.center,
                                        ),),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ) ,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(right: 10,left: 3,bottom: 3),
                          width: MediaQuery.of(context).size.width*0.17,
                          height: MediaQuery.of(context).size.height*0.368,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/home2_ui/gradientRedBg.jpg',),)
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Image(image: AssetImage('assets/images/home2_ui/iconCommercial.jpg',),fit: BoxFit.fill,height: 50,),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Text('Commercial',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(1, 28, 3, 0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Text('8699.k\nIncome',style: TextStyle(
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
                                      child: Text('511.5k\nExpenses',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    Container(
                                      width: 3,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 3),
                                      child: RotatedBox(quarterTurns: -1,
                                        child: Text('QAR',style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                          textAlign: TextAlign.center,
                                        ),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ) ,
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.025,
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(right: 10,left: 3,),
                          width: MediaQuery.of(context).size.width*0.17,
                          height: MediaQuery.of(context).size.height*0.38,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/home2_ui/gradientBlueBg.jpg',),)
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Image(image: AssetImage('assets/images/home2_ui/iconIndustrial.jpg',),fit: BoxFit.fill,height: 50,),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Text('Industrial',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(1, 33, 3, 0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Text('259.0k\nIncome',style: TextStyle(
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
                                      child: Text('800.0\nExpenses',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                      )),
                                    ),
                                    Container(
                                      width: 3,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 3),
                                      child: RotatedBox(quarterTurns: -1,
                                        child: Text('QAR',style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                          textAlign: TextAlign.center,
                                        ),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ) ,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(right: 10,left: 3,),
                          width: MediaQuery.of(context).size.width*0.17,
                          height: MediaQuery.of(context).size.height*0.368,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/home2_ui/gradientOrangeBg.jpg',),)
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Image(image: AssetImage('assets/images/home2_ui/iconResidential_abraj.jpg',),fit: BoxFit.fill,height: 50,),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding:EdgeInsets.fromLTRB(0, 10, 3, 0),
                                child: Text('Abraj Bay',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                padding:EdgeInsets.fromLTRB(1, 30, 3, 0),
                                child:  Row(
                                  children: [
                                    Container(
                                      child: Text('2013.6k\nIncome',style: TextStyle(
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
                                      child: Text('1162.7k\nExpenses',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      )),
                                    ),
                                    Container(
                                      width: 3,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 3),
                                      child: RotatedBox(quarterTurns: -1,
                                        child: Text('QAR',style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                          textAlign: TextAlign.center,
                                        ),),
                                    ),


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