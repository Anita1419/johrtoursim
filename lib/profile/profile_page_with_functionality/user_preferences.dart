import 'dart:convert';

import 'package:design_app/profile/profile_page_with_functionality/profile_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';
  static final  myUser = ProfileUser(
      imagePath: "https://images.unsplash.com/photo-1524117074681-31bd4de22ad3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
      name: "Nabiya Naras",
      email: "nabiya.naras@gmail.com",
      about: "Passion and enthusiasm for design, with a creative flair·"
          " a flexible approach when working in a team · "
          " good presentation skills and the confidence to explain and sell ideas to clients and colleague "
          "excellent communication skills to interpret and negotiated skills" ,
      isDarkMode: false
  );
  static Future init() async =>
  _preferences = await SharedPreferences.getInstance();


  static Future setUser(ProfileUser user) async {

    final json = jsonEncode(user.toJson());
    await _preferences.setString(_keyUser, json);
  }
  static  getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser :
    ProfileUser.fromJson(jsonDecode(json));
  }
}