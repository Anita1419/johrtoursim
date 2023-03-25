import 'package:design_app/dripple_design/profile/dripple_profilepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrippleSignUpPage extends StatefulWidget {
  const DrippleSignUpPage({Key? key}) : super(key: key);

  @override
  State<DrippleSignUpPage> createState() => _DrippleSignUpPageState();
}

class _DrippleSignUpPageState extends State<DrippleSignUpPage> with SingleTickerProviderStateMixin {
 late Animation animation,delayedAnimation,muchDelayedAnimation;
 late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this
        ,duration: const Duration(seconds: 3)
    );

    //this animation is from 0.0 to 1.0
    animation = Tween(begin: -1.0,end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Curves.fastOutSlowIn
        ));

    //then this animation will start from 0.5 to 1.0
    //means in half of the first animation
    delayedAnimation = Tween(begin: -1.0,end: 0.0).animate(
        CurvedAnimation(
          parent: animationController,
          curve: const Interval(0.5,1.0,curve: Curves.fastOutSlowIn),
        ));


    //means this will be start at the end
    // of the as of the comparsion of upper two
    muchDelayedAnimation = Tween(begin: -1.0,end: 0.0).animate(
        CurvedAnimation(
          parent: animationController,
          curve: const Interval(0.8,1.0,curve: Curves.fastOutSlowIn),
        ));


  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return  AnimatedBuilder(
      animation: animationController,
      builder: (context,covariant) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform(
                transform: Matrix4.translationValues(animation.value * width, 0.0, 0.0),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(15.0,130.0, 0.0, 0.0),
                        child: const Text(
                          "SignUp",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold
                              ,color: Colors.black,
                              fontFamily: "Quicksand"
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(310.0,130.0, 0.0, 0.0),
                        child: const Text(
                          ".",
                          style:  TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(delayedAnimation.value * width, 0.0, 0.0),
                child: Container(
                  padding: const EdgeInsets.only(top: 30.0,left: 20.0,right: 20.0),
                  child: Column(
                    children:  [
                      Container(
                        decoration:  const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 1.0,color: Colors.grey)
                          ),

                        ),
                        child:  const TextField(
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              fontSize: 18
                          ),
                          decoration:    InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 0.0),
                            labelText: 'EMAIL',
                            labelStyle:  TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
                            focusedBorder:  UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      Container(
                        decoration:  const BoxDecoration(
                          border:  Border(
                              bottom: BorderSide(width: 1.0,color: Colors.grey)
                          ),
                        ),
                        child: const TextField(
                          decoration:   InputDecoration(
                            border:OutlineInputBorder(
                                borderSide: BorderSide.none
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 0.0),
                            labelText: 'Password',
                            labelStyle:   TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              letterSpacing: 2.0,
                            ),
                            focusedBorder:  UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      Container(
                        decoration:  const BoxDecoration(
                          border:  Border(
                              bottom: BorderSide(width: 1.0,color: Colors.grey)
                          ),
                        ),
                        child: const TextField(
                          decoration:   InputDecoration(
                            border:OutlineInputBorder(
                                borderSide: BorderSide.none
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 0.0),
                            labelText: 'NickName',
                            labelStyle:   TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              letterSpacing: 2.0,
                            ),
                            focusedBorder:  UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 40.0,),
                      Container(
                        height: 60.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(35.0),
                          color: Colors.green,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                    Dripple_ProfilePage()),
                              );

                            },
                            child: const Center(
                              child: Text(
                                'SIGNUP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                    fontSize: 18.0
                                ),
                              ),

                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        height: 60.0,
                        color: Colors.white,
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(35.0)
                            ),
                            child: const Center(
                              child: Text("Go Back"
                                ,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Quicksand",
                                    color: Colors.black
                                ),
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

        );
      }
    );
  }
}
