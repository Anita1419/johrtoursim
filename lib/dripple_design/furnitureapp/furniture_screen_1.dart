import 'package:design_app/constants.dart';
import 'package:design_app/dripple_design/foodRecipes/food_screen_homepage.dart';
import 'package:design_app/dripple_design/furnitureapp/furniture_screen3.dart';
import 'package:design_app/dripple_design/furnitureapp/furniturescreen2.dart';
import 'package:design_app/dripple_design/singlescreendesigns/cakescatalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FurnitureScreen1 extends StatefulWidget {
  const FurnitureScreen1({Key? key}) : super(key: key);

  @override
  _FurnitureScreen1State createState() => _FurnitureScreen1State();
}

class _FurnitureScreen1State extends State<FurnitureScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.topCenter,
                      colors: [Color(0xffFDCF46), Color(0xffFEE06F)],
                    )),
                  ),
                  Positioned(
                      bottom: 50.0,
                      right: 100.0,
                      child: Opacity(
                        opacity: 0.7,
                        child: Container(
                          height: 400.0,
                          width: 500.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  // colors: [Colors.purple[200]!, Colors.amber],
                                  colors: [Colors.amber, Colors.yellow[200]!],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                        ),
                      )),
                  Positioned(
                      bottom: 100.0,
                      left: 150.0,
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          height: 300.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  //   colors: [Colors.red,Colors.yellow],
                                  // colors: [Colors.purple[200]!, Colors.amber],
                                  colors: [Colors.amber, Colors.yellow[200]!],
                                  /* begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,*/
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  stops: const [0.3, 0.8])),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topRight,
                          children: [
                            const Positioned(
                                bottom: 30.0,
                                left: 25.0,
                                child: Image(
                                  width: 90.0,
                                  height: 60.0,
                                  image: AssetImage("assets/images/dots.png"),
                                )),
                            Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              height: 74.0,
                              width: 70.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60"),
                                      fit: BoxFit.cover),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 4.0)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Hello , Pino",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 35.0,
                              fontFamily: "Opensans",
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "What do you want to buy?",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 25.0,
                              fontFamily: "Opensans",
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 20.0),
                            height: 55.0,
                            child: Material(
                              elevation: 5.0,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.zero,
                                        child: Icon(
                                          Icons.search_sharp,
                                          color: Colors.yellow,
                                          size: 30.0,
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(top: 5.0),
                                      isDense: true,
                                      border: InputBorder.none,
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "Opensans")),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Stack(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    elevation: 1.0,
                    child: Container(
                        height: 75.0,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 7.0),
                              height: 75.0,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Container(
                                    height: 40.0,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://uxwing.com/wp-content/themes/uxwing/download/11-household-and-furniture/couch-sofa.png"))),
                                  ),
                                  const Text(
                                    "Sofas",
                                    style: TextStyle(
                                        fontFamily: "Quicksand",
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 7.0),
                              height: 75.0,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Container(
                                    height: 40.0,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn-icons-png.flaticon.com/512/182/182355.png"))),
                                  ),
                                  const Text(
                                    "Wadrobe",
                                    style: TextStyle(
                                        fontFamily: "Quicksand",
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 7.0),
                              height: 75.0,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Container(
                                    height: 40.0,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ab57t5Kwbbt2pPV8W35iG-QpCQYWvWYQKw&usqp=CAU"))),
                                  ),
                                  const Text(
                                    "Desk",
                                    style: TextStyle(
                                        fontFamily: "Quicksand",
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 7.0),
                              height: 75.0,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Container(
                                    height: 40.0,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://e7.pngegg.com/pngimages/1010/781/png-clipart-computer-icons-dressing-table-miscellaneous-angle-thumbnail.png"))),
                                  ),
                                  const Text(
                                    "Dresser",
                                    style: TextStyle(
                                        fontFamily: "Quicksand",
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),
              FurnitureDetailsTile(
                  "https://github.com/rajayogan/flutterui-furnitureapp/blob/master/assets/ottoman.jpg?raw=true",
                  true),
              FurnitureDetailsTile(
                  "https://github.com/rajayogan/flutterui-furnitureapp/blob/master/assets/anotherchair.jpg?raw=true",
                  false),
              FurnitureDetailsTile(
                  "https://i.pinimg.com/originals/74/75/5a/74755a7835f0bcff26d39d6f09aee4c7.jpg",
                  false),
            ],
          )
        ],
      ),
    );
  }

  Widget FurnitureDetailsTile(String imagepath, bool isFavourite) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FurnitureScreen3()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: Container(
          height: 200.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                width: 140.0,
                height: 150.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imagepath), fit: BoxFit.contain)),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "FinnNavian",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontFamily: "Opensans",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.19,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Material(
                          elevation: isFavourite ? 0.0 : 2.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: isFavourite
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  : const Icon(
                                      Icons.favorite_outline_sharp,
                                      color: Colors.grey,
                                    ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.53,
                    child: const Text(
                      "Scandinavian small size double sofa imported full leather /Dale italia oil wax leather black",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90.0,
                        height: 61.0,
                        color: const Color(0xffFDCF46),
                        child: const Center(
                          child: Text(
                            "\$ 248",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: "Opensans",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 131.0,
                        height: 61.0,
                        color: const Color(0xffFEE06F),
                        child: const Center(
                          child: Text(
                            "Add to cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
