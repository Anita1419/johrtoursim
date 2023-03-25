import 'dart:io';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;


  const ProfileWidget({Key? key,
    required this.imagePath,
    required this.isEdit,
    required this.onClicked}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
              bottom: 0,
              right: 4,
              child: buildEditIcon(color)),

        ],
      ),
    );

  }


  Widget buildEditIcon(Color color){
    return buildCircle(
        all: 3,
        color: Colors.white,
    child: buildCircle(
      color:color,
      all:8,
      child: Icon(
        isEdit ? Icons.add_a_photo : Icons.edit,
        size: 20,
        color: Colors.white,
      ),
    )
    );

  }

  Widget buildCircle({
  required Widget child,
    required double all,
    required Color color
}) {
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(all),
        color: color,
        child: child,

      ),
    );
  }




  Widget buildImage(){
    final image = imagePath.contains("https://")
    ? NetworkImage(imagePath)
    : FileImage(File(imagePath));

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(image: image as ImageProvider,
        fit: BoxFit.cover,
          width: 130,
            height: 130,
          child: InkWell(
            onTap: onClicked,

          ),
        ),
      ),

    );


  }

}


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({Key? key
  ,required this.text, required this.onClicked
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(

      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 32,vertical: 12)
        ),
        onPressed: onClicked,
          child: Text(text),),
    );
  }
}


class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context,"4.8","Ranking"),
          buildDivider(),
          buildButton(context,"35","Following"),
          buildDivider(),
          buildButton(context,"50","Followers"),

        ],
      ),
    );
  }
  Widget buildDivider(){
    return Container(
        height: 24,
        child: VerticalDivider(),

    );
  }

  Widget buildButton(BuildContext context,String value, String status){
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: (){},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisSize:  MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
                fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          SizedBox(height: 2,),
          Text(status,style: TextStyle(fontWeight: FontWeight.bold),)

        ],
      ),

    );
  }

}


class TextFieldWidget extends StatefulWidget {
  final int maxLines;
  final String label;
  final String text;
  final ValueChanged<String> onChanged;



  const TextFieldWidget({
    Key? key,
    this.maxLines = 1,
    required this.label,
    required this.text,
    required this.onChanged


  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {

    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        const SizedBox(height: 8,),
        TextField(
          controller: controller,
          maxLines: widget.maxLines,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)
            ),

          ),
        )
      ],
    );
  }
}



