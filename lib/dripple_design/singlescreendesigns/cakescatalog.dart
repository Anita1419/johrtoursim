import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CakesCatalogScreen extends StatefulWidget {
  const CakesCatalogScreen({Key? key}) : super(key: key);

  @override
  _CakesCatalogScreenState createState() => _CakesCatalogScreenState();
}

class _CakesCatalogScreenState extends State<CakesCatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text("Fine quality"
          ,style: TextStyle(
              color: Colors.black,
              fontFamily: "Quicksand",
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
            onPressed: (){},
          color: Colors.black,
          iconSize: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){},
                icon: Icon(Icons.search_outlined,
                  color: Colors.grey.shade500,
                size: 40,
                )

            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                height: 250.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 230.0,
                              width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1627834377411-8da5f4f09de8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Positioned(
                                left: 15.0,
                                top: 130.0,
                                child: Container(
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
                                      Text("Honey Bread"
                                      ,style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Quicksand",
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text("\$88"
                                            ,style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Quicksand",
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(width: 20.0,),
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Text("\$88"
                                                ,style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Quicksand",
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              SizedBox(
                                                width: 40.0,
                                                child: Divider(
                                                  thickness: 2.0,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ),

                          ],
                        ),

                      ],
                    ),
                    SizedBox(width: 5.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                         borderRadius: BorderRadius.circular(7.0),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.favorite,color: Colors.red,),
                                Text("368",
                                style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(7.0),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(FontAwesomeIcons.comment,color: Colors.grey,),
                                Text("76",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(7.0),
                          elevation: 2.0,
                          color: Colors.white,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(FontAwesomeIcons.share,color: Colors.grey,),
                                Text("18",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Text("Commodity",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 15.0,),
              GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                children: [
                  _buildFoodCard("Raspberry", "Italy production", "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60", 12, 23, 1),
                  _buildFoodCard("Mouse",
                      "Made in China",
                      "https://images.unsplash.com/photo-1621303837174-89787a7d4729?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
                      23, 56, 2),
                  _buildFoodCard("Choco lava", "Italy production", "https://images.unsplash.com/photo-1578985545062-69928b1d9587?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60", 12, 23, 1),
                  _buildFoodCard("Cuppy Choco",
                      "Made in Switerland",
                      "https://images.unsplash.com/photo-1550617931-e17a7b70dce2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
                      23, 56, 2),
                  _buildFoodCard("Raspberry", "Italy production", "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60", 12, 23, 1),
                  _buildFoodCard("Mouse",
                      "Made in China",
                      "https://images.unsplash.com/photo-1621303837174-89787a7d4729?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
                      23, 56, 2),
                  _buildFoodCard("Raspberry", "Italy production", "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60", 12, 23, 1),
                  _buildFoodCard("Mouse",
                      "Made in China",
                      "https://images.unsplash.com/photo-1621303837174-89787a7d4729?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
                      23, 56, 2)

                ],
              )
            ],
          ),
        ],
      ),


    );
  }

  Widget _buildFoodCard(  String name,
  String origin,
  String cardImage,
  int Likes,
  int commentCount,
  int cardIndex){

   return Padding(
       padding: cardIndex.isEven ? EdgeInsets.only(right: 15.0) :EdgeInsets.only(left: 15.0),
     child: Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0),
         border: Border.all(
           color: Colors.grey.withOpacity(0.2),
           style: BorderStyle.solid, width: 1.0
         )
       ),
       child: Stack(
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 height: 150.0,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(10.0),
                     topRight: Radius.circular(10.0),
                   ),
                   image: DecorationImage(
                     image: NetworkImage(cardImage),
                     fit: BoxFit.cover
                   )
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 10.0,),
                     Text(name
                       ,style: const TextStyle(
                           color: Colors.black,
                           fontFamily: "Quicksand",
                           fontWeight: FontWeight.w600,
                           fontSize: 20.0
                       ),
                     ),
                     Text(origin
                       ,style: const TextStyle(
                           color: Colors.grey,
                           fontFamily: "Quicksand",
                           fontSize: 15.0,
                           letterSpacing: 1.0
                       ),
                     ),
                     const SizedBox(height: 10.0,),
                     Row(
                       children:  [
                         Icon(FontAwesomeIcons.heart,color: Colors.grey,),
                         SizedBox(width: 10.0,),
                         Text("${Likes}",
                           style: TextStyle(
                               fontFamily: "Quicksand",
                               color: Colors.grey
                           ),
                         ),
                         SizedBox(width: 20.0,),
                         Icon(FontAwesomeIcons.comment,color: Colors.grey,),
                         SizedBox(width: 10.0,),
                         Text("${commentCount}",
                           style: TextStyle(
                               fontFamily: "Quicksand",
                               color: Colors.grey
                           ),
                         )
                       ],
                     )
                   ],
                 ),
               ),


             ],
           ),
           Positioned(
               left: 130.0,
               top: 130,
               child: Container(
                 alignment: Alignment.center,
                 height: 40.0,
                 width: 40.0,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.amber.shade600
                 ),
                 child: Icon(FontAwesomeIcons.shoppingCart,
                   color: Colors.white,
                   size: 19.0,
                 ),
               ))
         ],
       ),
     ),

   );
  }

}
