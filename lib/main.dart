import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:design_app/dripple_design/travelApp/travel_app_mainpage.dart';
import 'package:design_app/onboardingpages/onboardingscreen.dart';
import 'package:design_app/profile/profile_page_with_functionality/user_preferences.dart';
import 'package:design_app/sign_up.dart';
import 'package:design_app/themes.dart';
import 'package:design_app/tinder/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await UserPreferences.init();
  final showHome = prefs.getBool("showHome") ?? false;
  print("show home is ${showHome.toString()}");

  runApp(HomePage(
    showHome: showHome,
  ));
}

class HomePage extends StatelessWidget {
  final bool showHome;
  const HomePage({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final isDarkMode = Settings.getValue<bool>(HeaderPage.keyDarkMode, true);
    final user = UserPreferences.getUser();

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
        builder: (_,myTheme) {
          return ChangeNotifierProvider(
              create: (context) => CardProvider(),
              child: MaterialApp(
                theme: myTheme,
                  home: showHome ? SignUp() : OnBoardingScreen(),
                ),
              );
        }
    );
  }
}


//this code is used in the mainpage when the settingsMainPage are called
/*ValueChangeObserver<bool>(
          cacheKey: HeaderPage.keyDarkMode,
          defaultValue: true,
          builder: (_, isDarkMode, __) => MaterialApp(
            theme: isDarkMode ?
            ThemeData.dark().copyWith(
              primaryColor: Colors.teal,
              accentColor: Colors.white,
              scaffoldBackgroundColor: Color(0xFF170635),
              canvasColor: Color(0xFF170635),
              appBarTheme: appbartheme,
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  elevation: 8,
                  primary: Colors.white,
                  shape: CircleBorder(),
                  minimumSize: Size.square(80),
                ),
              ),
            ): ThemeData.light().copyWith(
              accentColor: Colors.black,
              scaffoldBackgroundColor: Colors.white,
              canvasColor: Colors.white,
              appBarTheme: appbartheme,
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  elevation: 8,
                  primary: Colors.white,
                  shape: CircleBorder(),
                  minimumSize: Size.square(80),
                ),
              ),*/


/*
Future main() async {
  await Settings.init(cacheProvider: SharePreferenceCache());
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool("showHome") ?? false;
  print("show home is ${showHome.toString()}");

  runApp(HomePage(
    showHome: showHome,
  ));
}*/
