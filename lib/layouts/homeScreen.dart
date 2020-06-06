import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;

  bool isDrawerOpen=false;

  int _index=0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: Duration(milliseconds: 250),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isDrawerOpen? IconButton(
                    icon: Icon(Icons.arrow_back_ios,color: Color(0xFF674ea7),),
                    onPressed: (){
                      setState(() {
                        xOffset=0;
                        yOffset=0;
                        scaleFactor=1;

                        isDrawerOpen=false;
                      });
                    },
                  ):IconButton(icon: Icon(Icons.menu,color:Color(0xFF674ea7)),onPressed: (){
                    setState(() {
                      xOffset=200;
                      yOffset=150;
                      scaleFactor=0.6;

                      isDrawerOpen=true;
                    });

                  },),
                  Text(
                    "DASH BOARD",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF674ea7),),
                  ),
                  IconButton(icon: Icon(Icons.notifications,color: Color(0xFF674ea7),),onPressed: (){

                  },),
                ],

              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.search),
                  Text("Search Salon with Names"),
                  Icon(Icons.settings),
                ],
              ),
            ),

            Column(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Salons",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                        ),
                      ),

                      GestureDetector(
                        onTap: () => print('See All'),
                        child: Text(
                            "See All",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                  Container(height: 10,),
                  Container(
                    height: 230,
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Salons("assets/images/salon1.jpg","Beauty Salon","View Profile"),
                        Salons("assets/images/salon2.jpg","Razors","View Profile"),
                        Salons("assets/images/salon3.jpg","Crazy","View Profile"),
                        Salons("assets/images/salon4.jpg","BedHead Salon","View Profile"),
                        Salons("assets/images/salon1.jpg","Beauty Salon","View Profile"),
                        Salons("assets/images/salon2.jpg","Razors","View Profile"),
                        Salons("assets/images/salon3.jpg","Crazy","View Profile"),
                        Salons("assets/images/salon4.jpg","BedHead Salon","View Profile"),
                      ],
                    ),

                  ),
              ],

            ),

            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(40),
              ),
              elevation: 20.0,
              child: Column(

                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(

                    title: Text(
                        "Salon Registration Request",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.calendar_today),
                    //subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Sarlon"),
                    subtitle: Text("05/05 ,10.00"),
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile1.jpg'),

                    ),

                  ),
                  ListTile(
                    title: Text("Lorem Ipsum"),
                    subtitle: Text("04/28 ,11.00"),
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile2.jpg'),
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text(
                            'CHECK',
                          style: TextStyle(color:Color(0xFF674ea7)),
                        ),
                        onPressed: () { /* ... */ },
                      ),
                      Icon(Icons.arrow_forward,color: Colors.purple[100],
                      )
                    ],
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Image.asset(
                      'assets/images/graph.jpg',
                      fit: BoxFit.cover,
                    ),

                  ),
                ],
              ),

            ),
            Container(
              padding: EdgeInsets.all(10),
              child : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Card(
                      shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(30),
                  ),

                  color:Color(0xFF674ea7) ,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text("USERS",style: TextStyle(color: Colors.white,),),
                          leading: Icon(Icons.supervised_user_circle,color: Colors.white,),
                        ),
                        Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                  Text("Salons",style: TextStyle(color: Colors.white),),
                                  Text("100",style:TextStyle(fontSize: 30,color: Colors.white),),
                                  SizedBox(height: 15),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Customers",style: TextStyle(color: Colors.white),),
                                Text("1000",style:TextStyle(fontSize:30,color: Colors.white),),
                                SizedBox(height: 15),
                              ],
                            ),

                          ],
                        ),
                  ],
                ),
              ),
            ],
            ),
            ),


        ],
        ),
      ),
    );
  }

  Container Salons(String imgVal, String heading ,String subheading ){
    return Container(
      width: 180,
      color:Color(0xFF674ea7),
      margin: EdgeInsets.only(left:15,top:5,bottom: 5,right: 5,),
      child: Card(
        child: Wrap(
          children: <Widget>[
            Container(
              width: 180,
              height: 150,
              child: Image.asset(
                imgVal,
                fit: BoxFit.fill,
              ),
            ),
            ListTile(
              title:Text(
                heading,
                style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF674ea7)),
              ),
              subtitle: Text(subheading,),
            ),
          ],
        ),
      ),
    );

  }
}





