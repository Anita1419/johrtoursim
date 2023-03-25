import 'package:design_app/constants.dart';
import 'package:design_app/dripple_design/minimaltraveldairy/dripple_travel_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

class DrippleMinimalTravelDesign extends StatefulWidget {
  const DrippleMinimalTravelDesign({Key? key}) : super(key: key);

  @override
  _DrippleMinimalTravelDesignState createState() => _DrippleMinimalTravelDesignState();
}

class _DrippleMinimalTravelDesignState extends State<DrippleMinimalTravelDesign> with SingleTickerProviderStateMixin {

 late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            new Tab(icon: Icon(Icons.home,color: Colors.black,),),
            new Tab(icon: Icon(Icons.search,color: Colors.grey,),),
            new Tab(icon: Icon(Icons.graphic_eq,color: Colors.grey,),),
            new Tab(icon: Icon(Icons.add_circle_outline,color: Colors.grey,),),
          ],

        ),
      ),


      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
              padding:EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("travelogram"
                ,style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 20.0,
                    color: Colors.grey.shade900
                  ),
                ),
                SizedBox(width: 120.0,),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.notifications),
                  color: Colors.grey.shade500,
                  iconSize: 30.0,
                ),
                SizedBox(width: 15.0,),
                InkWell(
                  child: Hero(
                    tag: PROFILEPICURL,
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: NetworkImage(PROFILEPICURL),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          DrippleTravelProfilePage()),
                    );

                  },
                )

              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.shade100
              ),
              child: Row(
                children: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.assistant_navigation,
                        color: Colors.blue,
                      ),
                    iconSize: 50.0,
                  ),
                  SizedBox(width: 5.0,),
                  Padding(
                    padding: EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("MALDIVES TRIP 2018"
                        ,style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14.0,
                            fontFamily: "Quicksand",
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Text("Add an Update",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black
                        ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 50.0,),
                  IconButton(
                    onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ,iconSize: 30.0,


                  ),
                ],
              ),
            ),

          ),
          Padding(
              padding: EdgeInsets.only(top: 40.0,left: 25.0,right: 25.0)
          ,child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("FROM THE COMMUNITY",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
                fontFamily: "Quicksand"
              ),
              ),
              Text("View All",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                fontFamily: "Quicksand"
              ),
              )
            ],
          ),
          ),
          _buildPhotogrid(
              "https://images.unsplash.com/photo-1647894062390-53a2c0261588?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8RnpvM3p1T0hONnd8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=60",
              "https://images.unsplash.com/photo-1647827951696-f6c4c75566d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE0fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
              "https://images.unsplash.com/photo-1647536001353-d99be7bc1784?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"
          ),
          SizedBox(height: 10.0,),
          imgGalleryDetails(context,"Maui Summer 2018","Terso Soto addded 52 Photos"),
          SizedBox(width: 10.0,),
          _buildPhotogrid("https://images.unsplash.com/photo-1647598488483-98598366bdd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIzfEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60", "https://images.unsplash.com/photo-1647594774070-ce1e9b76839e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60", "https://images.unsplash.com/photo-1647292848989-5b4bdb24d625?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI1fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"),
          SizedBox(height: 10.0,),
          imgGalleryDetails(context,"Maui Summer 2018","Terso Soto addded 52 Photos"),
          SizedBox(height: 10.0,)




        ],
      ),
    );
  }




  Widget _buildPhotogrid(String src1,String src2,String scr3){
    return Padding(
      padding: EdgeInsets.only(
        top: 25.0,left: 15.0,right: 15.0
      ),
      child: Container(
        height: 225.0,
        child: Row(
          children: [
            Container(
              height: 225,
              width: MediaQuery.of(context).size.width / 2 + 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0)
                ),
                image: DecorationImage(
                  image: NetworkImage(src1),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(width: 2.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 111.5,
                  width: MediaQuery.of(context).size.width / 2 - 72.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(src2),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(height: 2.0,),
                Container(
                  height: 111.5,
                  width: MediaQuery.of(context).size.width / 2 - 72.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(scr3),
                          fit: BoxFit.cover
                      )
                  ),
                ),


              ],
            )

          ],
        ),
      ),
    );
  }


}
