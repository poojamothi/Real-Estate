import 'package:flutter/material.dart';
import 'package:hfh1/screens/home/components/categories.dart';
import 'package:hfh1/screens/home/components/custom_app_bar.dart';
import 'package:hfh1/screens/home/components/houses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          Categories(),
          Houses()


        ],
      ),
    );
  }
}


