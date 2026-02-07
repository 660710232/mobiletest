import 'package:flutter/material.dart';
import 'package:mobiletest/component/profile_card.dart';
import 'package:mobiletest/component/text_card.dart';

class GreetingScreen extends StatelessWidget {
  final String name;
  final Color bgColor;
  const GreetingScreen({super.key, required this.name, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextCard(text: "Good Afternoon",color: Colors.red,),
          SizedBox(height: 10),
          ProfileCard(name: name, image: Image.asset('assets/profile_ten.jpg', width: 200, height: 200),)
        ],)
      ),
    );
  }
}