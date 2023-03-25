import 'package:design_app/dripple_design/travelApp/activity_model.dart';
import 'package:design_app/dripple_design/travelApp/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelPageDestinationScreen extends StatefulWidget {
  final Destination  destination;


  TravelPageDestinationScreen(this.destination);

  @override
  _TravelPageDestinationScreenState createState() => _TravelPageDestinationScreenState();
}

class _TravelPageDestinationScreenState extends State<TravelPageDestinationScreen> {
  Color primary = Color(0xFF3EBACE);
  Color scaffoldBacground = Color(0xFFD8ECF1);
  Color accent  = Color(0xFF3FF5F7).withOpacity(0.2);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0,2.0),
                      blurRadius: 6.0,

                    )
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: NetworkImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black,


                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        },
                          icon: Icon(Icons.search),
                          iconSize: 30.0,
                          color: Colors.black,


                        ),

                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        },
                          icon: Icon(FontAwesomeIcons.sortAmountDown),
                          iconSize: 30.0,
                          color: Colors.black,
                        ),

                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.destination.city
                      ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2
                      ),

                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.locationArrow,size: 15.0,color: Colors.white,),
                        SizedBox(width: 5.0,),
                        Text(widget.destination.country
                          ,style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 30.0,
                  bottom: 20.0,
                  child: Icon(Icons.location_on
                  ,color: Colors.white70,
                    size: 25.0,
                  ))

            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0,bottom: 15.0),
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext context , int index){
                Activity activity = widget.destination.activities[index];
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 2.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100.0,20.0,20.0,20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center

                        ,children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start
                              ,children: [
                                Container(
                                  width: 120.0,
                                  child: Text(activity.name
                                  ,style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,

                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("\$ ${activity.price}"
                                    ,style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text("per pax"
                                      ,style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                        color: Colors.grey
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text("${activity.type}"
                              ,style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey
                              ),
                            ),
                            _buildRatingStars(activity.rating),
                            SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Container(
                                  width: 100.0,
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(color: accent,
                                  borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(activity.startTimes[0]),
                                ),
                                SizedBox(width: 10.0,),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 100.0,
                                  decoration: BoxDecoration(color: accent,
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(activity.startTimes[1]),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 15.0,
                      bottom: 15.0
                      ,child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 110,
                          image: NetworkImage(activity.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )

                  ],

                );
              },
            ),
          )
        ],
      ),
    );
  }

  Text _buildRatingStars (int rating) {
    String stars = '';
    for(int i =0 ; i <rating ; i++){
      stars += "⭐  ";
    }
    return Text(stars);

  }

}
