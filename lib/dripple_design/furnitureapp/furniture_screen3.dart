import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class FurnitureScreen3 extends StatefulWidget {
  const FurnitureScreen3({Key? key}) : super(key: key);

  @override
  _FurnitureScreen3State createState() => _FurnitureScreen3State();
}

class _FurnitureScreen3State extends State<FurnitureScreen3> {
  int activeIndex =0;
  List <String> images = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.grey.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                      ,children: [
                        IconButton(onPressed: (){},
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30.0,
                            ),
                        ),
                        smallheartIcon()
                      ],
                    ),
                    CarouselSlider.builder(
                        itemCount: images.length,
                        itemBuilder: (context,index,realIndex){
                          final urlImage = images[index];
                          return buildImage(urlImage,index);
                        },
                        options: CarouselOptions(
                            height: 200,
                            viewportFraction: 1,
                          onPageChanged: (index,reason) {
                              setState(() {
                                activeIndex = index;
                              });

                          }

                        )),
                    SizedBox(height: 10.0,),
                    buildIndicator(),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Article Number : 2323X",
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 12.0,
                      fontFamily: "Opensans",
                    ),
                    ),
                    SizedBox(height: 10.0,),
                    Text("Finn Navian-Sofa",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontFamily: "Opensans",
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                    children: [
                      Expanded(
                        child: Text("Scandinavian small size double sofa\nimported full leather/Dale italia oil wax leather black",style: TextStyle(
                          color: Colors.grey
                        ),),
                      ),
                      SizedBox(width: 30.0,),
                      pricetag()
                    ],
                    ),
                    SizedBox(height: 20.0,),
                    Text("COLOUR"
                    ,style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    ColorContainers(),
                    SizedBox(height: 20.0,),
                    Text("MATERIAL"
                      ,style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    buildInformation(),
                    SizedBox(height: 20.0,)
                  ],
                ),
              )

            ],
          )
        ],
      ),
      bottomNavigationBar: mybottomNav(),

    );
  }

  Widget mybottomNav(){
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Icon(Icons.shopping_cart,color: Colors.grey.shade400,size: 40.0,),
          ),
          Icon(FontAwesomeIcons.shareSquare,color: Colors.grey.shade400,size: 40.0,),
          Container(
            height: 70,
            width: 200.0,
            color: Colors.yellow.shade600,
            child: Center(
              child: Text(
                "Add to cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: "Opensans",
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget buildInformation(){
    return Row(
      children: [
        Icon(FontAwesomeIcons.paintRoller,color: Colors.grey,size: 30.0,),
        SizedBox(width: 10.0,),
        Text("x30%",style: TextStyle(
          color: Colors.black,
          fontFamily: "Quicksand",
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 30.0,),
        Icon(FontAwesomeIcons.rulerHorizontal,color: Colors.grey,size: 30.0,),
        SizedBox(width: 10.0,),
        Text("x60%",style: TextStyle(
            color: Colors.black,
            fontFamily: "Quicksand",
            fontSize: 18.0,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(width: 30.0,),
        Icon(FontAwesomeIcons.ruler,color: Colors.grey,size: 30.0,),
        SizedBox(width: 10.0,),
        Text("x10%",style: TextStyle(
            color: Colors.black,
            fontFamily: "Quicksand",
            fontSize: 18.0,
            fontWeight: FontWeight.bold
        ),),



      ],
    );
  }


  Widget ColorContainers(){
    return Row(
      children: [
      Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade900,
        ),
      ),
        SizedBox(width: 30.0,),
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 30.0,),
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
        ),

      ],
    );
  }






  Widget pricetag (){
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            left: 40.0,
            top: 7.0,
            child: Container(
              height: 50.0,
              width: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow.shade200.withOpacity(0.5)
              ),
            ),
          ),
          Text("\$ 248"
            ,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Opensans",
                fontSize: 25.0
            ),
          ),
        ],
      ),
    );
  }



  Widget smallheartIcon(){
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2.0,
            )
          ]
        ),
        child: Center(
          child: IconButton(
            onPressed: (){},
            icon: Icon(FontAwesomeIcons.solidHeart,color: Colors.red,size: 15.0,),
          ),
        ),
      ),
    );
  }
  Widget buildImage(String urlImage , int index){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage(urlImage),
             fit: BoxFit.contain
         )
       ),
    );
  }
  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: SlideEffect(
          spacing: 25.0,
        dotWidth: 15,
       dotHeight:  15,
      activeDotColor: Colors.amber,
          dotColor: Colors.grey.shade300

    ),
    );

  }

}
