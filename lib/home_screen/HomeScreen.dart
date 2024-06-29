
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dices = ["assets/images/d1.png"
    ,"assets/images/d2.png"
    ,"assets/images/d3.png"
    ,"assets/images/d4.png"
    ,"assets/images/d5.png"
    ,"assets/images/d6.png"];
  int? randomNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
              randomNumber = Random().nextInt(6) + 1 ;
            });
          },
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(
              fit: BoxFit.contain,
              randomNumber == null ? "assets/images/button.png":
                  "assets/images/d$randomNumber.png", ///Simple method
             // dices[randomNumber!], // List Method
            ),
          ),
        )
      ),
    );
  }


}
