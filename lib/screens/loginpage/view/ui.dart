import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<Login> {

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
      return 'Please enter Password';
    }
    else if(value.length<6){
      return "Password must contain at least six characters";
    }
    else if (!regex.hasMatch(value)) {
      return 'Password must contain uppercase,lowercase letters and numbers.';
    }
      else
        return null;
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
                        image: AssetImage('assets/images/login_ui/bg.jpg'),
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
                validator: (val){
                  Pattern pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regex = new RegExp(pattern);
                  if (val.isEmpty) {
                    return 'Please enter Username';
                  } else {
                    if (!regex.hasMatch(val))
                      return 'Invalid Username';
                    else
                      return null;
                  }
                },
                onSaved: (val)=>_username=val,
                cursorColor: Colors.black,
                cursorRadius: Radius.circular(6.0),
                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.white54,
                    border: InputBorder.none,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black87,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(10.0),
                        child: Image.asset(
                                    'assets/images/login_ui/username.jpg',
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,),
                          )
                ),
            ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
            child: Text('Password', style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            )),
          ),
          TextFormField(
              controller: passwordController,
              validator: validatePassword ,
              obscureText: true,
              cursorColor: Colors.black,
              cursorRadius: Radius.circular(6.0),
              onSaved: (val)=>_password=val,
              decoration: InputDecoration(
                filled: true,
                  fillColor: Colors.white54,
                  border: InputBorder.none,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/login_ui/password.jpg',
                      width: 20,
                      height: 20,
                      fit: BoxFit.fill,),
                  )
              ),
            ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          ),
           MaterialButton(
                child: Text('Login', style: TextStyle(fontSize: 20),),
                textColor: Colors.white,
                color: Colors.lightBlue,
                height: 50.0,
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

