import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FurnitureScreen2 extends StatefulWidget {
  const FurnitureScreen2({Key? key}) : super(key: key);

  @override
  _FurnitureScreen2State createState() => _FurnitureScreen2State();
}

class _FurnitureScreen2State extends State<FurnitureScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
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
                      bottom: 300.0,
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
                      bottom: 400.0,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15.0,
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
                            width: 12.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Pino",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Opensans",
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "176****590",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Opensans",
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.37,
                          ),
                          const Icon(
                            Icons.settings,
                            size: 50.0,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SmallCards("Favourites", Icons.fact_check),
                          SmallCards("wallet", FontAwesomeIcons.wallet),
                          SmallCards("Footprint", FontAwesomeIcons.print),
                          SmallCards("Coupon", FontAwesomeIcons.gift),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10.0,
                              ),
                              OptionsCrad("Pending payment", "5",
                                  FontAwesomeIcons.creditCard),
                              const SizedBox(
                                width: 20.0,
                              ),
                              OptionsCrad("To be shipped", "2",
                                  FontAwesomeIcons.solidCalendarCheck),
                              const SizedBox(
                                width: 10.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10.0,
                              ),
                              OptionsCrad(
                                  "To be received", "8", FontAwesomeIcons.bus),
                              const SizedBox(
                                width: 20.0,
                              ),
                              OptionsCrad("Return / replace", "0",
                                  FontAwesomeIcons.recycle),
                              const SizedBox(
                                width: 10.0,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Material(
                color: Colors.white,
                child: Column(
                  children: [
                    CustomListTile(
                        Colors.red, "Gift card", Icons.card_giftcard),
                    CustomListTile(
                        Colors.orange.shade300, "Bank card", Icons.credit_card),
                    CustomListTile(Colors.redAccent, "Replacement code",
                        FontAwesomeIcons.barcode),
                    CustomListTile(
                        Colors.blueAccent.shade200,
                        "Consulting collection",
                        Icons.card_membership_outlined),
                    CustomListTile(Colors.orange.shade200, "CustomerService",
                        Icons.person),
                    CustomListTile(
                        Colors.red, "Gift card", Icons.card_giftcard),
                    CustomListTile(
                        Colors.orange.shade300, "Bank card", Icons.credit_card),
                    CustomListTile(Colors.redAccent, "Replacement code",
                        FontAwesomeIcons.barcode),
                    CustomListTile(
                        Colors.blueAccent.shade200,
                        "Consulting collection",
                        Icons.card_membership_outlined),
                    CustomListTile(Colors.orange.shade200, "CustomerService",
                        Icons.person),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget CustomListTile(Color color, String text, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
      child: ListTile(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundColor: color.withOpacity(0.5),
            child: Center(
                child: Icon(
              iconData,
              color: color,
            )),
          ),
          title: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: "Quicksand",
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
          )),
    );
  }

  Widget SmallCards(String text, IconData iconData) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 30.0,
          color: Colors.white,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 18.0, fontFamily: "Opensans", color: Colors.white),
        )
      ],
    );
  }

  Widget OptionsCrad(String text, String number, IconData iconData) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 150.0,
        child: Material(
          elevation: 2.0,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  iconData,
                  color: Colors.black,
                  size: 40.0,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontFamily: "Opensans",
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  number,
                  style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                      fontFamily: "Opensans",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
