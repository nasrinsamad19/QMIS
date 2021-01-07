

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class side_menu extends StatelessWidget{
  @override


  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent.withOpacity(0.8),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(icon: Padding(padding: EdgeInsets.all(9.0),
                child: Image.asset('assets/images/side_menu/closeX3_shadow.png'),), onPressed: null),
              Container(padding: EdgeInsets.fromLTRB(10, 5, 10, 5),),
            ],
          ),
          body:BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
            child:Container(
              child:  GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 140,
                  crossAxisSpacing: 0,
                  children: List.generate(choices.length, (index) {
                    return Center(
                      child: IconGridView(choice: choices[index]),
                    );

                  }
                  )
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: IconButton(icon :Image.asset('assets/images/side_menu/q.jpg'), onPressed: null),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: IconButton(icon: Padding(padding: EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/side_menu/settingsX3.png'),), onPressed: null),
                title: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 13)),
              ),

            ],
            onTap:null ,),
        )
      ],
    );

  }
}

class Choice {
  const Choice({this.title,this.image});
  final String title;
  final String image;
}
  class IconGridView extends StatelessWidget{
  Choice choice;
  IconGridView({Key key,this.choice}):super(key:key);

  @override
  Widget build(BuildContext context) {
  return Card(
    color: Colors.transparent,
    elevation: 0,
    margin: EdgeInsets.symmetric(vertical: 40,horizontal: 40,),
  child: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children:<Widget> [
  Expanded(child: IconButton(icon: Image.asset(choice.image,height: 80,width: 80,), color: Colors.white,),
  ),
  Text(choice.title,style: TextStyle(color: Colors.white,fontSize: 9), textAlign: TextAlign.center),
  ],
  ),
  ),
  );
  }
  }
const List<Choice> choices = const[
  const Choice(title: 'Exhibitions',image: 'assets/images/side_menu/exhibitionX3.png'),
  const Choice(title: 'Events',image: 'assets/images/side_menu/eventsX3.png'),
  const Choice(title: 'Education',image: 'assets/images/side_menu/educationX3.png'),
  const Choice(title: 'Tour Guide',image: 'assets/images/side_menu/tour_guideX3.png'),
  const Choice(title: 'Heritage Sites',image: 'assets/images/side_menu/heritageX3.png'),
  const Choice(title: 'Public Arts',image: 'assets/images/side_menu/public_artsX3.png'),
  const Choice(title: 'Dining',image: 'assets/images/home_ui/restaurant.png'),
  const Choice(title: 'Gift Shop',image: 'assets/images/home_ui/gift_shop.png'),
  const Choice(title: 'Parks',image: 'assets/images/side_menu/parkX3.png'),
];