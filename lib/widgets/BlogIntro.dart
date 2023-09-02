import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';

class BlogIntro extends StatelessWidget {
  const BlogIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        "MAITHEEN",
                        style: TextStyle(
                          fontSize: 20,
                          color: Constants.whiteColor,
                        ),
                      ),
                      Text(
                        "why sex is so important",
                        style: TextStyle(color: Constants.lightBlack),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  "Date :23:43 pm",
                  style: TextStyle(
                    fontSize: 15,
                    color: Constants.whiteColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25,)
,
          Text(
            "why is ye important in main memory",
            style: TextStyle(
              color: Constants.whiteColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
                    const SizedBox(height: 20,)
,
          Text(
            "why is ye important in main memory?",
            style: TextStyle(
              color: Constants.lightBlack,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
                    const SizedBox(height: 25,)
,
          Text(
            "Asa founder of world is the ",
            style: TextStyle(
              color: Constants.whiteColor.withOpacity(0.7),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
                    const SizedBox(height: 15,)
,
          Row(
            children: [
              Text(
                "Read Time : 5min",
                style: TextStyle(
                  color: Constants.greenColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.bookmark_add_outlined,
                color: Constants.lightBlack,
              )
            ],
          ),
          const SizedBox(height: 10,),
          const Divider(
            color: Colors.white10,
            height: 3,
            endIndent: 10,
            indent: 10,
            thickness: 1,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
