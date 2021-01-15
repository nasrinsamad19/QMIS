import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
Future main() async{
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(side_menu());
}
class side_menu extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent.withOpacity(0.8),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(icon: Padding(padding: EdgeInsets.all(9.0),
                child: Image.asset('assets/images/side_menu/closeX3_shadow.png'),), onPressed: (){
                Navigator.pop(context);
              }),
              Container(padding: EdgeInsets.fromLTRB(10, 5, 10, 5),),
            ],
          ),
          body:Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                child:Container(
                  child:GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 100,
                    crossAxisSpacing: 0,
                    children: List.generate(choices.length, (index) {
                      return Center(
                        child: IconGridView(choice: choices[index]),
                      );
                    }
                    ),
                  ),
                  ),
                ),
              Container(
                padding: EdgeInsets.only(top: 670,left: 10,right: 10),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:Container(
                    height: 1.0,
                    width: 370.0,
                    color: Colors.white24,
                  ),),
              ),
            ],
          ),
            bottomNavigationBar: Container(
            child: BottomNavigationBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Container(child:IconButton(icon: Image.asset('assets/images/side_menu/qatar_museumx3.png',width: 180,height: 70,fit: BoxFit.fill,),),padding: EdgeInsets.only(bottom: 10),width: 180,height: 70,),
    title: Container(height: 0.0,),
    ),
    BottomNavigationBarItem(
      icon:Container(child:IconButton(icon: Image.asset('assets/images/side_menu/settingsX3.png',height: 25,width: 25,), onPressed: null,),padding: EdgeInsets.only(right: 20,bottom: 0),alignment: Alignment.bottomRight),
    title: Container(child:Text("Settings",style: TextStyle(color: Colors.white,fontSize: 12 )),padding: EdgeInsets.only(right: 10),alignment: Alignment.bottomRight),
    ),
    ],
    onTap:null ,
    ),
        )
        ),
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
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          IconButton(icon: Image.asset(choice.image), color: Colors.white,iconSize: 45,),
          Text(choice.title,style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.center),
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
