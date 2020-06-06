import 'package:flutter/material.dart';

import 'layouts/drawerScreen.dart';
import 'layouts/homeScreen.dart';

void main() {
  runApp(MaterialApp(home: HomePage(),));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
