import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class culture_pass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              icon:Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.of(context).pop();
              }),
          title: Text('CULTURE PASS'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Text('Qatar Museums Culture Pass gives you discounts, free access and exclusive opportunities  across many cultural venues in Qatar and discounts at a wide range of ever expanding list of partners.Best of all, as a member you are invited to join us in a wide range of exciting creative activities.',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                  fontFamily: 'DINpNextLTArabic'
              ),),
            ),
            Container(
              padding:EdgeInsets.fromLTRB(15, 15, 15, 0),
              alignment: Alignment.topLeft,
              child: Text('Get access by activating your membership today.',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                  fontFamily: 'DINpNextLTArabic'

              ),textAlign: TextAlign.left,),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
              child: Text('BENEFITS',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                  fontFamily: 'DINpNextLTArabic'

              ),textAlign: TextAlign.left,),
            ),
            Container(
              padding:EdgeInsets.fromLTRB(15, 0, 15, 0),
              child:Align(
                alignment: Alignment.bottomCenter,
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child:Container(
                    height: 3.0,
                    width: 30.0,
                    color: Colors.black,
                  ),),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
              child: Text('-15% Discount at QM Cafes across all venues  \n\n- 10% Discount on items in all QM Gift Shops (without minimum purchase  \n\n- 10% Discount at Idam Restaurant at lunch time  \n\n- Receive our monthly newsletter to stay up to date on QM and partner offerings  \n\n- Get premier access to members only talks &workkshops  \n\n- Get exclusive invitation to QM open house access to our world class call center 8AM to 8PM daily',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'DINpNextLTArabic'
              ),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
              child: GestureDetector(
                child: Text('Not A Member Yet?',style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 15,
                  fontFamily: 'DINpNextLTArabic',
                  fontWeight: FontWeight.w600,
                ),),
                onTap: null,
              )
            ),
            Container(
              width: 380,
              child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.black)
              ),
                onPressed: (){},
                padding: EdgeInsets.all(15),
                color: Colors.black,
                textColor: Colors.white,
                child: Text('BECOME A MEMBER',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                    fontFamily: 'DINpNextLTArabic'
                ),),
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: GestureDetector(
                  child: Text('Already A Member?',style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                      fontFamily: 'DINpNextLTArabic'
                  ),),
                  onTap: null,
                )
            ),
            Container(
              width: 380,
              child: MaterialButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.black)
                ),
                onPressed: (){},
                padding: EdgeInsets.all(15),
                textColor: Colors.white,
                child: Text('LOG IN',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                    fontFamily: 'DINpNextLTArabic'
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}