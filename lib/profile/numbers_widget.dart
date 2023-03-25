import 'package:flutter/material.dart';
class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildButton(text:"Projects",value:2),
        SizedBox(width: 20,),
        buildButton(text:"Followers",value:278),
        SizedBox(width: 20,),
        buildButton(text:"Following",value:500),
        SizedBox(width: 20,),
      ],

    );
  }

  Widget buildButton({
  required String text,
    required int value,
}){
    return MaterialButton(onPressed: (){},
    padding: EdgeInsets.symmetric(vertical: 4),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('$value',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)
       ,SizedBox(height: 2,),
          Text(text,style: TextStyle(fontSize: 16),)
        ],
      ),
    );
    
}
  
}
