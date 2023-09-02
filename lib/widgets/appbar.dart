import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

AppBar HomeAppbar(
    {required Widget front, required Widget last, required Color bgColor,String title=""}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: bgColor,
    title: Text(title),

    // automaticallyImplyLeading: false,
    flexibleSpace: Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Row(
          children: [front, Spacer(), last],
        ),
      ),
    ),
  );
}
