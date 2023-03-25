class ProfileUser {

  final String imagePath;
  final String name;
  final String email;
  final String about;
  final bool isDarkMode;

  ProfileUser(
  {
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode
  }
    );
  Map <String ,dynamic> toJson() => {
   "imagePath": imagePath,
    "name":name,
    "email": email,
    "about": about,
    "isDarkMode":isDarkMode,
  };

  ProfileUser copy ({
  String? imagePath,
    String? name,
    String? email,
    String? password,
    String? about,
    bool? isDarkMode

}){
    return ProfileUser(
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      email: email ?? this.email,
      about:  about ?? this.about,
      isDarkMode: isDarkMode ?? this.isDarkMode
    );
}

static ProfileUser fromJson(Map<String,dynamic> json){
    return ProfileUser(
        imagePath: json["imagePath"],
        name: json["name"],
        email: json["email"],
        about: json["about"],
        isDarkMode: json["isDarkMode"],
    );
}








}