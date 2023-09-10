import 'package:flutter/material.dart';

class blglst extends StatelessWidget {
  const blglst({super.key, required this.blogimg, required this.dlticn, required this.ttltxt, required this.subtxt, });

  final Widget blogimg;
  final Widget dlticn;
  final String ttltxt;
  final String subtxt;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
       child: ListTile(
        leading: blogimg,
        trailing:dlticn,
        title: Text(ttltxt),
        subtitle: Text(subtxt),
      )
    );
  }
}