// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
   ProfilePic({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;
   Color color=Colors.black;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
backgroundColor: color,
      backgroundImage: AssetImage(img),
      minRadius: 30,
    );
  }
}
