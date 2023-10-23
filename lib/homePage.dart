import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:convexbottombar_widget/Five.dart';
import 'package:convexbottombar_widget/Four.dart';
import 'package:convexbottombar_widget/One.dart';
import 'package:convexbottombar_widget/Three.dart';
import 'package:convexbottombar_widget/Two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int _currentindex = 0;

 Widget _pages(int index){
  if(index == 0){
    return One();
  }
  else if(index ==1){
    return Two();
  }
  else if(index ==2) {
    return Three();
  }
  else if(index ==3){
    return Four();
  }
  else {
    return Five();
  }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convex BottomBar"),
        centerTitle: true,
      ),
      body: _pages(_currentindex),
      bottomNavigationBar: ConvexAppBar(
        activeColor: Colors.pink,
        color: Colors.black,
        //curveSize: 100,
       // curve: Curves.easeInOut,
       //shadowColor: Colors.white,
        items: [
          TabItem(icon: Icon(Icons.home,color: Colors.black,),title: "Home"),
          TabItem(icon: Icon(Icons.people),title: "Profile"),
          TabItem(icon: Icon(Icons.add),title: "Add"),
          TabItem(icon: Icon(Icons.chat),title: "Chat"),
          TabItem(icon: Icon(Icons.edit),title: "Edit"),
        ],
        onTap: (int index){
          setState(() {
            _currentindex = index;
          });
        },
        ),
    );
  }
}