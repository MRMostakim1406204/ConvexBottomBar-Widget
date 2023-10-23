import 'package:flutter/material.dart';

class Five extends StatelessWidget {
  const Five({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         alignment: Alignment.center,
        height: 200,
        width: 200,
        color: Colors.yellowAccent,
        child: Text("MR Mostakim",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
        ),),
      ),
    );
  }
}
