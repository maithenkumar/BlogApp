import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/form.dart';
// import 'package:flutter_application_1/screens/login_page.dart';
// import 'package:flutter_application_1/widgets/text_form.dart';
// import 'package:flutter_application_1/screens/form.dart';
 import 'package:flutter_application_1/screens/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Blog Application',
      home:ProfilePage(),
    );
  }
}