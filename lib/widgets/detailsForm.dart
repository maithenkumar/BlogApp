import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

class BlogDetailsForm extends StatelessWidget {
  const  BlogDetailsForm({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: TextField(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          
          fontSize: 18
        ),
decoration:  InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Constants.blackColor,
      width: 2,
      style: BorderStyle.solid,
      strokeAlign: 1


    )
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Constants.blackColor,
      width: 2,
      style: BorderStyle.solid,
      strokeAlign: 1


    )
  ),
  
  hintText: 'Enter Heading of blog'
  ,
),
        controller: controller,
        
      ),
    );
  }
}