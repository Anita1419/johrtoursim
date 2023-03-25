import 'package:design_app/hidden_drawer/drawer_item.dart';
import 'package:design_app/hidden_drawer/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;

  const DrawerWidget({Key? key,required this.onSelectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 32, 10, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildDrawerItems(context)
          ],
        ),
      ),
    );
  }
  Widget buildDrawerItems(BuildContext context){
     return Column(
        children: DrawerItems.all.map((item) =>
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
          leading: Icon(item.icon,color: Colors.white,),
          title: Text(
            item.title,
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
          onTap: () => onSelectedItem(item),
        )
        ).toList(),
      );
  }
}

class DrawerMenuWidget extends StatelessWidget {
  final VoidCallback onClicked;

  const DrawerMenuWidget({Key? key,
  required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(FontAwesomeIcons.alignLeft),
      color: Colors.white,
      onPressed: onClicked,
    );
  }
}

