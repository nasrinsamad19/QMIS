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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blackadd,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.all(7.0),
                child: Image.asset('assets/images/home_ui/restaurant.png'),), onPressed: null),
              title: Text("Dining"),
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.all(7.0),
                child: Image.asset('assets/images/home_ui/gift_shop.png'),), onPressed: null),
              title: Text("Gift Shop"),
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.all(7.0),
                child: Image.asset('assets/images/home_ui/culture_pass.png'),), onPressed: null),
              title: Text("Culture Pass"),
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.all(7.0),
                child: Image.asset('assets/images/home_ui/more.png'),), onPressed: null),
              title: Text("More"),
            ),
          ],
          onTap:null ,),
      ),
    );
  }
}