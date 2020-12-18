import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _State();

}
class _State extends State<HomeView>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(icon: Padding(padding: EdgeInsets.all(7.0),
            child: Image.asset('assets/images/home_ui/calendar.png'),), onPressed: null),
            Container(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),),
            IconButton(icon: Padding(padding: EdgeInsets.all(7.0),
              child: Image.asset('assets/images/home_ui/notification.png'),), onPressed: null),
            Container(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),),
            IconButton(icon: Padding(padding: EdgeInsets.all(7.0),
              child: Image.asset('assets/images/home_ui/profile.png'),), onPressed: null),
            Container(padding: EdgeInsets.fromLTRB(15, 5, 15, 5),),
            IconButton(icon: Padding(padding: EdgeInsets.all(7.0),
              child: Image.asset('assets/images/home_ui/side_menu_icon.png'),), onPressed: null),
            Container(padding: EdgeInsets.fromLTRB(10, 5, 10, 5),),
          ],
        ),
        body: ListView(
          children: [
            Image(image: AssetImage('assets/images/home_ui/exhibitions.jpg')),
            Image(image: AssetImage('assets/images/home_ui/museum.jpg')),
            Image(image: AssetImage('assets/images/home_ui/qatar.jpg')),
                      ],

        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 1,
          backgroundColor: Colors.black54,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.all(1.0),
                child: Image.asset('assets/images/home_ui/restaurant.png'),), onPressed: null),
              title: Text("Dining",style: TextStyle(color: Colors.white,fontSize: 13),),
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.all(1.0),
                child: Image.asset('assets/images/home_ui/gift_shop.png'),), onPressed: null),
              title: Text("Gift Shop",style: TextStyle(color: Colors.white,fontSize: 13)),
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.all(1.0),
                child: Image.asset('assets/images/home_ui/culture_pass.png'),), onPressed: null),
              title: Text("Culture Pass",style: TextStyle(color: Colors.white,fontSize: 13)),
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.all(1.0),
                child: Image.asset('assets/images/home_ui/more.png'),), onPressed: null),
              title: Text("More",style: TextStyle(color: Colors.white,fontSize: 13)),
            ),
          ],
          onTap:null ,),
      ),
    );
  }
}