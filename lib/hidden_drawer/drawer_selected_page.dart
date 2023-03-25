import 'package:design_app/hidden_drawer/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerSelectedPage extends StatelessWidget {
  final VoidCallback openDrawer;
  final String title;
  const DrawerSelectedPage({Key? key,
  required this.openDrawer,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: DrawerMenuWidget(onClicked: openDrawer,),
      backgroundColor: Colors.transparent,
      elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(title , style:
              TextStyle(fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Get Customisedd furniture of your Choice at your fingertips",
                style: TextStyle(fontSize: 16,),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RowListViews(),
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Popular Themes" , style:
              TextStyle(fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              ),
            ),
             const SizedBox(height: 20,),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CardTile(url:"https://images.unsplash.com/photo-1640622660721-45b83554ab05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=1000&q=60"),
                            CardTile(url:"https://images.unsplash.com/photo-1646376154861-ba480417c15f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60"),
                            CardTile(url: "https://images.unsplash.com/photo-1646299412006-0f44295c047a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60")
                          ],
                        )
                        ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CardTile(url: "https://images.unsplash.com/photo-1646373431538-22e11fe97051?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=374&q=80"),

                            CardTile(url: "https://images.unsplash.com/photo-1646330685088-d8a402b0dcc2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60"),
                            CardTile(url: "https://images.unsplash.com/photo-1646330098429-425365acc972?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"),



                          ],
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),






          ],

        ),
      ),



    );

  }

  Widget ListIconTile({required IconData iconData}){
    return IconButton(icon: Icon(iconData),onPressed: (){},
    );

  }

  Widget RowListViews(){
    return SizedBox(
      height: 50.0,
      child: ListView(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ListIconTile(iconData:FontAwesomeIcons.home,),
          SizedBox(width: 20,),
          ListIconTile(iconData:FontAwesomeIcons.elementor,),
          SizedBox(width: 20,),
          ListIconTile(iconData:FontAwesomeIcons.shower,),
          SizedBox(width: 20,),
          ListIconTile(iconData:FontAwesomeIcons.glasses,),
          SizedBox(width: 20,),
          ListIconTile(iconData:FontAwesomeIcons.clock,),
          SizedBox(width: 20,),
          ListIconTile(iconData:FontAwesomeIcons.camera,),
          SizedBox(width: 20,),
          ListIconTile(iconData:FontAwesomeIcons.baby,),
          SizedBox(width: 20,),
        ],
      ),
    );
  }

  Widget CardTile({required String url}){
    return Container(
      width: 190,
        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(url,fit: BoxFit.fill,))
    );
  }






}





