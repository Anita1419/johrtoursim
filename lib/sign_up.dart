import 'package:design_app/constants.dart';
import 'package:design_app/onboardingpages/onboardingscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './components/body.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color(0xFF1E1D30),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text("Create and account"),
        ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        leading: Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 25,
            onPressed: () {},
          ),
        ),
        actions: [
          IconButton(onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool("showHome", false);

            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) =>
                  OnBoardingScreen())
            );
          },
              icon: const Icon(Icons.logout))

        ],
      ),
      body: Body(),
    );
  }
}
