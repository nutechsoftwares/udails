import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:udails/controllers/main_controller.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends StateMVC<Splash> {
  MainController _con;
  _SplashState() : super(MainController()) {
    _con = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Center(
        child: Image.asset("assets/images/udials.png"),
      ),
    );
  }
}
