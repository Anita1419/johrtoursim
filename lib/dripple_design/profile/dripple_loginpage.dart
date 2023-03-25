import 'package:design_app/dripple_design/profile/dripple_signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dripple_LoginPage extends StatefulWidget {
  const Dripple_LoginPage({Key? key}) : super(key: key);
  @override
  _Dripple_LoginPageState createState() => _Dripple_LoginPageState();
}

class _Dripple_LoginPageState extends State<Dripple_LoginPage> with
SingleTickerProviderStateMixin{
  late Animation animation,delayedAnimation,muchDelayedAnimation;
  late AnimationController animationController;


  @override
  void initState() {
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
    final double width = MediaQuery.of(context).size.width;
   //this line of code will start the animation
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
                transform: Matrix4.translationValues(
                    animation.value*width, 0.0, 0.0
                ),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(15.0,100.0, 0.0, 0.0),
                        child: const Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold
                              ,color: Colors.black,
                              fontFamily: "Quicksand"
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15.0,180.0, 0.0, 0.0),
                        child: const Text(
                          "There",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold
                              ,color: Colors.black,
                            fontFamily: "Quicksand"
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(255.0,180.0, 0.0, 0.0),
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
                  padding: const EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
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
                                  color: Colors.grey
                              ),
                              focusedBorder:  UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)
                              ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      Container(
                        alignment: const Alignment(1.0,0.0),
                        padding: const EdgeInsets.only(top: 15.0,left: 20.0),
                        child: const InkWell(
                          child: Text("Forgot Password"
                          ,style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Quicksand",
                              decoration: TextDecoration.underline,
                              fontSize: 18.0
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40.0,),
                      Container(
                        height: 60.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(35.0),
                          color: Colors.green,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Center(
                              child: Text(
                                'LOGIN',
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
                      const SizedBox(height: 20.0,),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Center(
                                child: FaIcon(FontAwesomeIcons.facebookF,color: Colors.black,
                                size: 30,),
                              ),
                              SizedBox(width: 20.0,),
                              Center(
                                child: Text("Log in with facebook"
                                ,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Quicksand",
                                    color: Colors.black
                                  ),
                                ),
                              )
                            ],
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              Transform(
                transform: Matrix4.translationValues(muchDelayedAnimation.value * width, 0.0, 0.0),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "New to Spotify ? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(width: 5.0,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                          DrippleSignUpPage()),
                        );
                      },
                      child: const Text(
                        "Register",
                        style:  TextStyle(
                          color: Colors.green,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),
                      ),
                    )


                  ],
                ),
              )
            ],
          ),


        );
      }
    );
  }
}
