import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:design_app/profile/profile_page_with_functionality/edit_profilepage.dart';
import 'package:design_app/profile/profile_page_with_functionality/profile_user.dart';
import 'package:design_app/profile/profile_page_with_functionality/profile_widget.dart';
import 'package:design_app/profile/profile_page_with_functionality/user_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileMainScreenPage extends StatefulWidget {
  const ProfileMainScreenPage({Key? key}) : super(key: key);

  @override
  _ProfileMainScreenPageState createState() => _ProfileMainScreenPageState();
}

class _ProfileMainScreenPageState extends State<ProfileMainScreenPage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: buildAppBar(context),
            body: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: false,
                  onClicked: () async {
                   await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          EditProfilePage()),
                    );
                   setState(() {});
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                buildName(user),
                const SizedBox(
                  height: 24,
                ),
                Center(child: buildUpgardeButton()),
                const SizedBox(
                  height: 24,
                ),
                NumbersWidget(),
                const SizedBox(
                  height: 48,
                ),
                buildAbout(user),
              ],
            ),
          );
        }
      ),
    );
  }

  Widget buildUpgardeButton() {
    return ButtonWidget(
      text: "Upgrade To Pro",
      onClicked: () {


      },
    );
  }

  Widget buildName(ProfileUser user) {
    return Column(
      children: [
        Text(
          user.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          user.email,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }

  Widget buildAbout(ProfileUser user) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            user.about,
            style: TextStyle(fontSize: 16, height: 1.4),
          )
        ],
      ),
    );
  }
}
