import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WeatherMainPage extends StatefulWidget {
  const WeatherMainPage({Key? key}) : super(key: key);

  @override
  _WeatherMainPageState createState() => _WeatherMainPageState();
}

class _WeatherMainPageState extends State<WeatherMainPage> {
  Color backgroundColor = Colors.red;
  int degrees = 45;
  String smiley = "😥";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text("Weather App",style: AppBarTheme.of(context).titleTextStyle,),
          centerTitle: true,
        ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(smiley,style: TextStyle(fontSize: 100),),
            const SizedBox(height: 24,),
            Text("$degrees °C",style: TextStyle(fontSize: 80),),
            TextButton(
              child: Text(
                "☀️Change Weather",
                style: TextStyle(fontSize: 24,color: Colors.black),
              ),
              onPressed: changeWeather,
            )

          ],
        ),
      ),
    );
  }
  void changeWeather(){
    final counter = Random().nextInt(3);

    setState(() {
      switch(counter) {
        case 0:
          smiley="😰";
          degrees=nextNumber(min: -20, max: 0);
          backgroundColor = Colors.blueAccent.shade700;

          break;

        case 1 :
          smiley="😥";
          degrees=nextNumber(min: 30, max: 45);
          backgroundColor = Colors.red;

          break;
        case 2 :
          smiley="🌥";
          degrees=nextNumber(min: 5, max: 20);
          backgroundColor = Colors.pinkAccent;




      }


    });

  }
  int nextNumber({required int min,required int max}) {
    return min + Random().nextInt(max-min +1);
  }

}
