import 'package:flutter/material.dart';
import 'package:hfh1/main.dart';
import 'package:hfh1/signup.dart';


class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {






    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            child:Stack(
              children: <Widget>[
                Container(
                  padding:EdgeInsets.fromLTRB(15.0, 115, 0.0, 15.0),



                  child:Text(
                    'SWEET',
                    style: TextStyle(
                        fontSize: 60.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(100.0, 175, 0.0, 0.0),
                  child:Text(
                    'HOME',
                    style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(270, 140, 0.0, 0.0),

                  child:Text(
                    '.',
                    style: TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
            child:Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:BorderSide(color: Colors.blueAccent)
                      )
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:BorderSide(color: Colors.blueAccent)
                      )
                  ),
                  obscureText: true,
                ),SizedBox(height: 20.0),
                Container(
                  alignment: Alignment(1.0,0.0),
                  padding:EdgeInsets.only(top: 15.2,left: 20.0),
                  child: InkWell(
                    child: Text('Forget Password',
                        style:TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline
                        )
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                    height: 40.0,
                    child:Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.blueAccent,
                        color: Colors.blue,
                        elevation: 7.0,
                        child:GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed('/home_screen');

                          },
                          child: Center(
                              child:Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                ),
                              )
                          ),
                        )
                    )
                )],
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Dont have an account?',
                style: TextStyle(
                    fontFamily: 'Montserrat'
                ),
              ),
              SizedBox(width: 5.0),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/signup');
                },
                child: Text('SignUp',
                  style:TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline

                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}





