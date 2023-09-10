import 'package:flutter/material.dart';
<<<<<<< HEAD
// import 'package:flutter_application_1/screens/form.dart';
// import 'package:flutter_application_1/screens/login_page.dart';
// import 'package:flutter_application_1/widgets/text_form.dart';
// import 'package:flutter_application_1/screens/form.dart';
 import 'package:flutter_application_1/screens/profile_page.dart';
=======

import 'home_page.dart';
import 'screens/HomeScreen.dart';
import 'screens/blogDetails.dart';
>>>>>>> 85837a54c7dde409e9bd7f79015fcbbe05bdc450

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner:false,
      title:'Blog Application',
      home:ProfilePage(),
=======
      debugShowCheckedModeBanner: false,
      title:'My App',
      home: BologDetails(),
>>>>>>> 85837a54c7dde409e9bd7f79015fcbbe05bdc450
    );
  }
}