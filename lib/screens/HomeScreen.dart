import 'package:flutter/material.dart';

import '../constants/constants.dart';

class HomaPageScreen extends StatefulWidget {
  const HomaPageScreen({super.key});

  @override
  State<HomaPageScreen> createState() => _HomaPageScreenState();
}

class _HomaPageScreenState extends State<HomaPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Column(
      
      children: [
        Text("Explore",style: TextStyle(
          fontSize: 30,
          color: Constants.whiteColor
        ),)
      ],
    ),
    );

  }
}