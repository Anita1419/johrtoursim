import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:design_app/profile/profile_page_with_functionality/user_preferences.dart';
import 'package:design_app/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;



const String loreumIpumText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. ";


//travelmimimal
const String PROFILEPICURL = "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60";


Widget imgGalleryDetails(BuildContext context,String name,String description){
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(left: 20.0,right: 20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name
                ,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksand",
                    fontSize: 15.0,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 7.0,),
              Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(description,
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: "Quicksand",
                        fontSize: 11.0
                    ),
                  ),
                  SizedBox(width: 4.0,),
                  Icon(Icons.timer,size: 4.0,color: Colors.black,),
                  SizedBox(width: 4.0,),
                  Text("2h ago",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontFamily: "Quicksand",
                        fontSize: 11.0
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
        SizedBox(width: 20.0,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 20.0,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 20.0,
                width: 20.0,
                child: Transform.rotate(
                    angle: 180 * math.pi /80,
                    child: Icon(Icons.navigation_outlined,color: Colors.black,
                      size: 25,
                    )),
              ),
            ),
            SizedBox(width: 20.0,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 20.0,
                width: 20.0,
                child: FaIcon(FontAwesomeIcons.comment,color: Colors.black,),
              ),
            ),
            SizedBox(width: 20.0,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 20.0,
                width: 20.0,
                child: FaIcon(FontAwesomeIcons.heart,color: Colors.black,),
              ),
            ),
          ],
        ),
        SizedBox(width: 20.0,)
      ],
    ),
  );
}




//on boarding screeen

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle
}) {
  return Container(
    color: color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(urlImage,fit:
        BoxFit.cover,
          width: double.infinity,),
        const SizedBox(height: 24,),
        Text(title,style:
        TextStyle(color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.black),
          ),
        )

      ],
    ),
  );
}



const kTextFieldDecoration = InputDecoration(
  hintText: 'example@email.com',
  icon: Icon(Icons.email),
  labelText: 'Email',
  labelStyle: TextStyle(color: Colors.green),
);






ElevatedButtonThemeData style (){
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 8,
      primary: Colors.white,
      shape: CircleBorder(),
      minimumSize: Size.square(80),
    ),
  );

}


 const appbartheme =AppBarTheme(
    backgroundColor: Color(0xFF100F1E),
    toolbarHeight: 80,
    elevation: 0.0,
    titleSpacing: 3.0,
   titleTextStyle:  TextStyle(fontSize: 17,
       fontFamily: "Inter"),
   iconTheme:  IconThemeData(color: Colors.white,size: 25)

);


final headingStyle = TextStyle(
  fontSize: 20,
  fontFamily: "Inter",
  color: Colors.white,
  height: 1.5
);

final headingStyle2 = TextStyle(
    fontSize: 12,
    fontFamily: "Inter",
    color: Color(0xFFAEAEB2),
);


final textstyleOfInputFields = TextStyle(
    fontSize: 17,
    fontFamily: "Inter",
    color: Colors.white,

);


//App Bar for profile Screen
AppBar buildAppBar(BuildContext context){
  final user = UserPreferences.getUser();
  final isDarkMode = user.isDarkMode;
  final icon = CupertinoIcons.moon_stars;


  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(onPressed: (){
          final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
          final switcher = ThemeSwitcher.of(context);
          switcher.changeTheme(theme: theme);
          final newUser = user.copy(isDarkMode : !isDarkMode);
          UserPreferences.setUser(newUser);

        },
            icon: Icon(icon)
        ),
      )
    ],

  );
}








