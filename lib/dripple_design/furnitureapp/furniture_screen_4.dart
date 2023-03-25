import 'package:flutter/material.dart';

class FurnitureScreen4 extends StatefulWidget {
  const FurnitureScreen4({Key? key}) : super(key: key);

  @override
  _FurnitureScreen4State createState() => _FurnitureScreen4State();
}

class _FurnitureScreen4State extends State<FurnitureScreen4> {
  List picked = [false, false];
  int totalAmount = 0;
  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  getTotalAmount() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                // overflow: Overflow.visible,
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
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30.0,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Positioned(
                              top: 30.0,
                              left: 10.0,
                              child: Opacity(
                                opacity: 0.5,
                                child: Image(
                                  width: 90.0,
                                  height: 60.0,
                                  image: AssetImage("assets/images/dots.png"),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              alignment: Alignment.topLeft,
                              icon: const Icon(Icons.arrow_back),
                              iconSize: 35.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          "Shopping Cart",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Quicksand",
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 160.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          itemCard("Finn Navian-Sofa", "gray", "248", true, 0,
                              "https://github.com/rajayogan/flutterui-furnitureapp/blob/master/assets/ottoman.jpg?raw=true"),
                          itemCard("Finn Navian-Sofa", "gray", "248", true, 0,
                              "https://github.com/rajayogan/flutterui-furnitureapp/blob/master/assets/anotherchair.jpg?raw=true"),
                          itemCard("Finn Navian-Sofa", "gray", "248", false, 0,
                              "https://i.pinimg.com/originals/74/75/5a/74755a7835f0bcff26d39d6f09aee4c7.jpg"),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 300.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "Pick of the week",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Quicksand"),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ImageCard(
                  "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c29mYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60"),
              Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    Text(
                      "All election",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontFamily: "Quicksand",
                          fontSize: 18.0),
                    ),
                    const Text(
                      "Total : \$ 248(1)",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                    ElevatedButton(
                      onPressed: () {}

                      //color: Colors.red.shade400
                      ,
                      child: const Text(
                        "Settlement",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Quicksand"),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget ImageCard(String imagepath) {
    return Container(
      margin: const EdgeInsets.only(left: 12.0, right: 12.0),
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imagepath), fit: BoxFit.cover)),
    );
  }

  Widget itemCard(String itemName, String color, String price,
      bool availability, int index, String imagepath) {
    return InkWell(
      onTap: () {
        if (availability) {
          pickToggle(index);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          elevation: 3.0,
          child: Container(
            padding: const EdgeInsets.only(left: 15.0, right: 10.0),
            width: MediaQuery.of(context).size.width - 20.0,
            height: 110.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                        color: availability
                            ? Colors.grey.withOpacity(0.4)
                            : Colors.red.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(12.5),
                      ),
                      child: Center(
                        child: availability
                            ? Container(
                                height: 12.0,
                                width: 12.0,
                                decoration: BoxDecoration(
                                  color: picked[index]
                                      ? Colors.yellow
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                              )
                            : Container(),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 150.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imagepath), fit: BoxFit.contain)),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          itemName,
                          style: const TextStyle(
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 7.0,
                        ),
                        availability
                            ? picked[index]
                                ? const Text(
                                    "x1",
                                    style: TextStyle(
                                        fontFamily: "Quicksand",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.black),
                                  )
                                : Container()
                            : Container()
                      ],
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    availability
                        ? Text(
                            "Color $color",
                            style: const TextStyle(
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        : TextButton(
                            onPressed: () {},
                            // borderSide: const BorderSide(
                            //     color: Colors.red,
                            //     width: 1.0,
                            //     style: BorderStyle.solid),
                            child: const Center(
                              child: Text(
                                "Find Similar",
                                style: TextStyle(
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    availability
                        ? Text(
                            "\$$price",
                            style: const TextStyle(
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.red,
                            ),
                          )
                        : Container()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
