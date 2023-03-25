import 'package:design_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrippleTravelProfilePage extends StatefulWidget {
  const DrippleTravelProfilePage({Key? key}) : super(key: key);

  @override
  _DrippleTravelProfilePageState createState() => _DrippleTravelProfilePageState();
}

class _DrippleTravelProfilePageState extends State<DrippleTravelProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.more_vert,color: Colors.grey,),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: PROFILEPICURL,
                child: Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(62.5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(PROFILEPICURL)
                    )
                  ),
                ) ,
              ),
              SizedBox(height: 20.0,),
              Text("Mark Stewart"
              ,style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 4.0,),
              Text("San Jose CA"
              ,style: TextStyle(
                  fontFamily: "Quicksand",
                  color: Colors.grey
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCountOfEntites("24k", "FOLLOWERS"),
                    _buildCountOfEntites("31", "TRIPS"),
                    _buildCountOfEntites("21", "BUCKET LIST"),



                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0,top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.grid_view,color: Colors.grey.shade300,size: 25,),
                    SizedBox(width:20.0),
                    FaIcon(FontAwesomeIcons.bars,color: Colors.grey.shade400,size: 25,),

                  ],
                ),
              ),
              _buildPhoto("https://images.unsplash.com/photo-1519046904884-53103b34b206?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60"),
              imgGalleryDetails(context,"Maldives - 12 Days","Terserao Soto- 52 Photos-3 Videos"),
              _buildPhoto("https://images.unsplash.com/photo-1506477331477-33d5d8b3dc85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJlYWNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"),
              imgGalleryDetails(context,"Maldives - 12 Days","Terserao Soto- 52 Photos-3 Videos"),
              SizedBox(height: 30.0,)





            ],
          )
        ],
      ),
    );

  }

  Widget _buildCountOfEntites(String count,String description){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(count
          ,style: TextStyle(
              fontFamily:"Quicksand",
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 18
          ),
        ),
        Text(description
          ,style: TextStyle(
              fontFamily:"Nunito",
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
            fontSize: 12
          ),
        ),

      ],
    );
  }

  Widget _buildPhoto(String src){
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: NetworkImage(src),
          fit: BoxFit.fill
        )
      ),
    );
  }



}
