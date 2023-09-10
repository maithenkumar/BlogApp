import 'package:flutter/material.dart';

import 'home_page.dart';
import 'screens/BlogWritingPage.dart';
import 'screens/HomeScreen.dart';
import 'screens/blogDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'My App',
      home: BlogWrtingDetails(),
    );
  }
}