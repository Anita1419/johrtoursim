import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrippleBurgerTruck extends StatefulWidget {
  const DrippleBurgerTruck({Key? key}) : super(key: key);

  @override
  _DrippleBurgerTruckState createState() => _DrippleBurgerTruckState();
}

class _DrippleBurgerTruckState extends State<DrippleBurgerTruck> {
  int photoIndex = 0;
  List<String> photos = [
    "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80",
    "https://images.unsplash.com/photo-1603064752734-4c48eff53d05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
    "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
    "https://images.unsplash.com/photo-1594212699903-ec8a3eca50f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
    "https://images.unsplash.com/photo-1565169609627-4b848c72c614?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80"
  ];

  void _previousImage(){
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 :0;

    });
  }

  void _nextImage(){
    setState(() {
       photoIndex = photoIndex < photos.length-1 ? photoIndex + 1 : photoIndex;

    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(photos[photoIndex])
                      )
                    ),
                  ),
                  Container(
                      height: 250.0,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0.6,1],
                            colors: const [
                              Colors.transparent,
                              Colors.black,
                            ],
                          )
                      )
                  ), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios
                          ,color: Colors.white,
                          )
                      ),
                      IconButton(onPressed: () {},
                          icon: Icon(Icons.favorite
                            ,color: Colors.red,
                          )
                      )
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      height: 210.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 210.0,
                      width: MediaQuery.of(context).size.width/2,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImage,
                  ),
                  Positioned(
                      top: 220.0,
                      left: 20.0,
                      child:Row(
                        children:  [
                          const Icon(
                            Icons.star,
                            color: Colors.pinkAccent,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.pinkAccent,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.pinkAccent,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.pinkAccent,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 2.0,),
                          const Text("4.0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: "Quicksand"
                            ),
                          ),
                          const SizedBox(width: 20.0,),
                          SelectedPhoto(photos.length, photoIndex)
                        ],
                      ) ),
                ],
              ),
              SizedBox(height: 25.0,),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 30.0,right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("OPEN NOW UNTIL 7PM"
                    ,style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Quicksand",
                        fontWeight:  FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Text("The Cinnamon Snail"
                    ,style: TextStyle(
                        color: Colors.black,
                        fontSize: 27.0,
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.bold
                      ),

                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Text("17th st & Union Sq East",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w700
                        ),

                        ),
                        SizedBox(width: 10.0,),
                        Icon(Icons.location_on,color: Colors.grey.shade700,),
                        Text("400ft Away"
                        ,style: TextStyle(
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade700,
                            fontSize: 16

                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Icon(Icons.wifi_tethering,color: Colors.green.shade900,),
                       SizedBox(width: 10.0,),
                        Text("Location confirmed by 3 users today",
                        style: TextStyle(
                          color: Colors.green.shade900,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w700
                        ),
                        )
                      ],
                    ),
                    SizedBox(height: 25.0,),
                    Divider(
                      thickness: 1.0,
                      color: Colors.grey,
                      endIndent: 250.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 30.0,bottom: 30.0,left: 30.0),
                child: Text("FEATURED ITEMS",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Quicksand"
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              _buildListItem(photos[0]),
              _buildListItem(photos[1]),
              _buildListItem(photos[2]),
              _buildListItem(photos[3]),
              _buildListItem(photos[4])




            ],
          )
        ],
      ),

    );

  }
  Widget _buildListItem(String picture){
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(picture),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)


                  )
                ),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                       const Text("Maple Mustard Tempeh the powerful"
                        ,style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),
                        SizedBox(height: 5.0,),
                        Text("This recipe just takes about an hour for making veg patties, preparing with the tomatoes onions the things the recipe is juicy made the day "
                          ,style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Ubuntu",
                              fontSize: 12.0
                          ),
                        ),
                        SizedBox(height: 5.0,),
                        Text("\$11.25",style: TextStyle(
                          color: Colors.grey.shade700,
                          fontFamily: "Ubuntu",
                          fontSize: 18.0

                        ),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20.0,)
      ],

    );
  }

}

class SelectedPhoto extends StatelessWidget {

  final int numberOfDots;
  final int photoIndex;


  SelectedPhoto(this.numberOfDots, this.photoIndex);

  Widget _inactivePhoto() {
    return Container(
      child:Padding(
        padding: const EdgeInsets.only(left:  3.0,right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4.0)
          ),
        ),
      ),
    );
  }


  Widget  _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0,right: 5.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: const [
             BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.0,
                blurRadius: 2.0
              )
            ]
          ),
        ),
      ),
    );

  }

   List<Widget> _buildDots () {
    List<Widget> dots = [];
    for(int i =0 ;i<numberOfDots ; i++){
      dots.add(
        i==photoIndex ? _activePhoto() : _inactivePhoto()
      );
    }
    return dots;
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}





