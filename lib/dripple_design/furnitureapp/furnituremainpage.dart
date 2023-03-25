import 'package:design_app/dripple_design/foodRecipes/food_screen_homepage.dart';
import 'package:design_app/dripple_design/furnitureapp/furniture_screen_1.dart';
import 'package:design_app/dripple_design/furnitureapp/furniture_screen_4.dart';
import 'package:design_app/dripple_design/furnitureapp/furniturescreen2.dart';
import 'package:design_app/dripple_design/singlescreendesigns/cakescatalog.dart';
import 'package:flutter/material.dart';
class FurnitureMainPage extends StatefulWidget {
  const FurnitureMainPage({Key? key}) : super(key: key);

  @override
  _FurnitureMainPageState createState() => _FurnitureMainPageState();
}

class _FurnitureMainPageState extends State<FurnitureMainPage> {
  int current_index = 0;
  final screens = [
    FurnitureScreen1(),
    CakesCatalogScreen(),
    FurnitureScreen4(),
    FurnitureScreen2()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[current_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: current_index,
        onTap: (index) => setState(() => current_index = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:  "home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_outlined),
              label: "time"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart)
              ,label: "cart"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "person"
          )
        ],
      ),
    );
  }
}
