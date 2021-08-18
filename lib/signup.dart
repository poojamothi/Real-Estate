import 'package:flutter/material.dart';
import 'package:hfh1/main.dart';
import 'package:hfh1/loginpage.dart';
class SignupPage extends StatefulWidget {


  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                // Container(
                //   padding:EdgeInsets.fromLTRB(15.0, 115, 0.0, 15.0),



                  // child:Text(
                  //   'SWEET',
                  //   style: TextStyle(
                  //       fontSize: 60.0, fontWeight: FontWeight.bold),
                  // ),),

                Container(
                  padding:EdgeInsets.fromLTRB(60.0, 40, 0.0, 0.0),
                  child:Text(
                    'SIGNUP',
                    style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(265, 0, 0.0, 70.0),

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
                      labelText: 'USERNAME',
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
                      labelText: 'PLACE',
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
                // Container(
                //   alignment: Alignment(1.0,0.0),
                //   padding:EdgeInsets.only(top: 15.2,left: 20.0),
                //   child: InkWell(
                //     child: Text('Forget Password',
                //         style:TextStyle(
                //             color: Colors.blue,
                //             fontWeight: FontWeight.bold,
                //             fontFamily: 'Montserrat',
                //             decoration: TextDecoration.underline
                //         )
                //     ),
                //   ),
                // ),
                // SizedBox(height: 40.0,),
                Container(
                    height: 40.0,
                    child:Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.blueAccent,
                        color: Colors.blue,
                        elevation: 7.0,
                        child:GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Center(
                              child:Text(
                                'SUBMIT',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                ),
                              )
                          ),
                        )
                    )
                ),SizedBox(height: 20.0),
                Container(
                    height: 40.0,
                    child:Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.grey,
                        color: Colors.blue,
                        elevation: 7.0,
                        child:GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();

                          },
                          child: Center(
                              child:Text(
                                'GO BACK',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                          ),
                        ),
                    ),
                )
              ],
            ),
          ),],
            ),
          );









  }
}
