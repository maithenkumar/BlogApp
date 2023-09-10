// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/BlogIntro.dart';
import '../widgets/appbar.dart';
import '../widgets/tagButton.dart';

class HomaPageScreen extends StatefulWidget {
  const HomaPageScreen({super.key});

  @override
  State<HomaPageScreen> createState() => _HomaPageScreenState();
}

class _HomaPageScreenState extends State<HomaPageScreen> {
  bool onPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(
          bgColor: Constants.blackColor,
          front: CircleAvatar(),
          last: Icon(
            Icons.notifications_active_outlined,
            color: Constants.lightBlack,
          )),
      backgroundColor: Constants.blackColor,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Explore",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Constants.whiteColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TagButton(
                    onTab: () {},
                    butColor: Constants.yellowColor,
                    text: "UI Design",
                    textColor:
                        onPressed ? Constants.blackColor : Constants.whiteColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => const BlogIntro(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
