import 'dart:ui';

import 'package:design_app/constants.dart';
import 'package:design_app/profile/profile_page_with_functionality/edit_profilepage.dart';
import 'package:design_app/profile/profile_page_with_functionality/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodRecipePage extends StatefulWidget {
  const FoodRecipePage({Key? key}) : super(key: key);

  @override
  _FoodRecipePageState createState() => _FoodRecipePageState();
}

class _FoodRecipePageState extends State<FoodRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F5F2),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 585,
                    color: const Color(0XFFECE7E0),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 10.0),
                        child: Material(
                          color: const Color(0XFFF2EEE9),
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(25.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.search,color:Colors.black,),
                               contentPadding: EdgeInsets.only(left: 15.0,top: 15.0),
                              hintText: "Search for recipes and channels",
                              hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0,),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 15.0),
                              height: 50.0,
                              child:  const VerticalDivider(
                                thickness: 2,
                                color: Colors.orange,
                                endIndent: 20.0,
                              ),
                            ),
                            const SizedBox(width: 10.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("POPULAR RECIPES",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "SourceSerifPro",
                                    fontWeight: FontWeight.bold,
                                    height: 1,
                                    fontSize: 20,
                                  ),),
                                Text("THIS WEEK",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "SourceSerifPro",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    height: 1

                                  ),),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 15.0)
                         ,child: Container(
                        padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                        height: 180.0,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            ListViewCard(),
                            ListViewCard(),
                          ],
                        ),
                      ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                   Text("September 7"
                      ,style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        letterSpacing: -1.2
                      ),
                    ),
                    Text("TODAY"
                      ,style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SourceSerifPro",
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        letterSpacing: 1.0
                      ),
                    )
                  ],
                ),
              ),

              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Material(
                      color: const Color(0XFFF2EEE9),
                      elevation: 20.0,
                      borderRadius: BorderRadius.circular(30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaY: 1.2,sigmaX: 1.2),
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60'
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),




                  Positioned(
                      bottom: 80,
                      left: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                           const Text("BEST OF \nTHE  DAY"
                          ,style: TextStyle(
                              fontFamily: "SourceSerifPro",
                              fontSize: 35,
                              color: Colors.white,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Container(
                            width: 90,
                            child: Divider(
                              thickness: 2.0,
                              color: Colors.amber.shade200,
                            ),
                          )

                        ],
                      ))
                ],
              )




            ],

          ),
        ],
      ),
    );
  }
  Widget ListViewCard(){
    return Padding(
      padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 90,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(0, 1.0,)
          )],

        ),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow( color: Colors.black,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, 2.0,))],
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60"),
                  ),
                ),
              ),
              SizedBox(width: 15.0,),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Grilled Salad" ,
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w800,
                          fontSize: 16
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Text("with Fruit Salad",
                      style:TextStyle(
                          fontFamily: "Quicksand",
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w800,
                          fontSize: 16

                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    Container(
                      height: 1.0,
                      width: 75.0,
                      color: Colors.amber,
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      children:  [
                        const CircleAvatar(
                          radius: 15.0,
                          backgroundImage: const NetworkImage(PROFILEPICURL),
                        ),
                        SizedBox(width: 5.0,),
                        Text("James Oliver",
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold
                          ),)

                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}


