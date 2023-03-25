import 'package:design_app/dripple_design/foodRecipes/foodrecipepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class FoodScreenHomePage extends StatefulWidget {
  const FoodScreenHomePage({Key? key}) : super(key: key);

  @override
  _FoodScreenHomePageState createState() => _FoodScreenHomePageState();
}

class _FoodScreenHomePageState extends State<FoodScreenHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://images.unsplash.com/photo-1488900128323-21503983a07e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"
            )
          )
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 10.0),
                child: Material(
                  color: const Color(0XFFF2EEE9).withOpacity(0.4),
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(25.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color:Colors.white,),
                        contentPadding: EdgeInsets.only(left: 15.0,top: 15.0),
                        hintText: "Search for recipes and channels",
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
              ),
             Padding(
              padding: EdgeInsets.only(left: 20.0,top: 100.0),
               child: Container(
                 width: MediaQuery.of(context).size.width*0.7,
                 decoration: BoxDecoration(
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(0.5),
                       spreadRadius: 5,
                       blurRadius: 50.0,
                       offset: Offset(0.0, 0.75), // changes position of shadow
                     ),
                   ],
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Text("ROASTED \nLAMB",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 40,
                           fontFamily: "SourceSerifPro",
                           fontWeight: FontWeight.bold,
                           letterSpacing: 1.0
                       ),
                     ),
                     Text(loreumIpumText,
                       style: TextStyle(
                           color: Colors.grey.shade300,
                           fontStyle: FontStyle.italic

                       ),
                     ),
                   ],
                 ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80.0)
                ,child: Container(
                padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                height: 180.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                FoodRecipePage()),
                          );
                        },
                        child: ListViewCard()),
                    ListViewCard(),
                  ],
                ),
              ),
              ),
            ],
          ),
      )
    );
  }
  Widget ListViewCard(){
    return Padding(
      padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 90,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white.withOpacity(0.4),

        ),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow( color: Colors.black,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, 2.0,))],
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60"),
                  ),
                ),
              ),
              SizedBox(width: 15.0,),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Grilled Salad" ,
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Text("with Fruit Salad",
                      style:TextStyle(
                          fontFamily: "Quicksand",
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16

                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    Container(
                      height: 1.0,
                      width: 75.0,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      children:  [
                        const CircleAvatar(
                          radius: 15.0,
                          backgroundImage: const NetworkImage(PROFILEPICURL),
                        ),
                        SizedBox(width: 5.0,),
                        Text("James Oliver",
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),)

                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}



