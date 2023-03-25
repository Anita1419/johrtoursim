import 'package:design_app/tinder/tinder_card.dart';

class User {
  final String name;
  final int age;
  final String urlImage;

 const User({
   required this.name,
   required this.age,
   required this.urlImage});

  Map toMap(User post) {
    var data = Map<String, dynamic>();
    data["name"]= this.name;
    data["age"]= this.age;
    data["urlImage"]= this.urlImage;
    return data;
  }



}