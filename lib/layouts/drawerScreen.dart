import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xFF674ea7),
      child: Column(

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 24 , top: 50),
                child:CircleAvatar(
                    radius: 45,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/profile.jpg'),
                      ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8,top:50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     Text(
                     "John Doi",
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child:Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                          Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 17,
                           ),

                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Text(
                               "jondoi1996@gmail.com",
                                style: TextStyle(
                                    color: Colors.white,
                                    wordSpacing: 2,
                                    letterSpacing: 1,
                                    ),

                            ),
                          ),
                        ],

                      ),

                    ),
                  ],
                ),
              ),


            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,top: 80,bottom: 150),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.dashboard,color: Colors.white,size:25,),
                    SizedBox(width: 10,),
                    Text("Dash Board",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),

                Container(height: 20,),

                Row(
                  children: <Widget>[
                    Icon(Icons.notifications,color: Colors.white,size:25),
                    SizedBox(width: 10,),
                    Text("Notifications",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
                Container(height: 20,),
                Row(
                  children: <Widget>[
                    Icon(Icons.payment,color: Colors.white,size:25,),
                    SizedBox(width: 10,),
                    Text("Payments",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
                Container(height: 20,),

                Row(
                  children: <Widget>[
                    Icon(Icons.cancel,color: Colors.white,size:25,),
                    SizedBox(width: 10,),
                    Text("Cancel Reservation ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
                Container(height: 20,),

                Row(
                  children: <Widget>[
                    Icon(Icons.receipt,color: Colors.white,size:25,),
                    SizedBox(width: 10,),
                    Text("Salon Requests",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,top:10,bottom: 20),
            child: Row(
              children: <Widget>[
                Icon(Icons.settings,color: Colors.white,size: 30,),
                SizedBox(width: 10,),
                Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:18),),
                SizedBox(width: 10,),
                Container(width: 2,height: 20,color: Colors.white,),
                SizedBox(width: 10,),
                Text("Log out",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              ],

            ),
          ),

      ],
      ),
    );
  }
}
