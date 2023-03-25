import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrippleCardDesign extends StatefulWidget {
  const DrippleCardDesign({Key? key}) : super(key: key);

  @override
  _DrippleCardDesignState createState() => _DrippleCardDesignState();
}

class _DrippleCardDesignState extends State<DrippleCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Near by",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 8),
            child: FaIcon(
              FontAwesomeIcons.flask,
              color: Colors.blue,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    left: 20.0,
                    child: Container(
                      width: 260.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10.0)),
                    )),
                Positioned(
                    left: 10.0,
                    child: Container(
                      width: 280.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10.0)),
                    )),
                Container(
                  width: 300.0,
                  height: 400.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1496440737103-cd596325d314?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 320.0,
                    left: 15.0,
                    child: Container(
                      width: 270.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 1.0,
                                color: Colors.black12,
                                spreadRadius: 2.0)
                          ]),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 7.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Kayla",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 20.0,
                                      color: Colors.black),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.ring,
                                    color: Colors.pink,
                                  ),
                                  iconSize: 20.0,
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "5.8km",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          fontFamily: "Quicksand",
                                          fontSize: 20.0,
                                          color: Colors.grey),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Fate is wonderful",
                                  style: TextStyle(
                                    fontFamily: "Quicksand",
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                        color: Colors.transparent,
                        style: BorderStyle.solid,
                        width: 2.0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.close_sharp,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                        color: Colors.transparent,
                        style: BorderStyle.solid,
                        width: 2.0),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.solidComment,
                      color: Colors.lightBlueAccent,
                      size: 40,
                    ),
                  ),
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                        color: Colors.transparent,
                        style: BorderStyle.solid,
                        width: 2.0),
                  ),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.red[900],
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
