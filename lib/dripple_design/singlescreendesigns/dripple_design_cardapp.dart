import 'package:design_app/dripple_design/profile/dripple_loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrippleDesignChatPage extends StatefulWidget {
  const DrippleDesignChatPage({Key? key}) : super(key: key);

  @override
  _DrippleDesignChatPageState createState() => _DrippleDesignChatPageState();
}

class _DrippleDesignChatPageState extends State<DrippleDesignChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const FlutterLogo(
          size: 25.0,
          textColor: Colors.green,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: const Alignment(0.0, -0.40),
                height: 100.0,
                color: Colors.white,
                child: const Text(
                  "Get coaching",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontSize: 20.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(blurRadius: 2.0, color: Colors.white),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: const Text(
                            "YOU HAVE",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: const Text(
                            "206",
                            style: TextStyle(
                                letterSpacing: 1.5,
                                color: Colors.black,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w500,
                                fontSize: 35.0),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(105.0, 53.0, 5.0, 25.0),
                          child: const Text(
                            "💕",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 70.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              Dripple_LoginPage()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 35.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFDCE9DA).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            "Buy more",
                            style: TextStyle(
                                fontFamily: "Nounito",
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text(
                  "MY COACHES",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                      color: Colors.green.shade700,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0,),
          GridView.count(crossAxisCount: 2
            ,primary: false
          ,crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
              children: [
                _buildCard("Tom", "Available", 1),
                _buildCard("Tom", "Away", 2),
                _buildCard("Tom", "Away", 3),
                _buildCard("Tom", "Available", 4),
                _buildCard("Tom", "Available", 5),
                _buildCard("Tom", "Away", 6),

              ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name,String status,int cardIndex){
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(height: 12.0,),
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white24,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80",

                    )
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 45.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber :Colors.green,
                  border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                    width: 3.0

                  )
                ),
              )


            ],
          ),

              SizedBox(height: 8.0,),
              Text(name,style: TextStyle(
                fontFamily: "Quicksand",
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black
              ),
              ),
              SizedBox(height: 5.0,),
              Text(
                status,style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.grey
              ),
              ),
              SizedBox(height: 15.0,),
              Expanded(child: Container(
                width: 175.0,
                decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)
                  )
                ),
                child: Center(
                  child: Text("Request",
                  style: TextStyle(
                    color: Colors.white,fontFamily: 'Quicksand'
                  ),
                  ),
                ),
              )
              )

        ],
      ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0) :
      EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)

    );
  }



}
