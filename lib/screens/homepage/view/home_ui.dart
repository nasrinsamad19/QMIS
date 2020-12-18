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
            Container(
              constraints: BoxConstraints.expand(height: 200.0),
              padding: EdgeInsets.only(left: 16.0,bottom: 8.0,right: 16.0),
              decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color: Colors.black,
                        blurRadius: 4)
                  ],
                image: DecorationImage(
                  image:  AssetImage('assets/images/home_ui/exhibitions.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    child: Text('EXHIBITIONS', style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 200.0),
              padding: EdgeInsets.only(left: 16.0,bottom: 8.0,right: 16.0),
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(color: Colors.black,
                  blurRadius: 4)
                ],
                  image: DecorationImage(
                      image:  AssetImage('assets/images/home_ui/museum.jpg'),
                      fit: BoxFit.cover
                  )
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    child: Text('NATIONAL MUSEUM OF QATAR', style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  Positioned(
                      right: 0.0,
                    bottom: 0.0,
                    child: IconButton(icon: Padding(padding: EdgeInsets.all(1.0),
                    child: Image.asset('assets/images/home_ui/audio.png'),), onPressed: null),)
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 200.0),
              padding: EdgeInsets.only(left: 16.0,bottom: 8.0,right: 16.0),
              decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color: Colors.black,
                        blurRadius: 4)
                  ],
                  image: DecorationImage(
                      image:  AssetImage('assets/images/home_ui/islamicart.jpg'),
                      fit: BoxFit.cover
                  )
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    child: Text('MUSEUM OF ISLAMIC ART', style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: IconButton(icon: Padding(padding: EdgeInsets.all(1.0),
                    child: Image.asset('assets/images/home_ui/audio.png'),), onPressed: null),)
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 200.0),
              padding: EdgeInsets.only(left: 16.0,bottom: 8.0,right: 16.0),
              decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color: Colors.black,
                        blurRadius: 4)
                  ],
                  image: DecorationImage(
                      image:  AssetImage('assets/images/home_ui/settlements.jpg'),
                      fit: BoxFit.cover
                  )
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    child: Text('SETTLEMENTS', style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: IconButton(icon: Padding(padding: EdgeInsets.all(1.0),
                      child: Image.asset('assets/images/home_ui/audio.png'),), onPressed: null),)
                ],
              ),
            ),
                      ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[800],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(icon: Padding(padding: EdgeInsets.only(left: 1.0,bottom: 1.0,right: 1.0),
                child: Image.asset('assets/images/home_ui/restaurant.png'),), onPressed: null),
              title: Text("Dining",style: TextStyle(color: Colors.white,fontSize: 11),),
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