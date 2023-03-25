import 'package:design_app/hidden_drawer/drawer_item.dart';
import 'package:design_app/hidden_drawer/drawer_items.dart';
import 'package:design_app/main.dart';
import 'package:flutter/material.dart';

import 'drawer_selected_page.dart';
import 'drawer_widget.dart';

class HiddenDrawerMainPage extends StatefulWidget {
  const HiddenDrawerMainPage({Key? key}) : super(key: key);

  @override
  _HiddenDrawerMainPageState createState() => _HiddenDrawerMainPageState();
}

class _HiddenDrawerMainPageState extends State<HiddenDrawerMainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  bool isDragging = false;
  late bool isDrawerOpen;
  DrawerItem item = DrawerItems.home;

  @override
  void initState() {
    super.initState();
    //openDrawer();
    openDrawer();
  }
  void openDrawer() {
    setState(() {
       xOffset = 230;
       yOffset = 150;
      scaleFactor = 0.6;
      isDrawerOpen = true;
    });
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 30, 61, 1),
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(),
        ],
      ),
    );
  }
  Widget buildDrawer(){
    return SafeArea(
        child: Container(
          //to limit the width we set
          width: xOffset,
          child: DrawerWidget(
      onSelectedItem: (item) {
          switch (item) {
            case DrawerItems.logout:
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Logging Out"))
              );
              return;
            default:
              setState(() {
                this.item = item;
              });
              closeDrawer();
          }
      }
    ),
        ));
  }

  Widget buildPage(){
    return WillPopScope(
      onWillPop: () async {
        if(isDrawerOpen){
          closeDrawer();
          return false;
        }else {
          return true;
        }

      },
      child: GestureDetector(
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if(!isDragging) return;

          const delta = 1;
          if(details.delta.dx > delta){
            openDrawer();
          }else if(details.delta.dx < -delta){
            closeDrawer();
          }
          isDragging = false;
        },
        onTap: closeDrawer,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: AbsorbPointer(
              absorbing: isDrawerOpen,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(isDrawerOpen ? 20 :0),
                  child: Container(
                    color: isDrawerOpen ? Colors.white12 :  Color.fromRGBO(21, 30, 61, 1),
                      child: getDrawerPage(),

                  ),
                )
            ),

        ),
      ),
    );
  }

  Widget getDrawerPage(){
    switch(item) {
      case DrawerItems.home:
        return DrawerSelectedPage(openDrawer:openDrawer,title:"Home Page");


      case DrawerItems.explore:
        return DrawerSelectedPage(openDrawer:openDrawer,title:"Explore The HomeItems");


      case DrawerItems.favourites:
        return DrawerSelectedPage(openDrawer:openDrawer,title:"Favourites");


      case DrawerItems.profile:
        return DrawerSelectedPage(openDrawer:openDrawer,title:"Profile");

      case DrawerItems.messages:
        return DrawerSelectedPage(openDrawer:openDrawer,title:"Messages");
        


      default:
          return DrawerSelectedPage(openDrawer: openDrawer, title: "Home Page");
    }
  }
}

