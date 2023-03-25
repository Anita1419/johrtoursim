import 'package:design_app/profile/settings_screen/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class HeaderPage extends StatelessWidget {
  static const keyDarkMode = "key-dark-mode";
  const HeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       buildHeader(),
       const SizedBox(height: 32,),
       buildUser(context),
        buildDarkMode(),
      ],
    );
  }

  Widget buildHeader(){
    return Center(
      child: Text(
        "Settings",
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
      ),
    );
  }









  Widget buildUser(BuildContext context){
    return Row(
      children: [
        CircleAvatar(
        radius: 40,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1524117074681-31bd4de22ad3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"

        ),
    ),
        SizedBox(width: 20,),
        Column(
          children: [
            Text("Nibiya NARAS",style: TextStyle(fontSize: 20),),
            SizedBox(height: 4,),
            Text("+12 7827827 2827",style: TextStyle(color: Colors.white60),)
          ],
        )
    ]
    );


  }

  Widget buildDarkMode(){
    return SwitchSettingsTile(
        title: "Dark Mode",
        settingKey: keyDarkMode,
        leading: IconWidget(
          icon: Icons.dark_mode,
          color: Color(0XFF642ef3),
        ),
      onChange: (_){},


    );
  }

}
