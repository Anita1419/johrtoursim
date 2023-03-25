import 'package:design_app/profile/numbers_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileMainPage extends StatefulWidget {
  const ProfileMainPage({Key? key}) : super(key: key);

  @override
  _ProfileMainPageState createState() => _ProfileMainPageState();
}
//to overlay widgets with each other  we use stack widget
//to incease the height we use the the radius property in the circul avatar widget


class _ProfileMainPageState extends State<ProfileMainPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent()
        ],
      ),
    );

  }

  Widget buildContent(){
    return Column(
      children: [
        const SizedBox(height: 8,),
        Text(
            "Nadiya Laviya",
          style: TextStyle(fontSize: 28,
              fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        const SizedBox(height: 8,),
        Text(
            "Flutter Software Engineer",
          style: TextStyle(fontSize: 20,color: Colors.black38),
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialIcons(FontAwesomeIcons.slack),
            const SizedBox(width: 12,),
            buildSocialIcons(FontAwesomeIcons.github),
            const SizedBox(width: 12,),
            buildSocialIcons(FontAwesomeIcons.twitter),
            const SizedBox(width: 12,),
            buildSocialIcons(FontAwesomeIcons.linkedin),
            const SizedBox(width: 12,),
          ],
        ),
        const SizedBox(height: 16,),
        Divider(),
        const SizedBox(height: 16,),
        NumbersWidget(),
        const SizedBox(height: 16,),
        buildAbout(),
        const SizedBox(height: 32,),
      ],
    );

  }





  Widget buildSocialIcons(IconData iconData){
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 25,
      child: Material(
        shape: CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: FaIcon(iconData ,size: 32,color: Colors.white,),
          ),
        ),
      ),
    );

  }


  Widget buildAbout(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About"
          ,style: TextStyle(fontSize: 28,
                fontWeight: FontWeight.bold,color: Colors.black),
          ),
          const SizedBox(height: 16,),
          Text("Flutter is supported and used by Google, trusted by well-known brands around the world, and maintained by a community of global developers.\n Certified in ANDROID, JAVA, GRAPHIC Designing \n Schooling from county girls college , Sport expert and mangemnet abailities the things get changed day by day  how all the skills will powerful technologiess"
          ,style: TextStyle(fontSize: 18,height: 1.4),
          ),
        ],
      ),
    );
  }





  Widget buildTop(){
    final bottom = profileHeight / 2;
    final  top = coverHeight - profileHeight / 2;
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: bottom),
              child: buildCoverImage()

          ),
          Positioned(
              top: top,
              child: buildProfileImage()),

        ],
    );

  }

  
  Widget buildCoverImage(){
    return Container(
      color: Colors.grey,
      child: Image.network("https://images.unsplash.com/photo-1524135329990-07660cd5bf10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29kZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60"
      ,width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,

      ),
    );
  }

  Widget buildProfileImage(){
    return CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage(
        "https://images.unsplash.com/photo-1524117074681-31bd4de22ad3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"

      ),
    );

  }
  
}


