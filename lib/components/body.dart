import 'package:design_app/components/intrinsic_guide.dart';
import 'package:design_app/components/mask_text.dart';
import 'package:design_app/components/weather_main_page.dart';
import 'package:design_app/constants.dart';
import 'package:design_app/dripple_design/foodRecipes/food_screen_homepage.dart';
import 'package:design_app/dripple_design/furnitureapp/furnituremainpage.dart';
import 'package:design_app/dripple_design/singlescreendesigns/burger_truck.dart';
import 'package:design_app/dripple_design/singlescreendesigns/cakescatalog.dart';
import 'package:design_app/dripple_design/singlescreendesigns/dripple_card_design.dart';
import 'package:design_app/dripple_design/singlescreendesigns/dripple_design_cardapp.dart';
import 'package:design_app/dripple_design/foodRecipes/foodrecipepage.dart';
import 'package:design_app/dripple_design/minimaltraveldairy/dripple_travel_dairy.dart';
import 'package:design_app/hidden_drawer/hidden_drawer_mainpage.dart';
import 'package:design_app/onboardingpages/onboardingscreen.dart';
import 'package:design_app/profile/profile_mainpage.dart';
import 'package:design_app/profile/profile_page_with_functionality/profile_main_page.dart';
import 'package:design_app/profile/settings_screen/settings_screen_page.dart';
import 'package:design_app/tinder/tinder_mainpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mask_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      color: const Color(0xFF181727),
      child: ListView(
        children: [
          Wrap(
            direction: Axis.horizontal,
            children: [
              Text(
                "Input your Credentials",
                style: headingStyle,
              ),
              const SignUpForm(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool("showHome", true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnBoardingScreen()),
                    );
                  },
                  child: const Text("On boarding page"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntrinsicHeigthh()),
                      );
                    },
                    child: const Text("INTRINSIC HEIGHT")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MaskImageScreen()),
                    );
                  },
                  child: const Text("Mask The Image"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MaskText()),
                      );
                    },
                    child: const Text("Mask The Text")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TinderMainPage()),
                    );
                  },
                  child: const Text("Tinder App"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileMainPage()),
                      );
                    },
                    child: const Text("Profile Page")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreenPage()),
                    );
                  },
                  child: const Text("Settings Screen Page"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProfileMainScreenPage()),
                      );
                    },
                    child: const Text("Profile Page \n With Functionality")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WeatherMainPage()),
                    );
                  },
                  child: const Text("Weather App"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HiddenDrawerMainPage()),
                      );
                    },
                    child: const Text("Hidden Drawer")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DrippleDesignChatPage()),
                    );
                  },
                  child: const Text("Dripple Design"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DrippleBurgerTruck()),
                      );
                    },
                    child: const Text("Burger Truck")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DrippleMinimalTravelDesign()),
                    );
                  },
                  child: const Text("Dripple Mimnimal Travel Design"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FoodScreenHomePage()),
                      );
                    },
                    child: const Text("Food Recipe")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CakesCatalogScreen()),
                      );
                    },
                    child: const Text("Cakes Catlog")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FurnitureMainPage()),
                      );
                    },
                    child: const Text("Furniture App")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? username = "";
  String? email = "";
  String? password = "";
  String? confirm_password = "";
  final List<String> errors = [];
  Color colors = const Color(0xFF100F1E);
  Color textcolor = const Color(0xFFAEAEB2);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            color: const Color(0xFF100F1E),
            border: Border.all(color: colors),
            borderRadius: BorderRadius.circular(30.0),
          ),
          duration: const Duration(milliseconds: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Choose your Username",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Inter",
                  color: textcolor,
                ),
              ),
              TextField(
                style: textstyleOfInputFields,
                onTap: () {
                  print("Hello");
                  setState(() {
                    colors = Colors.blue;
                    textcolor = Colors.blue;
                  });
                },
                onSubmitted: (value) {
                  print("done");
                  setState(() {
                    colors = const Color(0xFF100F1E);
                    textcolor = const Color(0xFFAEAEB2);
                  });
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}

Widget TextFieldContainer() {
  return Container(
    alignment: Alignment.topLeft,
    margin: const EdgeInsets.all(15.0),
    padding: const EdgeInsets.all(3.0),
    decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: Column(
      children: const [
        Text('My Awesome Border'),
        TextField(
          decoration:
              InputDecoration(isDense: true, contentPadding: EdgeInsets.zero),
        )
      ],
    ),
  );
}
