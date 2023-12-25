


import 'package:whatsapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:3),(){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>home_Screen()));




    });
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/whatsapp.png",
      
        
        ),),
      ),
    );
  }
}