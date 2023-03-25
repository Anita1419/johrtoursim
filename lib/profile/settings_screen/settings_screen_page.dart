import 'package:design_app/profile/settings_screen/account_page.dart';
import 'package:design_app/profile/settings_screen/header.dart';
import 'package:design_app/profile/settings_screen/icon_widget.dart';
import 'package:design_app/profile/settings_screen/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class SettingsScreenPage extends StatefulWidget {
  const SettingsScreenPage({Key? key}) : super(key: key);

  @override
  _SettingsScreenPageState createState() => _SettingsScreenPageState();
}

class _SettingsScreenPageState extends State<SettingsScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            HeaderPage(),
            SettingsGroup(
                title: "GENERAL",
                children: <Widget>[
                  const SizedBox(height: 8,),
                  NotificationPage(),
                  AccountPage(),
                  buildLogout(),
                  buildDeleteAccount(),
                ]
            ),
            SizedBox(height: 32,),
            SettingsGroup(
                title: "FEEDBACK",
                children: <Widget>[
                  const SizedBox(height: 8,),
                  buildReportBug(context),
                  buildSendFeedback(context)
                //  buildLogout(),
                  //buildDeleteAccount(),
                ]
            ),

          ],
        ),
      ),
    );
  }
  Widget buildLogout(){
    return SimpleSettingsTile(
      title: "Logout",
      subtitle: '',
      leading: IconWidget(icon:Icons.logout,color:Colors.blue),
      onTap: () {
        // Utils.showSnackBar(context,"Clicked Logout");

      },
    );
  }

  Widget buildDeleteAccount(){
    return SimpleSettingsTile(
      title: "Delete Account",
      subtitle: '',
      leading: IconWidget(icon:Icons.delete,color:Colors.pink),
      onTap: () {
        //  Utils.showSnackBar(context,"Clicked Logout");

      },
    );
  }

  Widget buildReportBug(BuildContext context){
    return SimpleSettingsTile(
      title: "Report a Bug",
      subtitle: '',
      leading: IconWidget(icon:Icons.bug_report,color:Colors.teal),
      onTap: () {
        //  Utils.showSnackBar(context,"Clicked Logout");
      },
    );
  }


  Widget buildSendFeedback(BuildContext context){
    return SimpleSettingsTile(
      title: "Send FeedBack",
      subtitle: '',
      leading: IconWidget(icon:Icons.thumb_up,color:Colors.purple),
      onTap: () {
        //  Utils.showSnackBar(context,"Clicked Logout");

      },
    );
  }

}






