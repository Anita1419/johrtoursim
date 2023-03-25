import 'package:design_app/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom:70),
        child: PageView(
          controller: controller,
          onPageChanged: (index){
            setState(() {
              isLastPage = index ==2;

            });
          },
          children: [
            buildPage(
              color: Colors.grey.shade700,
              urlImage: "assets/images/image1.jpg",
              title: "Defines real Beauty",
              subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of "
            ),
            buildPage(
              color: Colors.grey.shade700,
              urlImage: "assets/images/image2.jpeg",
              title: "Defines The Love",
              subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of "
            ),
            buildPage(
              color: Colors.blueGrey,
              urlImage: "assets/images/image4.jpg",
              title: "Define the Lightness",
              subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of"

            )
          ],
        ),
      ),
      bottomSheet: isLastPage ?
          TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0)
                ),
                primary: Colors.white,
                backgroundColor: Colors.teal.shade700,
                minimumSize: const Size.fromHeight(80.0)
              ),
              
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool("showHome", true);





              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignUp())
              );
                
          }, child: const Text(
            "Get Started",
            style: TextStyle(fontSize: 24),
          )):
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            TextButton(onPressed: (){
              //for the skip button
              controller.jumpToPage(2);
            },
                child: const Text("SKIP")),
            Center(
              child: SmoothPageIndicator(
                controller:controller,
                count:3,
                effect: SwapEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: SwapType.yRotation,
                  spacing: 16,
                  dotColor: Colors.black,
                  activeDotColor: Colors.teal.shade700
                ),
                onDotClicked: (index){
                  controller.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
              ),
            ),


            TextButton(
                onPressed: ()
            {
              //method to move to teh next page
              controller.nextPage(duration: const Duration(
                milliseconds: 500
              ), curve: Curves.easeInOut,);

            }, child: const Text("NEXT"))
          ],
        ),
      ),
    );
  }
}
