import 'package:design_app/profile/settings_screen/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
class NotificationPage extends StatelessWidget {
  static const keyNews = 'key-news';
  static const keyActivity = 'key-activity';
  static const keyNewsletter = 'key-news-letter';
  static const keyAppUpdates = 'key-appUpdates';

  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleSettingsTile(
        title: "Notifications",
        subtitle: "Newsletter , App Updates",
        leading:  IconWidget(
          icon: Icons.notifications,
          color: Colors.redAccent,
        ),
      child: SettingsScreen(
        title: "Notifications",
        children: <Widget>[
          buildNews(),
          buildActivity(),
          buildNewsletter(),
          buildAppUpdates(),
        ],
      ),


    );
  }




  Widget buildNews(){
    return SwitchSettingsTile(
      title: "News For You",
      settingKey: keyNews,
      leading: IconWidget(
        icon: Icons.message,
        color: Colors.blue,
      ),
      onChange: (_){},


    );
  }

  Widget buildActivity(){
    return SwitchSettingsTile(
      title: "Account Activity",
      settingKey: keyActivity,
      leading: IconWidget(
        icon: Icons.person,
        color: Colors.orange,
      ),
      onChange: (_){},


    );
  }

  Widget buildNewsletter(){
    return SwitchSettingsTile(
      title: "NewsLetter",
      settingKey: keyNews,
      leading: IconWidget(
        icon: Icons.text_snippet,
        color: Colors.green,
      ),
      onChange: (_){},


    );
  }

  Widget buildAppUpdates(){
    return SwitchSettingsTile(
      title: "App Updates",
      settingKey: keyAppUpdates,
      leading: IconWidget(
        icon: Icons.mobile_friendly,
        color: Colors.teal,
      ),
      onChange: (_){},


    );
  }


}
