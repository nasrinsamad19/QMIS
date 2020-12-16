import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State  extends State<Login> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _username;
  String _password;

  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Passwords must contain at least six characters, including uppercase, lowercase letters and numbers.';
      else
        return null;
    }
  }

  String validateUsername(String value) {
    Pattern pattern =
        r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
    RegExp regex = new RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter Username';
    } else {
      if (!regex.hasMatch(value))
        return 'Invalid Username';
      else
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return MaterialApp(
        home: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 20,
              title: Text("Login", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              leading: IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.black,),
                  onPressed: () {}
              ),
            ),
            body: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg.jpg'),
                        fit: BoxFit.cover
                    )
                ),
                child: formSetup(context),
            )
        )

    );
  }
  Widget formSetup(BuildContext context){
    return new Form(
      key: _formKey,
      child: new ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
            child: Text('User Name', style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            )),
          ),
           TextFormField(
                controller: nameController,
                validator: validateUsername,
                onSaved: (val)=>_username=val,
             cursorColor: Colors.black,
             cursorRadius: Radius.circular(6.0),
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.white54,
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'AvenirLight'
                    ),
                    suffixIcon: CircleAvatar(child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/images/username.jpg')
                            )))
                    )
                ),
            ),
          Text('Password', style: TextStyle(
              color: Colors.grey,
              fontSize: 20,

            ),),

           TextFormField(
              controller: passwordController,
              validator: validatePassword ,
              obscureText: true,
              cursorColor: Colors.black,
              //cursorWidth: 10,
              cursorRadius: Radius.circular(6.0),
              onSaved: (val)=>_password=val,
              decoration: InputDecoration(
                filled: true,
                  fillColor: Colors.white54,
                  border: InputBorder.none,
                  suffixIcon: CircleAvatar(child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/password.jpg')
                          )))
                  )
              ),
            ),

          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),
           MaterialButton(
                child: Text('Login', style: TextStyle(fontSize: 20),),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    _scaffoldKey.currentState.showSnackBar(
                        new SnackBar(
                          content: new Text(
                              "Your email: $_username and Password: $_password"),
                        ));
                  }
                },
              )

        ],
      )
    );
  }
}

