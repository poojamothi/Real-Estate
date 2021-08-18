import 'package:flutter/material.dart';
import 'package:hfh1/screens/home/home_screen.dart';
import 'loginpage.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:<String,WidgetBuilder>{
        '/loginpage':(BuildContext context)=> new LoginPage(),

          '/signup':(BuildContext context)=> new SignupPage(),
          '/home_screen':(BuildContext context)=> new HomeScreen(),


        },

      home: new MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(


         body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage('lib/assets/wel.jpg'),
            fit: BoxFit.cover
          ),),
           child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
               children:< Widget> [
                 Text(
             'WELCOME',
             style: TextStyle(
               color: Colors.blueAccent,
               fontWeight: FontWeight.bold,
               fontFamily: 'Montserrat',
               fontSize: 20.0,
             ),

            ),SizedBox(height: 20.0),
               Container(
               height: 40.0,
                  child:Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.grey,
                    color: Colors.blue,
                    elevation: 7.0,
                    child:GestureDetector(
                      onTap: (){
                       Navigator.of(context).pushNamed('/loginpage');

                      },
                       child: Center(
                         child:Text(
                          'skip',
                         style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Montserrat'
                    ),
                  ),
                ),
              ),
            ),),

            ],
           ),



         )
    );
  }
}
