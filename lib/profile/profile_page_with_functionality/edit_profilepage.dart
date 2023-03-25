import 'dart:io';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:design_app/constants.dart';
import 'package:design_app/profile/profile_page_with_functionality/profile_user.dart';
import 'package:design_app/profile/profile_page_with_functionality/profile_widget.dart';
import 'package:design_app/profile/profile_page_with_functionality/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late ProfileUser user;

  @override
  void initState() {
    super.initState();

    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: buildAppBar(context),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 32),
            physics: BouncingScrollPhysics(),
            children: [
              ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {
                    final image = await ImagePicker().
                    getImage(source: ImageSource.gallery);

                    if(image == null ) return;
                    final directory = await getApplicationDocumentsDirectory();
                    final name = basename(image.path);
                    final imageFile = File('${directory.path}/$name');
                    final newImage = await File(image.path).copy(imageFile.path);
                    setState(() {
                      user = user.copy(imagePath: newImage.path);
                    });
                   /* PickedFile? pickedFile = await ImagePicker().getImage(
                      source: ImageSource.gallery,
                      maxWidth: 1800,
                      maxHeight: 1800,
                    );
                  //  if(image == null ) return;
                    if (pickedFile != null) {
                      setState(() {
                       // imageFile = File(pickedFile.path);
                        user = user.copy(imagePath: pickedFile.path);
                      });
                    }*/



                  }),
              const SizedBox(
                height: 24,
              ),
              TextFieldWidget(
                  label: "Full Name",
                  text: user.name,
                  onChanged: (name) {
                    user = user.copy(name: name);
                  }),
              const SizedBox(
                height: 24,
              ),
              TextFieldWidget(
                label: "Email",
                text: user.email,
                onChanged: (email) { user = user.copy(email: email);},
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldWidget(
                label: "About",
                text: user.about,
                maxLines: 5,
                onChanged: (about) { user = user.copy(about: about);},
              ),
              const SizedBox(
                height: 24,
              ),
              ButtonWidget(
                  text: "Save",
                  onClicked: () {
                    print("${user.name}, ${user.about}");
                    UserPreferences.setUser(user);
                    Navigator.of(context).pop();
                  })
            ],
          ),
        );
      }),
    );
  }
}
