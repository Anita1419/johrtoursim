import 'package:design_app/tinder/card_provider.dart';
import 'package:design_app/tinder/tinder_card.dart';
import 'package:design_app/tinder/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TinderMainPage extends StatefulWidget {
  const TinderMainPage({Key? key}) : super(key: key);

  @override
  _TinderMainPageState createState() => _TinderMainPageState();
}

class _TinderMainPageState extends State<TinderMainPage> {
  final user = User(
      name: "Steffi",
      age: 20,
      urlImage:
          "https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=360&q=80");

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.red.shade200,
              Colors.black,
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  buildLogo(),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(child: buildCards()),
                  const SizedBox(
                    height: 16,
                  ),
                  buildButtons(),
                ],
              )),
        ),
      ),
    );
  }

  Widget buildCards() {
    final provider = Provider.of<CardProvider>(context);
    final listofusers = provider.user;
    return listofusers.isEmpty
        ? Center(
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: getColor(Colors.white,
                    Colors.red, true),
                backgroundColor: getColor(Colors.red,
                    Colors.white, true),
              ),
              child: const Icon(
                Icons.restore,
                size: 40,
              ),
              onPressed: () {
                final provider =
                    Provider.of<CardProvider>(context, listen: false);
                provider.resetUser();
              },
            ),
          )
        : Stack(
            children: listofusers
                .map((user) => TinderCard(
                      user: user,
                      isFront: listofusers.last == user,
                    ))
                .toList(),
          );
  }

  Widget buildLogo() {
    return Row(
      children: const [
        Icon(
          Icons.local_fire_department_rounded,
          color: Colors.white,
          size: 36,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "Tinder",
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }

  Widget buildButtons() {
    final provider = Provider.of<CardProvider>(context);
    final users = provider.user;
    final status = provider.getStatus();
    final isLike = status == CardStatus.like;
    final isDislike = status == CardStatus.dislike;
    final isSuperLike = status == CardStatus.superlike;




    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              foregroundColor: getColor(Colors.red,
                  Colors.white, isDislike),
              backgroundColor: getColor(
                  Colors.white, Colors.red, isDislike),
              side: getBorder(Colors.red,
                  Colors.white, isDislike)
            ),





              onPressed: () {
                final provider =
                    Provider.of<CardProvider>(context, listen: false);
                provider.dislike();
              },
              child: const Icon(
                Icons.clear,
                size: 40,
              )),
          ElevatedButton(
              style: ButtonStyle(
                  foregroundColor: getColor(Colors.orange,
                      Colors.white, isSuperLike),
                  backgroundColor: getColor(
                      Colors.white, Colors.orange, isSuperLike),
                  side: getBorder(Colors.orange,
                      Colors.white, isSuperLike)
              ),



              onPressed: () {
                final provider =
                    Provider.of<CardProvider>(context, listen: false);
                provider.superlike();
              },
              child: const Icon(
                Icons.star,
                size: 40,
              )),
          ElevatedButton(
              style: ButtonStyle(
                  foregroundColor: getColor(Colors.teal,
                      Colors.white, isLike),
                  backgroundColor: getColor(
                      Colors.white, Colors.teal, isLike),
                  side: getBorder(Colors.teal,
                      Colors.white, isLike)
              ),

              onPressed: () {
                final provider =
                    Provider.of<CardProvider>(context, listen: false);
                provider.like();
              },
              child: const Icon(
                Icons.favorite,
                size: 40,
              )),
        ],
      );
  }
}

//property to change the color
MaterialStateProperty<Color> getColor(
    Color color, Color colorPressed, bool force) {
  final getColor = (Set<MaterialState> states) {
    if (force || states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getColor);
}



//property to change the border
MaterialStateProperty<BorderSide> getBorder(
    Color color, Color colorPressed, bool force) {
  final getBorder = (Set<MaterialState> states) {
    if (force || states.contains(MaterialState.pressed)) {
      return BorderSide(color:  Colors.transparent);
    } else {
      return BorderSide(color: color,width: 2);
    }
  };
  return MaterialStateProperty.resolveWith(getBorder);
}
