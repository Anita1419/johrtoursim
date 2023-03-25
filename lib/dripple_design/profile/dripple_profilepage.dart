import 'package:design_app/dripple_design/singlescreendesigns/dripple_card_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dripple_ProfilePage extends StatefulWidget {
  const Dripple_ProfilePage({Key? key}) : super(key: key);

  @override
  _Dripple_ProfilePageState createState() => _Dripple_ProfilePageState();
}

class _Dripple_ProfilePageState extends State<Dripple_ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
            children: [
              Container(
                child: ClipPath(
                  child: Container(
                    decoration: const BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1639801444072-5498afd2606c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=924&q=80")
                        )
                    ),
                  ),
                  clipper: getClipper(),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 230,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(blurRadius: 10,
                                color: Colors.black,
                                spreadRadius: 1)
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 75,
                          backgroundImage:
                          const NetworkImage(
                              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      const Center(
                        child: Text("JENNIE CURSIVE", style: TextStyle(
                            fontSize: 25.0,
                            letterSpacing: 1.0,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                      ),
                      const SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                           Icon(Icons.circle
                            , color: Colors.green,
                            size: 15.0,
                          ),
                           SizedBox(width: 5.0,),
                           Text("Available for freelance"
                            , style:  TextStyle(
                                color: Colors.green,
                                fontSize: 18.0,
                                fontFamily: "Nunito",
                                fontStyle: FontStyle.normal
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: 5.0,
                        runSpacing: 8.0,
                        children: [
                          Experties("3D ILLUSTRATION"),
                          Experties("3D"),
                          Experties("LOW POLY"),
                          Experties("ANIMATION"),
                          Experties("CROWBAR"),
                          Experties("ICONS"),
                          Experties("Graphics"),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Properties("1253", "FOLLOWERS"),
                          Properties("658", "FOLLOWING"),
                          Properties("256", "WORKS"),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                DrippleCardDesign()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Text("HIRE", style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0
                          ),),
                        ),
                      ),
                      SizedBox(height: 20.0,)
                    ],
                  ),
                ),
              ),
            
            ]
        )
    );
    
  }
}

  Widget Experties(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey.shade400,
            width: 1.0
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(text, style: const TextStyle(
          color: Colors.grey,
          fontFamily: "Quicksand",
          fontWeight: FontWeight.w500,
          fontSize: 18.0
      ),),

    );
  }

  Widget Properties(String number, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(number,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold
          ),
        ),
        Text(text,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: "Quicksand"
          ),
        ),
      ],
    );
  }


  class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
  var path = new Path();
  path.lineTo(0.0, size.height / 2.1);
  path.lineTo(size.width + 490, 0.0);
  path.close();
  return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  return true;

  }
  }
