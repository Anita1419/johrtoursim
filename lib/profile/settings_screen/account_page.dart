import 'package:design_app/profile/settings_screen/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class AccountPage extends StatelessWidget {
  static const keyLanguage = 'key-language';
  static const keyLocation = 'key-location';
  static const keyPassword = 'key-password';

  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleSettingsTile(
        title: "Account Settings",
        subtitle: "Privacy , Security , Language",
        leading: IconWidget(icon: Icons.person, color: Colors.green,),
        child: SettingsScreen(
          title: "Account Settings",
           children: <Widget>[
             buildLanguage(),
             buildLocation(),
             buildPassword(),
             buildPrivacy(context),
             buildSecurity(context),
             buildAccountInfo(context),

           ],
        ),


    );
  }
  Widget buildPassword (){
     return TextInputSettingsTile(
       settingKey: keyPassword,
       title: "Password",
       obscureText: true,
       validator: (password) {
         password != null && password.length >=6
            ? null
            : "Enter 6 characters";
       },
     );
  }



  Widget buildPrivacy(BuildContext context){
    return SimpleSettingsTile(
      title: "Privacy",
      subtitle: '',
      leading: IconWidget(icon:Icons.lock,color:Colors.blue),
      onTap: () {
        // Utils.showSnackBar(context,"Clicked Logout");

      },
    );
  }

  Widget buildSecurity(BuildContext context){
    return SimpleSettingsTile(
      title: "Security",
      subtitle: '',
      leading: IconWidget(icon:Icons.security,color:Colors.red),
      onTap: () {
        // Utils.showSnackBar(context,"Clicked Logout");

      },
    );
  }


  Widget buildAccountInfo(BuildContext context){
    return SimpleSettingsTile(
      title: "Logout",
      subtitle: '',
      leading: IconWidget(icon:Icons.text_snippet,color:Colors.purple),
      onTap: () {
        // Utils.showSnackBar(context,"Clicked Logout");

      },
    );
  }


  Widget buildLanguage () {
    return DropDownSettingsTile<int>(
      enabled: true,
        title: "Language",
        settingKey: keyLanguage,
        selected: 1,
        values: <int ,String>{
        1:"English",
        2:"Spanish",
        3:"Chinese",
        4:"Hindi" ,
        },
       onChange: (language) {/*NOOP*/},
        );
  }

  Widget buildLocation() {
    return TextInputSettingsTile(
        title: "Location",
        settingKey: keyLocation,
        initialValue: "Australia",
      onChange: (location) {/*code here*/},

    );
  }



}
